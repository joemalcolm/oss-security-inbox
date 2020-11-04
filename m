X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["49052" "Wednesday" "4" "November" "2020" "10:17:05" "+0100" "Matthias Gerstner" "mgerstner@suse.de" "<20201104091705.GA10006@f195.suse.de>" "967" "[oss-security] Security Issues in the spice-vdagentd daemon" nil nil nil "11" "2020110409:17:05" "[oss-security] Security Issues in the spice-vdagentd daemon" (number mark "U       mgerstner@su Nov  4  967/49052 " thread-indent "\"[oss-security] Security Issues in the spice-vdagentd daemon\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Security Issues in the spice-vdagentd daemon" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1977 invoked by uid 550); 4 Nov 2020 09:17:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1939 invoked from network); 4 Nov 2020 09:17:18 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Wed, 4 Nov 2020 10:17:05 +0100
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <20201104091705.GA10006@f195.suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="BwCQnh7xodEAoBMC"
Content-Disposition: inline
Subject: [oss-security] Security Issues in the spice-vdagentd daemon

--BwCQnh7xodEAoBMC
Content-Type: multipart/mixed; boundary="LQksG6bCIzRHxTLp"
Content-Disposition: inline


--LQksG6bCIzRHxTLp
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello list,

please find below a security report regarding the spice-vdagentd [1].

Attached to this mail is a tarball containing the final set of patches
that upstream developed to address the issues. These patches are by now
already published in the upstream git repository. Furthermore attached
is a tarball containing scripts and source code to reproduce some of the
issues discussed in the report below. CVEs have been assigned by
upstream for the individual issues, please find them in the respective
sections of the report.

[1]: https://gitlab.freedesktop.org/spice/linux/vd_agent

# 1) Introduction

The SUSE security team got a request to review the `spice-vdagentd` daemon.
It has been brought to our attention that this daemon can start
indirectly via udev (`70-spice-vdagentd.rules`) even if the service was
not explicitly activated by the Administrator. Thus it might introduce
additional security attack surface in default SUSE installations.

The `spice-vdagentd` is typically used in Qemu virtual machines to provide
additional features like:

- a shared clipboard between host and guest system to allow seamless
  copy/paste
- file transfers from the host to the guest machine
- sharing information about the virtual display size and monitor
  configuration
- synchronizing audio device volume between host and guest

`spice-vdagentd` is running as *root* as a socket activated systemd
service.

The following security report is based on the spice-vdagent version
0.20.0, which was the latest upstream release available at the time of
its writing.

# 2) The `vdagentd` Communication Channels

This section gives a short introduction about the communication channels
used by `vdagentd` for readers that are not familiar with its design.

## a) The com.redhat.spice.0 Virtio Serial Device

In Qemu virtual machine instances, that have the spice protocol enabled,
a virtual serial device will be emulated, typically enabled by passing
switches like these to qemu:

```
-spice disable-ticketing,unix,addr=3D/path/to/spice_socket, -device virtio-=
serial-pci -device virtserialport,chardev=3Dspicechannel0,name=3Dcom.redhat=
.spice.0 -chardev spicevmc,id=3Dspicechannel0,name=3Dvdagent
```

Within the virtual machine `spice-vdagentd` talks to this serial device
(`/dev/virtio-ports/com.redhat.spice.0`) to exchange information with
the host machine and implement the spice features. The SPICE protocol is
used on this communication channel.

This serial device is of lesser importance in the context of this
security report.

## b) The spice-vdagent UNIX Domain Socket

The `spice-vdagentd` creates a listening UNIX domain socket of type
`SOCK_STREAM` in `/run/spice-vdagentd/spice-vdagent-sock`. This socket
path is accessible to all users in the system (file mode 0666). It is
used by the counterpart of `spice-vdagentd`, the `spice-vdagent`, which
runs in the context of a graphical user session with user privileges.
This role will also be called the "user agent" for the rest of this
document.

The `spice-vdagent` e.g. informs the `spice-vdagentd` about changes in
clipboard contents in the graphical VM session, which in turn forwards
this information via the serial device to the host machine. Similarly
requests from the host machine to e.g. initiate a file transfer will be
forwarded from `spice-vdagentd` to the `spice-vdagent`, which will then
store the file data in the context of the user session.

Multiple user agents can connect to `spice-vdagentd` at the same time.
At most one user agent may be present in the currently active session,
however. Only a user agent running in the currently active session can
access most of the features of `spice-vdagentd`. `spice-vdagentd`
determines the session a user agent is part of by querying systemd
facilities (e.g.  `sd_seat_get_active()`, `sd_pid_get_session()`). The
user agent (if any) associated with the currently active session will
also be the target of any forwarded requests received from the host on
the virtual serial device.

# 3) Security Issues

This report is accompanied by two Python scripts (`vdagent.py`,
`create_vdagent_conns.py`) and a C++ source file
(`socket_pid_attack.cxx`) which can be used to reproduce the findings
that follow. These reproducers will be mentioned in the individual
sections. All reproducers need to be executed in the context of a host
system running a SPICE enabled Qemu virtual machine (see section 2.a for
the required Qemu switches, or use something like livbirtd and its Qemu
backend with appropriate settings).

## a) CVE-2020-25650: Memory DoS via Arbitrary Entries in `active_xfers` Ha=
sh Table

The `spice-vdagentd` maintains a hash map named `active_xfers` that maps
`task_ids` to UNIX domain socket connections they belong to. These
`task_ids` refer to ongoing file transfers from the host to the virtual
machine.

An arbitrary client connected to `spice-vdagentd` via a UNIX domain
socket can trigger an entry into this hash map, without the requirement
that the client is associated with the currently active graphical
session (function `do_agent_file_xfer_status`, specifically
`vdagentd.c:1025`). There is no limit on the maximum amount of file
transfers ongoing in parallel and there are no timeouts applied for a
file transfer to be finished.

Therefore any unprivileged local user with access to the
`/run/spice-vdagentd/spice-vdagent-sock` socket path can perform a
memory denial-of-service by entering a large amount of entries into this
hash map.

### Impact

- an unprivileged local attacker inside a virtual machine can cause
  large memory allocation in a daemon running as *root*. These memory
  allocations will persist as long as the UNIX domain socket connection
  remains intact. After a longer while, depending on the available
  system memory and swap space, the system might enter an out of memory
  situation, causing a denial-of-service for `spice-vdagentd` or even
  other processes in the system (the Linux kernel OOM killer is known to
  punish innocent victims at times).
- after a large amount of entries have been made by an attacker this way
  and once the UNIX domain socket connection is terminated, the
  `spice-vdagentd` will remove all the hash map entries belonging to
  this connection (function `agent_disconnect`, specifically
  `vdagentd.c:955`). Each "cancelled" file transfer will be logged in
  the system (`vdagentd.c:910`, `vdagentd.c:342`).  In my tests this
  also caused a high load in `systemd-journald` and high disk space
  consumption from the logs stored in `/var/log`.

### Fixes

- Patch 02 changes the handling of entries into the hash map. User
  agents will no longer be able to trigger arbitrary entries into it.
- Patch 03 limits the maximum number of transfers allowed to be active
  at the same time.

### Reproducer

Using the supplied Python program the DoS can be performed this way:

```
user $ ./vdagent.py --xfer-status-DoS
```

The program will infinitely create new entries in the `active_xfers`
hash map up until the maximum 64-bit (for `x86_64` architectures)
integer value. Memory consumption will grow rather slowly but reliably.
An exponential growth allocation scheme seems to be in place, because
the observed memory consumption (as seen in `top`) only happens in
jumps.

## b) CVE-2020-25651: Possible File Transfer DoS and Information Leak via `=
active_xfers` Hash Map

The same basic problem as described in section 3.a can lead to a file
transfer information leak. The file transfer protocol roughly works like
this:

- The host will send a `VD_AGENT_FILE_XFER_START` message that is
  forwarded to the user agent (function `do_client_file_xfer()`,
  specifically `vdagentd.c:376`). This message contains a `task_id` that
  identifies the file transfer process in future messages.
- The `spice-vdagent` will check free disk space and allocate a file of
  the expected size in the file system. If all checks pass then it will
  reply with a `VDAGENTD_FILE_XFER_STATUS_CAN_SEND_DATA` message, which
  causes `spice-vdagentd` to associate the client connection with the
  ongoing file transfer.
- The host will now start sending out chunks of the file data with
  `VDAGENTD_FILE_XFER_DATA` messages (processed in function
  `do_client_file_xfer()`, specifically `vdagentd.c:386`).
  `spice-vdagentd` will forward each chunk to the client connection
  stored in the `active_xfers` hash map.

The host application (tested with `remote-viewer` from the virt-viewer
package [2]) chooses an incrementally growing `task_id` for file
exchanges which starts counting at 1. Thus the `task_id` is predictable.
Since any unauthenticated local client can replace the mapping of
`task_id` to client connection by its own client connection, there is a
possibility for an attacker to obtain parts of the transferred file
data.

The attacker needs to win a race condition here, because it needs to hit
the time window after the legitimate client sends out the
`VDAGENTD_FILE_XFER_STATUS_CAN_SEND_DATA` message and before the host
starts sending out file chunks via `VDAGENTD_FILE_XFER_DATA`. If the
attacker sends his own `VDAGENTD_FILE_XFER_STATUS_CAN_SEND_DATA` using
the correct `task_id` during this time window, then he can obtain the
complete file. At least for large file exchanges bigger parts of the
file are feasible to be obtained, even when the initial parts of the
file are transferred to the legitimate client.

The more difficult part for an attacker will be to identify when such a
file transfer will take place. The reproducer shows the basic attack
technique.

[2]: https://gitlab.com/virt-viewer/virt-viewer

### Impact

File data from the host system can end up in full or in parts in the
client connection of an illegitimate local user in the VM system.
Exploitability will be difficult if there is not a suitable side channel
with information about file transfers going on.

In any case active file transfers from other users can also be
interrupted (DoS aspect).

### Fixes

Additionally to the fixes in section 3.a:

- Patch 08 cleans all entries from the hash map when the active user
  agent disconnects.
- Patch 09 prevents existing entries in the hash map to be replaced.

### Reproducer

This reproducer has the precondition that the victim's home directory is
world-readable (or at least readable by the attacker). The script will
wait (using the *inotify* API) for a new file to be created in the home
directory (assuming that this is the initiation of a file transfer).

For reproducing perform the following steps:

1. Open a fresh `remote-viewer` connection for the test VM. This will
   reset the `task_id` used for file transfers to start to 1.
2. Run the reproducer script in an attacker context as follows:

    # replace this path by the actual victim's home directory
    attacker$ VICTIM=3D/home/victim
    attacker$ ./vdagent.py --send-xfer-status 1 --wait-for-file-create $VIC=
TIM

3. Log in as the *victim* user in a graphical session in the VM using
   the `remote-viewer` connection started in step 1.
4. Drag-and-drop a larger file (I tested using an 8 megabyte text file)
   into the `remote-viewer` window to initiate file transfer.

You should see that the attacker's `vdagent.py` script outputs large
parts of the file transfer to the terminal. The original file transfer
will indicate an error condition without specific details about the
problem.

Remember that for each subseqeuent attack attempt you will need to
increment the `task_id` (`--send-xfer-status` parameter) or open a fresh
`remote-viewer` window for the VM, to reset the `task_id` used on the
host side.

## c) CVE-2020-25652: Possibility to Exhaust File Descriptors in `vdagentd`

`spice-vdagentd` does not apply a limit to the amount of client
connections that can be established via the UNIX domain socket in
`/run/spice-vdagentd/spice-vdagent-sock`. Also existing connections
aren't subject to a timeout or any kind of preconditions for them to
stay alive. Thus it is easy to exhaust the file descriptor limit for
the `spice-vdagentd` process (typically 1024 file descriptors by
default, this limit is also imposed by system calls like `select()`).

Any local user in the virtual machine can open around ~1020 connections
to `spice-vdagentd` and simply keep them open without transmitting any
data. The `spice-vdagentd` will then become unable to open further
connections for legitimate clients or perform other tasks (like opening
the serial device, see section 2.a, or invoking systemd library calls
that require opening files).

### Impact

By exhausting file descriptors in `spice-vdagentd` the following effects
can be achieved:

- The attack can prevent legitimate `spice-vdagent` instances from
  connecting to the `spice-vdagentd`. SPICE features won't be available
  to affected sessions.
- The attack can cause `vdagentd` to exit on error conditions if tuned
  carefully. For example, an attacker can exhaust all file descriptors
  in `spice-vdagentd` except for one and then wait for a legitimate
  client from an active session to connect. This connection attempt will
  succeed, but the subsequent attempt to open the serial device (see
  section 2.a) will fail, and `spice-vdagentd` will exit. This will then
  also cause the involved `spice-vdagent` to exit, because the
  connection to the system daemon is lost.
- `spice-vdagentd` will enter a 100 % CPU load infinite loop, because it
  tries to `accept()` the new connection, which is impossible, but also
  doesn't close the listening socket or abort execution.
- This attack vector makes security issue 3.d better exploitable, which
  will be explained there in more detail.

### Fixes

- Patch 04 implements an upper limit of client connections accepted by
  the `spice-vdagentd`.
- Patch 07 implements a limit for client connections established from
  the same session.

### Reproducer

Using the supplied script `create_vdagent_conns.py` the maximum number
of connections that `spice-vdagentd` can process, can be established.
The result will be that no new user agents can register with the system
daemon. A 100 % CPU loop will occur in `spice-vdagentd`.

## d) CVE-2020-25653: UNIX Doman Socket Peer PID Retrieved via `SO_PEERCRED=
` is Subject to Race Condition

One major security property of `spice-vdagentd` is that it only allows
those clients access to most of the SPICE features (like clipboard, file
transfer) that are currently in an active session according to systemd
(see also section 2.b). It is possible for arbitrary local users (like
*nobody*) to connect to `spice-vdagentd` but these connections should
not be able to interact with the host machine, because they don't belong
to the active session.

The session check is performed after a new UNIX domain socket connection
is established in `agent_connect()` in `vdagentd.c:937`. The check
basically relies on these two source code lines:

```
pid =3D vdagent_connection_get_peer_pid(VDAGENT_CONNECTION(conn), &err);
agent_data->session =3D session_info_session_for_pid(session_info, pid);
```

The peer's PID is obtained via glib's `g_socket_get_credentials` which
boils down to the `SO_PEERCRED` socket option that is supported for UNIX
domain sockets (see `man 7 socket`, `man 7 unix`, `struct ucred`). The
man page says about this:

> The returned credentials are those that were in effect at the time of the=
 call
> to connect(2) or socketpair(2).

This means that there is a race condition between the point in time when
a client performs the `connect()` call to establish a connection with
`spice-vdagentd` and the time `spice-vdagentd` retrieves and checks the
PID in its `agent_connect()` function. The PID in question can already
have been replaced by an unrelated process. Therefore the session that
`spice-vdagentd` associates with this PID might be a different one than
the actual peer process belonged to, when the `connect()` system call
was performed.

An attack to exploit the race condition requires the following steps:

1. an attacker can inherit a UNIX domain socket file descriptor to a
   child process that performs the `connect()` to `spice-vdagentd` and
   exits immediately again, thereby freeing the PID (let's call it the
   malicious PID) in the system as soon as the parent process performs a
   `wait()` on the exited child process. This malicious PID will now be
   associated in the kernel with the `SO_PEERCRED` data returned for the
   connected UNIX domain socket.
2. now the attacker needs to perform a PID cycle in the system (i.e.
   create many useless child processes to cause the maximum PID
   - typically 32768 - to be reached in the system and new processes get
   assigned small PIDs again). When the PIDs assigned by the kernel are
   getting close to the malicious PID, the attacker needs to stop
   creating child processes and wait for unrelated processes from other
   users to come into existence.
3. Once the malicious PID gets reassigned to an unrelated process and
   the `agent_connect()` function runs in `spice-vdagentd`, it will
   retrieve wrong session information for the existing connection. If
   the malicious PID gets reassigned to a process running in the active
   session, then the connection that the attacker uses will get access
   to the SPICE features and can communicate with the host, although the
   attacker would otherwise not have sufficient privileges to do so.

The described race condition is very hard to hit under normal
circumstances, because step 2., the PID cycle, is taking a long time and
the `agent_connect()` function in `spice-vdagentd` is very likely to run
before an unrelated process gets reassigned the malicious PID in
question. When combined with the file descriptor exhaustion security
issue described in section 3.c, however, then this attack will become
way more feasible.

This combined attack works like follows:

- Exhaust all file descriptors in `spice-vdagentd` as described in
  section 3.c.
- Perform the attack steps 1. and 2. as described previously. What
  happens now is that the attacker's UNIX domain socket `connect()` will
  succeed, because on kernel level this is still possible.
  `spice-vdagentd` won't be able to `accept()` this connection, though,
  because no more file descriptors are available to do so. The
  connection remains pending on the listening socket, however.
- Now for step 3., once the attacker notices that the malicious PID got
  assigned to an unrelated process, he can stop the file descriptor
  exhaustion put into place previously, thus making it possible for
  `spice-vdagentd` to `accept()` the malicious connection pending in the
  kernel. Only now will the `agent_connect()` function run, and it will
  more reliably determine the wrong session for the connection.

### Impact

1. A compromised local account with little privileges inside the virtual
   machine like *nobody* can try to become the "active agent" for
   `spice-vdagentd` for the graphical session of a legitimate local
   user. If successful then the attacker can access the host's
   clipboard contents or send malicious clipboard content to the host.
   The attacker can also retrieve file data from the host (compare
   section 2.b) or send invalid screen resolution and display
   information to the host.
2. The combined attack using the file descriptor exhaustion and the
   `SO_PEERCRED` race condition is still not 100 % reliable but it can be
   repeated many times to increase chances of success. The only
   unpredictable ingredient is victim child processes appearing that get
   assigned the desired malicious PID and stay around for long enough for
   `spice-vdagentd` to pick up the wrong session information.
3. If the victim's graphical session already runs a legitimate
   `spice-vdagent` then a successful attack will trigger an information
   leak protection logic in `vdagentd.c:874`. This has the effect of a
   denial-of-service, because neither the attacker nor the legitimate user
   will be able to use the SPICE features anymore.
4. If the victim's graphical session is not running a `spice-vdagent`
   then the attacker can achieve all the effects described in 1.
5. If 3. applies (the victim's is already running `spice-vdagent`) then
   the attacker could try to crash the currently running `spice-vdagentd`
   (see section 3.c for a possible attack vector). systemd should then
   restart the `spice-vdagentd` while the victim's `spice-vdagent` should
   exit but not be restarted. After this situation 4) applies.

### Fixes

- Patches 05 and 06 change the session check logic mainly by also taking
  into account the connected client's UID. If the UID of the
  determined session and the client don't match then the connection will
  be terminated.

### Reproducer

This attack is quite complex and requires the combination of all
supplied programs to succeed. All programs must be placed in the same
directory, because they interact with each other. Perform the following
steps:

1. For reduced complexity it is a precondition that an active graphical
   session already exists in the VM, but no `spice-vdagent` is running in
   it. Therefore log in the "victim" user in a graphical session, kill any
   `spice-vdagent` that got started automatically and keep the session
   open.
2. In the context of an "attacker" user run `create_vdagent_conns.py`:

        attacker$ ./create_vdagent_conns.py
         Established 1015 active connections to vdagentd.
         Waiting for Ctrl-C. Or press ENTER to close 5 sockets.

   Wait until the program displays the message seen above. Keep the
   program running in this state.
3. Still in the context of the attacker compile and run the C++ program:

        attacker$ g++ -O2 socket_pid_attack.cxx -o socket_pid_attack
        attacker$ ./socket_pid_attack
         Target UDS PID =3D ????
         Cycled to PID ....
         [...]
         Closing in to target_pid ????: Got child PID ????
         Now waiting for ???? to get reassigned.

  This program creates a UNIX domain socket connected to `spice-vdagentd` b=
ut
  the `connect()` call is performed in a short-living child process,
  thus freeing the PID the kernel stored for `SO_PEERCRED`. The program
  then waits for the malicious PID to be assigned to an unrelated
  process before it continues. Keep the program running in this state.
4. In the context of the "victim" user create a number of long running
   new child processes in the graphical session. For example something
   like this:

        victim$ for i in `seq 20`; do sleep 1h & done

   This simulates new child processes being created in the victim's context=
 to
   replace the malicious PID the attacker is waiting for.
5. If successful then you should see in the program from step 3. that
   something happened:

         PID ??? now exists, but can't read exe: Permission denied
         Running './vdagent.py --socket-fd 3 '
         Using existing connected socket file descriptor

   If this did not work right away then you need to repeat steps 3) and
   4) (rather quickly) until it succeeds.

   In the case of success, the `socket_pid_attack` program will have
   replaced itself by the `vdagent.py` Python program, which needs to be
   present in the same directory. The Python program will block, trying
   to receive data on the connected UNIX domain socket, because
   `spice-vdagentd` can't accept the connection.=20
   Now terminate the program still running from step 1. via Ctrl-C to
   free up the blocked file descriptors in `spice-vdagentd`. The
   malicious connection should now be accepted by `spice-vdagentd` and
   the attacker should have become the active agent for the victim's
   graphical session. The additional output of the program from step 3.
   should look similar to this:

   ```
   MessageType.VERSION arg1 =3D 0 arg2 =3D 0 bytes =3D 7
   b'302e32302e3000'
   sending resolution of 1024 768
   MessageType.GRAPHICS_DEVICE_INFO arg1 =3D 0 arg2 =3D 0 bytes =3D 4
   b'00000000'
   MessageType.CLIENT_DISCONNECTED arg1 =3D 0 arg2 =3D 0 bytes =3D 0
   MessageType.GRAPHICS_DEVICE_INFO arg1 =3D 0 arg2 =3D 0 bytes =3D 4
   b'00000000'
   MessageType.GRAPHICS_DEVICE_INFO arg1 =3D 0 arg2 =3D 0 bytes =3D 4
   b'00000000'
   MessageType.AUDIO_VOLUME_SYNC arg1 =3D 0 arg2 =3D 0 bytes =3D 7
   b'01eb0200000000'
   MessageType.AUDIO_VOLUME_SYNC arg1 =3D 0 arg2 =3D 0 bytes =3D 7
   b'00eb0200000000'
   MessageType.CLIPBOARD_RELEASE arg1 =3D 1 arg2 =3D 0 bytes =3D 0
   sending clipboard grab request for ClipboardType.SELECTION_PRIMARY
   ```

   If the attacker's connection is not considered to be part of the
   active session then the `AUDIO_VOLUME_SYNC` and
   `GRAPHICS_DEVICE_INFO` messages will not be received from the
   `spice-vdagentd`. This can happen if some other user in the system
   received the malicious PID or if the PID was not in existence for
   long enough. If this is the case repeat steps 3. to 5.  until it
   succeeds.
6. If the previous steps all succeeded then you should be able to see
   for example the clipboard content from the host when a SPICE capable
   viewer is used to connect to the virtual machine. The attacker can
   also send back "malicious clipboard content" to the host.

# 4) Other Suggestions

## a) fchmod() instead of chmod() for UNIX domain socket

I made a minor suggestion about the `chmod()` call in `vdagentd.c:1223`.
If possible this should be replaced by a call to `fchmod()`, if the file
descriptor can be obtained from the glib functions. If custom, unsafe
paths are used for the UNIX domain socket then symlink attacks might
become possible through the use of `chmod()`.

This was addressed by upstream in Patch 01.

# 5) Timeline

2020-09-18: I privately sent a version of this report and the
            reproducers to the upstream developer(s).
2020-10-16: Upstream shared their first version of the patches with me,
            I reviewed them and we discussed some details.
2020-10-26: I was asked to send this prenotification to the
            linux-distros mailing list to prepare the publication of the
	    issues.

# 6) Further References

- SUSE bugzilla tracker bug [3]

[3]: https://bugzilla.suse.com/show_bug.cgi?id=3D1173749

Cheers

--=20
Matthias Gerstner <matthias.gerstner@suse.de>
Dipl.-Wirtsch.-Inf. (FH), Security Engineer
https://www.suse.com/security
Phone: +49 911 740 53 290
GPG Key ID: 0x14C405C971923553

SUSE Software Solutions Germany GmbH
HRB 36809, AG N=FCrnberg
Gesch=E4ftsf=FChrer: Felix Imend=F6rffer

--LQksG6bCIzRHxTLp
Content-Type: application/octet-stream
Content-Disposition: attachment; filename="vdagent_reproducers.tar.gz"
Content-Transfer-Encoding: base64

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
CBEiRPj/wT/apkbIAHgAAA==

--LQksG6bCIzRHxTLp
Content-Type: application/x-gtar
Content-Disposition: attachment; filename="vdagent_security_patches_v5.tgz"
Content-Transfer-Encoding: base64

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

--LQksG6bCIzRHxTLp--

--BwCQnh7xodEAoBMC
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAl+icZEACgkQFMQFyXGS
NVNWQQ/+NwXECixC9fzdxIyagVtEo4flH1miCM2HfdPkAoAYhXzaIX8vCKazodRb
jT5tn5rsrTV/uXOl8VNgJxgbBAzaNkoc/fWmqUcUjIWnK8crwSDxl9Ds/KyWxGWu
o6pxi78q6xfTgBZ0H3rnletS7WzcMYEGzN0jm/bc8Xe2mwnHyBKfvtKX9K3umjdf
rrzRe2jwuOEwX2evMSZ7M+XYu6LkeSpgKazf7Esgf+T74tHgb/SXot3GiSZe5Q0o
UQ5lWi1eesKHNOlY/Kjx5CEav8C3orfTRUMBD+Ma6lUm6kOaf/gaTh6pKDu4PwVF
WhSNexXdO+Mzd1KZWE4W5UD4gHeCJJU1jyDg5FVof6Pa0pJB26r+jJpauq8OwRlR
tlaXQpQ/WrIMSrZbLHFYp3+6TlldMwX51h1a48OX6gLByBpWAe5HpsqB5m6g6c/S
LXA0D7TvDRqnZtMsNmLpC+J4eJ3AW8/sQkqt4fqwDyRuP0NfyGwmB+i+09Feygxh
loFEpusNKcn+LglwAByLWeZhrxPTrGpkG0L0JiTmaH4eCXb/JU5GAo6tn0B6NGdc
EU9QI4YQbayEkJPHLQeKgDDN+dcKBQqK+vaiENOmyZyC1KfVOTUgFI+NxmzO+QCq
s08/IwaqM3a9vHI+ebcxwCu5n8EHPLWu0uhUF7n2Vz2kUmZtUrg=
=sIck
-----END PGP SIGNATURE-----

--BwCQnh7xodEAoBMC--

