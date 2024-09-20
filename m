Received: (qmail 15834 invoked by uid 550); 20 Sep 2024 13:11:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 15804 invoked from network); 20 Sep 2024 13:11:34 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1726837885; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=RLYZGnwyATRyv6gf4gi2NEuOToMj/2c2MgOaaOYudoA=;
	b=v07biLejAvZMDvtfA/Gh/BSu6iiRCvUTUJyfElL8BwdxYQWfAd52x5uPcBKmI1oAOxorB9
	WV/ii/kd/Kdw57q8LtE1PDA7VE+TG4++xadB8T7fG/8RPgqHYOjphFnQ/VGIbmgyyTezKU
	U1yutHV6pCBOCpvWFRnsSs2vAU+1wmg=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1726837885;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=RLYZGnwyATRyv6gf4gi2NEuOToMj/2c2MgOaaOYudoA=;
	b=UoMs6c79RJbc9TI32XonkJK7+UQSZLSLPqzvVpuL6sA2jtpWATRJ0GPMt0M6/bHkMyuNaS
	SmA//dq7gJgqpMDQ==
Authentication-Results: smtp-out2.suse.de;
	dkim=pass header.d=suse.de header.s=susede2_rsa header.b=v07biLej;
	dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=UoMs6c79
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1726837885; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=RLYZGnwyATRyv6gf4gi2NEuOToMj/2c2MgOaaOYudoA=;
	b=v07biLejAvZMDvtfA/Gh/BSu6iiRCvUTUJyfElL8BwdxYQWfAd52x5uPcBKmI1oAOxorB9
	WV/ii/kd/Kdw57q8LtE1PDA7VE+TG4++xadB8T7fG/8RPgqHYOjphFnQ/VGIbmgyyTezKU
	U1yutHV6pCBOCpvWFRnsSs2vAU+1wmg=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1726837885;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=RLYZGnwyATRyv6gf4gi2NEuOToMj/2c2MgOaaOYudoA=;
	b=UoMs6c79RJbc9TI32XonkJK7+UQSZLSLPqzvVpuL6sA2jtpWATRJ0GPMt0M6/bHkMyuNaS
	SmA//dq7gJgqpMDQ==
Date: Fri, 20 Sep 2024 15:11:22 +0200
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <Zu10fPFRvvMfZPQU@kasco.suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="MxJePDGa3ThR4Lvi"
Content-Disposition: inline
Subject: [oss-security] Performance Co-Pilot (PCP): pmcd network daemon security issues and
 review results (CVE-2024-45769), (CVE-2024-45770)

--MxJePDGa3ThR4Lvi
Content-Type: multipart/mixed; protected-headers=v1;
	boundary="OuqLSk+lll7jlpzy"
Content-Disposition: inline
Date: Fri, 20 Sep 2024 15:11:22 +0200
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Subject: Performance Co-Pilot (PCP): pmcd network daemon security issues and
 review results (CVE-2024-45769), (CVE-2024-45770)


--OuqLSk+lll7jlpzy
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello list,

please find below a report about recently fixed security issues in PCP.

You can also find a rendered HTML version of this report on our blog [13].

Best Regards

Matthias


1) Introduction
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Earlier this year we already reported a local symlink attack in
Performance Co-Pilot (PCP) [1]. The rather complex PCP software
suite [2] was difficult to judge just from a cursory look, so
we decided to take a closer look especially at PCP's networking logic at
a later time. This report contains two CVEs and some non-CVE related
findings we also gathered during the follow-up review.

2) Overview of the PCP Network Protocol and Design
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Since PCP is a complex system, this section gives a short overview of the
components and network logic found in PCP, that are relevant for this repor=
t.

Network Access
--------------

The central component of PCP is the `pmcd` daemon. It implements a custom
network protocol that is accessible either only locally, or on all available
network interfaces, depending on the configuration. On openSUSE it only
listens on the loopback device by default. On other distributions, like
Debian, it listens on all interfaces by default. Even then, PCP specific
configuration is in place that denies certain operations for remote
connections, like so-called store operations, based on access rules. On Deb=
ian
these accesses are setup so that only connections considered to be "local" =
are
allowed to perform data store operations.

Whether a connection is local or not is determined either from the type of
connection (e.g. UNIX domain socket connections are considered local) or by
the sender's IP address (loopback IP addresses are considered local). Using
sender IP addresses for security decisions is generally not considered safe,
since IP addresses can be spoofed. As this is a special case of checking
for loopback IP addresses, it can be considered safe, since the Linux kernel
should not allow packets received on remote interfaces to carry loopback IP
addresses as sender.

The access configuration is found in the "pmcd.conf" configuration file.

Daemon and Agent Credentials
----------------------------

The PCP system can collect more or less arbitrary data in a generic manner.
In the protocol, metric IDs are specified that are used to identify an agent
responsible for managing the actual data of interest. A PCP agent can be a
shared object (plugin) which is loaded directly into the `pmcd` daemon, or a
separate program or script that communicates with `pmcd` via a pipe file
descriptor.

`pmcd` itself drops privileges to an unprivileged `pcp` user and group, but=
 a
privileged special component `pmdaroot` is always kept around to perform
privileged operations, if necessary. Also separate agents can (and usually =
do)
run with full root privileges.

Typical agents that are configured by default are:

- /var/lib/pcp/pmdas/proc/pmdaproc: gathers data about every process listed=
 in
  /proc.
- /var/lib/pcp/pmdas/linux/pmdalinux: gathers a plethora of Linux specific
  data e.g. from the /proc and /sys file systems.
- /var/lib/pcp/pmdas/kvm/pmdakvm: tracks performance data related to KVM
  virtual machine emulation.

The actual agent configuration on a system is also found in the "pmcd.conf"
configuration file.

3) Scope of the Review
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

For the review we looked into PCP release 6.2.1. For this final report we
verified and updated everything to match the more recent 6.3.0 tag.

Our focus during the review was on the networking protocol implemented in t=
he
`pmcd` daemon. Furthermore we peeked into the most common agents and helper
processes like `pmdaroot`, `pmdaproc`, `pmdalinux` and `pmdakvm`. We only
looked into the situation of PCP running on Linux.

4) Reproducer Files
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Together with this report, we provide a couple of reproducers for
vulnerabilities that can be triggered over the network. They will be mentio=
ned
in the respective sections. Every reproducer contains a complete binary
client-side protocol exchange that can trigger the issue. A simple way to r=
un
such a reproducer is by using the `netcat` utility in this manner:

    nc -U /run/pcp/pmcd.socket <reproducer-file

5) Findings
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Bugfixes for these issues are found in the recent 6.3.1 upstream
release [3]. Individual bugfixes are pointed out in the
following sections, as far as possible.

A) `__pmDecodeValueSet()` Miscalculates Available Buffer Space Leading to a=
 Possible Heap Corruption (CVE-2024-45769)
---------------------------------------------------------------------------=
------------------------------------------

There is a miscalculation in `__pmDecodeValueSet()`. The `vindex` jumps to =
32-bit
offsets, while the check in `p_result.c:415` (`vindex > pdulen`) uses byte
offsets. This makes it possible to address data beyond the actual packet
payload. Since `__ntohpmValueBock()` in line 432 also swaps bytes in these
places, this represents a full remote DoS leading to SIGABRT, SIGSEGV and/or
corruption of the heap. By very skillfully corrupting the heap, this might
even allow more advanced attacks like privilege escalation or integrity
violation. For an in-depth look at exploiting this issue, see section 6)
below.

The attached reproducer file "pcp-decode-value-set-out-of-bound-write" can
trigger this issue. When running `pmcd` in Valgrind, the following
output can be seen:

    Invalid read of size 4
       at 0x48B57DC: __pmDecodeValueSet (p_result.c:432)
       by 0x4D007BF: ???
       by 0x48B633B: __pmDecodeResult_ctx (p_result.c:806)
       by 0x11BC8F: DoStore (dostore.c:149)
       by 0x111F25: HandleClientInput (pmcd.c:445)
       by 0x110984: ClientLoop (pmcd.c:880)
       by 0x110984: main (pmcd.c:1192)
     Address 0x4d012c0 is 2,320 bytes inside an unallocated block of size 3=
,372,592 in arena "client"
=20=20=20=20
    Invalid write of size 4
       at 0x48E06C4: __ntohpmValueBlock (endian.c:283)
       by 0x48B57E0: __pmDecodeValueSet (p_result.c:432)
       by 0x48B633B: __pmDecodeResult_ctx (p_result.c:806)
       by 0x11BC8F: DoStore (dostore.c:149)
       by 0x111F25: HandleClientInput (pmcd.c:445)
       by 0x110984: ClientLoop (pmcd.c:880)
       by 0x110984: main (pmcd.c:1192)
     Address 0x4d012c0 is 2,320 bytes inside an unallocated block of size 3=
,372,592 in arena "client"
=20=20=20=20
    Invalid read of size 4
       at 0x48B57E1: __pmDecodeValueSet (p_result.c:433)
       by 0x48B633B: __pmDecodeResult_ctx (p_result.c:806)
       by 0x11BC8F: DoStore (dostore.c:149)
       by 0x111F25: HandleClientInput (pmcd.c:445)
       by 0x110984: ClientLoop (pmcd.c:880)
       by 0x110984: main (pmcd.c:1192)
     Address 0x4d012c0 is 2,320 bytes inside an unallocated block of size 3=
,372,592 in arena "client"

Since remote connections are by default not allowed to enter this code path
(this is a store operation), the issue is less severe than it looks at firs=
t.

This issue is fixed in upstream commit 3fc59861174a [4].

B) `__pmDecodeCreds()` Accesses `numcreds` Even if There is not Enough Data
---------------------------------------------------------------------------

`__pmDecodeCreds()` checks the amount of available data too late, so that t=
he
`numcreds` field of `creds_t` is accessed and byte swapped even if it wasn't
supplied by the client. This happens in `p_creds.c:78`.

The attached reproducer file "pcp-numcreds-undefined-data" can trigger
the issue. When running `pmcd` in Valgrind then the following output can be
seen:

    Conditional jump or move depends on uninitialised value(s)
       at 0x48B83A5: __pmDecodeCreds (p_creds.c:74)
       by 0x11BFFD: DoCreds (dopdus.c:1427)
       by 0x111F1C: HandleClientInput (pmcd.c:469)
       by 0x110A74: ClientLoop (pmcd.c:880)
       by 0x110A74: main (pmcd.c:1192)

Since the heap allocated buffer returned from `pmGetPDU()` is bigger than t=
he
actual payload (at least 1024 bytes), this only results in an undefined data
error. No practical exploit should result from this.

This issue is fixed in upstream commit 3561a367072b [5].

C) `__pmDecodeCreds()` shaky `need` calculation when `numcred =3D=3D 0`
-------------------------------------------------------------------

`__pmDecodeCreds()` behaves shakily when `numcred =3D=3D 0`. The `need`
calculation ends up using a negative value of -1 in `p_creds.c:86`. An
attacker can get past the `need !=3D len` check, providing insufficient dat=
a.
Luckily the negative `need` is not used for anything else. The result of the
call will be a zero length `credlist`, that will not be processed further by
the calling `DoCreds()` function.

This issue is addressed by the same bugfix commit as for issue 5.B).

D) `ntohEventArray()` Blindly Processes Client Provided `nrecords`
------------------------------------------------------------------

The function `ntohEventArray()` does not check whether there is enough input
data (and cannot check, since it is missing a length input parameter). It
processes the `nrecords` provided by the client and starts byte swapping aw=
ay,
leading to out of bound heap read and write operations.

The Valgrind output for an attack of this function looks like this:

    Invalid read of size 4
       at 0x48E168A: __bswap_32 (byteswap.h:52)
       by 0x48E168A: ntohEventArray (endian.c:250)
       by 0x48B67DA: __pmDecodeValueSet (p_result.c:432)
       by 0x48B737B: __pmDecodeResult_ctx (p_result.c:806)
       by 0x11BC8F: DoStore (dostore.c:149)
       by 0x111F25: HandleClientInput (pmcd.c:445)
       by 0x110984: ClientLoop (pmcd.c:880)
       by 0x110984: main (pmcd.c:1192)
     Address 0x4fc109c is 2,891,036 bytes inside an unallocated block of si=
ze 3,382,368 in arena "client"
=20=20=20=20
    Invalid write of size 4
       at 0x48E168E: ntohEventArray (endian.c:250)
       by 0x48B67DA: __pmDecodeValueSet (p_result.c:432)
       by 0x48B737B: __pmDecodeResult_ctx (p_result.c:806)
       by 0x11BC8F: DoStore (dostore.c:149)
       by 0x111F25: HandleClientInput (pmcd.c:445)
       by 0x110984: ClientLoop (pmcd.c:880)
       by 0x110984: main (pmcd.c:1192)
     Address 0x4fc109c is 2,891,036 bytes inside an unallocated block of si=
ze 3,382,368 in arena "client"

The attached reproducer "pcp-ntohevent-array-out-of-bound-write"
is able to provoke this situation. We found this problem by using AFL fuzzi=
ng.
The problematic function is nested rather deeply in the parsing logic and it
escaped manual review efforts.

Regarding the severity of this issue, there is not much degree of freedom f=
or
an attacker, because the function simply linearly swaps data past the end of
the valid `pdubuf`. It would only have impact beyond DoS, if the immediately
following heap-block contains relevant application data. Chances are that t=
he
data is corrupted so much, that the program will crash anyway, though.

This issue is fixed in upstream commit 3561a367072b [6].

E) Profile Message Allows to Add Infinite Profiles
--------------------------------------------------

The "profile" message allows unauthenticated users to DoS the `pmcd` daemon.
Memory is allocated for the lifetime of the TCP session for every new `ctx`
index, which is 32-bit wide and thus allows to store up to 2^32 profiles,
likely leading to an out of memory situation. See `DoProfile()`.

It might make sense to limit the number of profiles at least for
unauthenticated users, if this is possible.

The issue is fixed in upstream commit 1e54aa7de51b [7].

F) Fetch Message Allows to Allocate Unlimited `nPmids`
------------------------------------------------------

In `HandleFetch()` the client controlled `nPmids` is assigned to `maxnpmids`
and is in turn used to allocate memory via `pmAllocResult()`. This could al=
so
lead to memory hogging or a network DoS.

A fix for this issue is found in upstream commit c9b1a2ecb4 [8].

G) `pmpost` Fosters a Symlink Attack Allowing to Escalate from `pcp` to `ro=
ot` (CVE-2024-45770)
---------------------------------------------------------------------------=
--------------------

This issue is somewhat related to CVE-2023-6917 we reported earlier this ye=
ar.

`pmpost` is used to append messages to the "PCP notice board". It is called
from different contexts, one of them is as `root` from within the `pmcd`
startup script (called `rc_pmcd` in the repository). The program writes the
message provided on the command line to the file in /var/log/pcp/NOTICES.  =
The
relevant code for opening the file is found in pmpost's `main()` function
(found in `pmpost.c`):

        if ((fd =3D open(notices, O_WRONLY|O_APPEND, 0)) < 0) {
            if ((fd =3D open(notices, O_WRONLY|O_CREAT|O_APPEND, 0664)) < 0=
) {
                fprintf(stderr, "pmpost: cannot open or create file \"%s\":=
 %s\n",
                    notices, osstrerror());
                goto oops;
            }
    #ifndef IS_MINGW
            /* if root, try to fix ownership */
            if (getuid() =3D=3D 0) {
                if ((fchown(fd, uid, gid)) < 0) {
                    fprintf(stderr, "pmpost: cannot set file gid \"%s\": %s=
\n",
                        notices, osstrerror());
                }
            }
    #endif
            lastday =3D LAST_NEWFILE;
        }

The directory /var/log/pcp belongs to pcp:pcp. The file is opened without
passing the `O_NOFOLLOW` flag, thus it will open symlinks placed there by t=
he
pcp user. This allows to trick `pmpost` into creating new files in arbitrary
locations, or to corrupt arbitrary existing files in the system. It thus po=
ses
a local denial of service vector.

Furthermore, if the NOTICES file is newly created and `pmpost` runs as root,
then a `fchown()` to pcp:pcp is executed on the file. Thus it allows to pass
the ownership of arbitrary newly created files in the system to pcp:pcp.
This is likely a full local root exploit from pcp to root. Possible attack
vectors are placing files into one of the various `.d` drop in configuration
file directories in /etc.

Since the directory /var/log/pcp does not have a sticky bit set, the
`protected_symlinks` setting of the Linux kernel does not protect from harm
in this context.

This issue is addressed in upstream commit 22505f9a43 [9].

H) `GetContextLabels()` Uses Untrusted `PCP_ATTR_CONTAINER` to Construct JS=
ON Document
---------------------------------------------------------------------------=
-----------

When a client connects to `pmcd`, then attributes can be passed (found in
`ClientInfo.attrs`). One of these attributes, `PCP_ATTR_CONTAINER`, is stor=
ed
without further verification in `ConnectionAttributes()`. This value is use=
d in
the function `GetContextLabels()` to construct a JSON document. Here it is =
not
checked whether the data contains any JSON syntax elements, which allows
to inject arbitrary additional data into the JSON document by crafting a
suitable CONTAINER attribute value.

The attached reproducer "pcp-label-req-container-json-injection"
demonstrates this problem, by injecting an `"evilkey": "evilvalue"` element
into the JSON document, by choosing a crafted container attribute value.
It seems that by doing this a client can only fool itself; this doesn't
have any practical value for an attacker.

We followed the use of the CONTAINER attribute also into the `pmdaroot` hel=
per
program, where the attribute can also arrive, to query data regarding a
specific container in `root_container_search()`. For a while it looked like
this might even allow command line parameter injection e.g. in `lxc.c`, whe=
re
the container name is passed to `lxc-info`. It turned out, however, that the
caller provided value is only used for comparing it against the container
names found locally, so crafted data should not cause any harm in this
spot.

The fix for this issue is found in upstream commit d68bd777ae [10].

I) Issues with `__pmProcessPipe()` and File Descriptors not Marked `O_CLOEX=
EC`
---------------------------------------------------------------------------=
---

Most, if not all, file descriptors opened by PCP code are not marked
`O_CLOEXEC`. This may cause problems when executing child processes that
operate in a different security context than the parent, or are not prepared
to safely handle any unexpectedly inherited open files, and might leak them=
 on
their end to further child processes.

This is not a problem when starting agents from within `pmcd`, because
`CreateAgentPOSIX()` explicitly closes any file descriptors larger than 2.
Similarly in the `pmdaroot` process in function `root_create_agent()` any
non-std file descriptors are closed in the child context, before running
`execvp()`. It _is_ a problem in the context of the `__pmProcessPipe()`
function, though, which executes arbitrary command lines in child processes=
 in
a `popen()` style.

The latter function does not close excess file descriptors. Depending on the
context in which the function is invoked, sensitive file descriptors may le=
ak
into unexpected contexts. One such context we identified is in the `pmdaroo=
t`
process when it executes `lxc-info` to obtain information about LXC contain=
ers.
To verify this, we replaced the `lxc-info` binary by a custom script and
triggered the execution of `lxc-info` via `pmcd`. The custom script received
the following open file descriptors:

    lr-x------ 1 root root 64 Aug  2 12:23 0 -> pipe:[104916]
    l-wx------ 1 root root 64 Aug  2 12:23 1 -> pipe:[107248]
    l-wx------ 1 root root 64 Aug  2 12:23 2 -> /var/log/pcp/pmcd/root.log
    lrwx------ 1 root root 64 Aug  2 12:23 3 -> socket:[105912]
    lrwx------ 1 root root 64 Aug  2 12:23 4 -> socket:[105913]
    lrwx------ 1 root root 64 Aug  2 12:23 5 -> socket:[105914]
    lrwx------ 1 root root 64 Aug  2 12:23 6 -> socket:[105917]
    lrwx------ 1 root root 64 Aug  2 12:23 7 -> socket:[105922]

As can be seen from this, the process inherited all open socket connections
from the `pmdaroot` process. This could prove a vital local root exploit, if
the sockets end up in the wrong hands, since clients of `pmdaroot` can
start arbitrary commands as root via the `PDUROOT_STARTPMDA_REQ` message.

Another use of `__pmProcessPipe()` that could be problematic in this
respect, is in the Perl module glue code, where the `__pmProcessPipe()`
function is made available as `$pmda->add_pipe(...)` (see function
`local_pipe()` in `perl/PMDA/local.c`. The in-tree Perl modules that make u=
se
of this function don't seem to open any additional files that could leak,
though.

This issue is addressed in upstream commit 1d5a8d1c6 [11].

6) Exploiting the Heap Corruption in Issue 5.A)
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

This section investigates to what ends the heap corruption issue outlined in
section 5.A) can be exploited by a skillful attacker.

The location where the out-of-bound write occurs in issue 5.A) is under qui=
te
some attacker control. As we know from the issue, there is a boundary
check in `p_result.c: 415`, but the check is in bytes, while we can address
32-bit offsets from the start of `pdubuf`. The PDU (protocol data unit) is
received in `LIMIT_SIZE` mode, thus at max 64 KiB of data can be transferred
for the attack. This means the attacker can specify a `vindex` of up to 655=
36.
The valid `pdulen` will be 65536, but the `vindex` will address up to 4 *
65536 =3D 256 KiB. Thus an attacker can cause heap corruption in the heap m=
emory
area made up of the 192 KiB following the `pdubuf`.

An interesting data structure that caught our interest is also found on the
heap: the `client` array, holding the `ClientInfo` data structures for all
connected clients. When sending small PDUs, the `client` buffer will
already be located some 10 KiB after the `pdubuf` in memory. Sending a
small PDU won't do, though, because then the `vindex` cannot address far
enough into the heap to reach it. When sending a larger PDU of a few
kilobytes, `pdubuf` will be located __after__ the `client` buffer on the
heap, making it again unreachable for the attack.

Things can be turned around by creating a lot of connections to `pmcd`,
though. The `client` buffer is `realloc()`'d in the `NewClient()` function,
when new clients are coming in that no longer fit into the `client` array. =
By
temporarily creating e.g. 200 connections to `pmcd`, it is possible to force
`realloc()` to move the `client` buffer to a larger heap address. This in t=
urn
makes it possible to send an attack payload that is large enough to cause h=
eap
corruption 10 to 20 KiB beyond the end of `pdubuf`, while `pdubuf` will sti=
ll
be located at a smaller address than the `client` buffer.

The heap addresses used are relatively deterministic. ASLR protection does =
not
help much here, because the attack is not about absolute addresses, but abo=
ut
relative offsets between data structures on the heap. When freshly starting
`pmcd` and sending an initial attack payload, the offset between `client`
and `pdubuf` is always the same. When doing more complex operations that are
needed to perform a full attack, the offsets are somewhat less
deterministic, but still patterns can be observed. Thus a successful guess =
is
well within reach, as we believe, especially since the local attacker also =
has
the possibility to force the daemon to crash and be restarted, allowing for
multiple attempts.

A full attack scenario that we came up with is the following:

1. The attacker creates a connection from remote, which ends up with
  `ClientInfo->denyOps =3D=3D 0x2` which means `PMCD_OP_STORE` is denied fo=
r the
  remote connection. This connection only sends the initial message and then
  stays idle, but connected.
2. The attacker sends a valid `PDU_RESULT` of a somewhat larger size (3 KiB)
  using a local connection.
3. The attacker creates 200 parallel idling connections towards `pmcd`, to
  force the `client` buffer to be moved to a larger heap address. Then the
  connections are terminated again.
4. The attacker sends an attack `PDU_RESULT` payload of 3-4 KiB size using a
  local connection. The attack payload contains just one bad `vindex`
  that is tuned just so that `__ntohpmValueBlock()` will operate exactly on
  the address of `client[0].denyOps` for the connection still open from step
  1).
5. The attack will corrupt the `ClientInfo` from step 1) in such a way that
  `denyOps` no longer contains `PMCD_OP_STORE`. The connection will thus be
  "upgraded" to be treated like a local connection, although it is remote.

We verified this scenario in a practical example on openSUSE Tumbleweed aga=
inst
`pmcd` version 6.2.1. Arriving at step 4) the distance to cross to reach the
`client[0]` structure was a bit over 5 KiB:

    (gdb) p (char*)client - (char*)pdubuf
    $2 =3D 5520

Before the processing of the attack payload, the `client[]` structure is
intact:

    (gdb) p client[0]
    $8 =3D {fd =3D 17, status =3D {connected =3D 1, changes =3D 0, attribut=
es =3D 0}, profile =3D {nodes =3D 0, hsize =3D 0,
        hash =3D 0x0, next =3D 0x0, index =3D 0}, denyOps =3D 2, pduInfo =
=3D {features =3D 3652, licensed =3D 1, version =3D 0,
        zero =3D 0}, seq =3D 1, start =3D 1723726720, addr =3D 0x5625f56b91=
60, attrs =3D {nodes =3D 0, hsize =3D 0, hash =3D 0x0,
        next =3D 0x0, index =3D 0}}

After the attack has been carried out, it is corrupted like this:

    (gdb) p client[0]
    $30 =3D {fd =3D 17, status =3D {connected =3D 1, changes =3D 0, attribu=
tes =3D 0}, profile =3D {nodes =3D 0, hsize =3D 0,
        hash =3D 0x0, next =3D 0x0, index =3D 0}, denyOps =3D 33554432, pdu=
Info =3D {features =3D 0, licensed =3D 0, version =3D 1,
        zero =3D 0}, seq =3D 1141768448, start =3D 1723726720, addr =3D 0x5=
625f56b9160, attrs =3D {nodes =3D 0, hsize =3D 0,
        hash =3D 0x0, next =3D 0x0, index =3D 0}}

As can be seen this also corrupts `features`, `licensed`, `version` and `se=
q`.
This did not stop the connection from step 1) from sending a
`PDU_RESULT` message without being denied. So the upgrade of the remote
connection was carried out successfully. The effects of the attack could be
tuned further by changing the `vindex` offset to a smaller or larger value,=
 to
maybe cause less fallout in the `ClientInfo` structure, depending on the ne=
eds
of the attacker.

As this shows, the heap corruption issue offers more possibilities than it
might look at first. It allows to violate the integrity of the `pmcd` daemon
in unexpected ways.

7) About CVE Assignments
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

The PCP maintainers don't consider denial-of-service attacks CVE worthy, si=
nce
the service will be restarted automatically via systemd. For this reason no
CVEs have been assigned for this class of issues.

A similar consideration has been made by the PCP maintainers regarding the
memory corruption issues: as long as the service only crashes, it's not CVE
worthy. For this reason a CVE has been assigned only for issue 5A), which
proved to be exploitable as shown in section 6).

8) Timeline
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

2024-08-06: We shared a comprehensive report with findings and
    recommendations with the PCP maintainers at pcp-maintainers@groups.io.
    We offered coordinated disclosure according to our disclosure policy [1=
2].
2024-08-14: The date of 2024-09-17 has been agreed upon for publication
    of the findings.
2024-08-15: There was some uncertainty about the severity of the heap
    corruption issue 5a), so we investigated it more deeply and shared our
    findings with the PCP maintainers.
2024-09-09: We recommended to the PCP maintainers to obtain CVEs from
    the RedHat security team, and they received the two CVEs by this date.
2024-09-17: A bugfix release has been published as planned by the PCP
    upstream maintainers.

9) References
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

[1]: https://www.openwall.com/lists/oss-security/2024/02/28/1
[2]: https://pcp.io/
[3]: https://github.com/performancecopilot/pcp/releases/tag/6.3.1
[4]: https://github.com/performancecopilot/pcp/commit/3fc59861174ac0bbb08f5=
fa98cadb0d206f5cc60
[5]: https://github.com/performancecopilot/pcp/commit/3561a367072bedc0748c8=
71d48edcdade3a8aa6d
[6]: https://github.com/performancecopilot/pcp/commit/3561a367072bedc0748c8=
71d48edcdade3a8aa6d
[7]: https://github.com/performancecopilot/pcp/commit/1e54aa7de51b0e6c6ccea=
b2a52e3f6893070f70f
[8]: https://github.com/performancecopilot/pcp/commit/c9b1a2ecb45981a555bfa=
b4161be76a0
[9]: https://github.com/performancecopilot/pcp/commit/22505f9a43c212217d4d5=
3200dcf2f0e94febc8f
[10]: https://github.com/performancecopilot/pcp/commit/d68bd777ae74496ce074=
3fec99b2553ffa0fd29e
[11]: https://github.com/performancecopilot/pcp/commit/1d5a8d1c6fe8b3d5b35a=
9cc0ed6644696c67ec91
[12]: https://en.opensuse.org/openSUSE:Security_disclosure_policy
[13]: https://security.opensuse.org/2024/09/18/pcp-network-audit.html

--OuqLSk+lll7jlpzy
Content-Type: application/octet-stream
Content-Disposition: attachment;
	filename=pcp-decode-value-set-out-of-bound-write
Content-Transfer-Encoding: base64

AAAAFAAAcAwAABJnAAAAAQECAAAAAAQAAABwAZCxW6wAABJnAAADLwAAADIAAAABAAAAAQAAAAEA
AATSAAAD/P5/AACQeChe038AAPjTVqz+fwAA9NNWrP5/AACE5SVe038AALBqKF7TfwAAWFQlXtN/
AAA4twJXAAAAADxUJV7TfwAAVNRWrP5/AAD76SVe038AACEAAAAAAAAAAFglXtN/AACwaihe038A
AFjUVqz+fwAAVNRWrP5/AAB87SVe038AAENaJV7TfwAAACAkXtN/AABwVyVe038AAAYxgvHaVQAA
kCPA8dpVAAACAAAAAAAAAPDVVqz+fwAA4NZWrP5/AAAg1Fas/n8AACuKgvHaVQAAPwAAAAAAAAAC
AAAAAAAAAEfUVqz+fwAA28XLXdN/AABQ1Fas/n8AAMB1313TfwAABwAAAAAAAAAHAAAAAAAAAAEA
AAAAAAAA4dRWrP5/AACQUN9d038AAEL/yl3TfwAAgNRWrP5/AADy1Vas/n8AAPDVVqz+fwAAAAAA
AAAAAABg1Vas/n8AAA3Fy13TfwAAAAAAAAAAAADAdd9d038AAPDUVqz+fwAAkFDfXdN/AACQI8Dx
2lUAAH+my13TfwAAkFDfXdN/AAAQAAAAAAAAANzSgvHaVQAAkFDfXdN/AAAAAAAAAAAAAAEAAAAA
AAAAAQAAAAAAAAA5tctd038AAMB1313TfwAAh8bLXdN/AABEDgAAAAAAAMB1313TfwAAAQAAAAAA
AAABAAAAAAAAAAEAAAAAAAAA29KC8dpVAACQUN9d038AAEL/yl3TfwAAAAAAAAxwAABw1Vas/n8A
AKM0gvHaVQAAQFCD8QxwAACQ1Vas/n8AAAZ7gvHaVQAAAQAAAAAAAAAAYCheDHAAALDVVqz+fwAA
rWOC8dpVAADb0oLxAAACAcDVVqz+fwAAozSC8dpVAABLR4LxAAACAeDVVqz+fwAAKNlWrP5/AADw
1Vas/n8AAKd7gvHaVQAAANZWrP5/AADpyoLx2lUAABDWVqz+fwAAQFCD8dpVAAAw1las/n8AAAAA
AAAAAAAA2NpWrP5/AADkaoLx2lUAAIDWVqz+fwAAINlWrP5/AAAQ11as/n8AACwrgvHaVQAAYNZW
rP5/AAAg2Vas/n8AAAAAAgEAAAAAgNZWrP5/AAAAAAAUAABwAAAAAAAAAAAAAgEORP5/AAAo2Vas
/n8AAAAAABQAAHAMAAASZwAAAAEBAgAA/n8AAABgKF7TfwAARA4BAv5/AAAEAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAADYhYLx2lUAAJaFgvHaVQAA4NZWrP5/AAACAAAAAAAAADB4AKz+fwAAKNlWrP5/
AAAB11as/n8AAAAAAGQAAADI

--OuqLSk+lll7jlpzy
Content-Type: application/octet-stream
Content-Disposition: attachment;
	filename=pcp-label-req-container-json-injection
Content-Transfer-Encoding: base64

AAAAFAAAcAwAABJnAAAAAQECAEAAAAA0AABwEdgJIzsAAAAPZXZpbC1jb250YWluZXIiLCJldmls
a2V5IjoiZXZpbHZhbHVlAAAAFAAAcBIAqQ9sAAAAAAAAAAE=

--OuqLSk+lll7jlpzy
Content-Type: application/octet-stream
Content-Disposition: attachment;
	filename=pcp-ntohevent-array-out-of-bound-write
Content-Transfer-Encoding: base64

AAAAFAAAcAwAABJnAAAAAQECAAAAAAQAAABwAZCxW6wAABJnAAADLwAAADIAAAABAAAAAQAAAAEA
AATSAAAAcAwAABJnAAAAAQENADUAAAA0AABwAgBAABAAAAABAAAHY29ubmVjdGlvbnMAABJnAAAA
NHEMAAASZwAAAAEBDQA1AAAANAAAcAIAQAAAAAAAAAAAAAAAAAAAEmcQAACAAGUAAP8UAABwDAAg
EmcAAAABAQIANQAAADQAAHAUbnRhaW5lciIsIiB2aWz///8BOhhlh2lsdjQAAHAR2AkAAHAMAAAS
ZwDwADsAAAA0AABwFNgJIzuG+v///wwAAAAAAAAAAAAGAGNvbjUAAAA0AGVlZWVlZWVlZWVhaW4A
AAAAFAAAcAwAABJnAAAAAQECADUAAAA0AP9wFG50YWluZXIiLCIgdmls////AToYZYdpbHY0AAAT
EdgJAABwDAAAEmcc8AA7AAAANAAAcBTYCSM7hvr///8MAAAAAAAAAAAAAQBjb241AAAANABlZWVl
ZWVlZWVlYWluAAAAABQAAHAMAAASZwAAAAEBAgA1AAAANAAAcBRudGFpbmVyIiwiIHZpbP///wE6
GGWHaXVzZXJzcBHYCQAAcAwAABIcgAIANQAAADQAAHAUbnRhaW5lciIsIiB2aWz///8BOhhlh2ls
djQAAHAR2BcAAHAMAAASZwDwADsAAAA0AABwFNgJIzuG+v///wwAAAAOAAAAAAAGAGNvbjUAIQA0
AGVlZWFlZWVlZWVhaW4AAAAAFAAAcAwAABJnAA8AAQECADUAAAA0AABwFG50YWluZXIiLCIgdmls
////AToYZYdpbHY0AABwEdgJAABwDAAAEmcA8AA7AAAANAAAcBTYCSM7AAAAAP8MAAAAAAAAAAAA
BhfaAHUAtwA0AIAAFXAMAAAC////ADQAAA9ldmlsLWMAAHAAgAkjOwBvbnRhaW5lciIsImVpaWxr
ZXkAAQAAdmlsdmFsdWUAAAAUAABwEgCpD2wAAAAAAAAAAQAAABQAAHAMAAASZwBpbHZhbHVlAAAA
FAAAahIAqQ9sAAAAAAAAAAEAAAAUAABwDAAAEmcAAAAMAQIAQAAAADQAAHAR2AkjOwAAAA9ldmls
LWNvbnRhaW5lciIsImV/aWxrZXkAAQAAdmlsdmFsdVsAAAAUAABwEgCpD2wAAAAAAAAAAQAAABQA
AHAMAAASZwAABAEBAgBAAAAANAAAcBHYCSM7AAAAD2V2aWwtY29udGFpbmVyIiwqZX9pbGtleSI6
ImV2aWx2YWx1ZQAAABQAAHASAKkPbAAAAAAAAAABAAAAFAAAcAwAABJnAAAAAAACAEAAAAA0AABw
EdgJIzsAAAAPZXZpbC1jb250YWluZXIiLCJlaWlsa2V5ABMAAHZpbHZhbHVlAAAAFAAAcBIAqQ9s
AAAAAAAAAAEAAAAUbGtleQABAAB2aWx2YWx1WwAAABQAAHASAKkPbAAAAAAAAAABAAAAFAAAcAwA
ABJnAAAEAQECAEAAAAA0AP8BOiJldnpsf/9sdWUAAAAQAABwBN+oD2yengAAAAAAFAAAcAwA4xFM
AAAAAQECAEAAAAA0AABwEdgJIzsAAAAPZXZpbC1jb250YWluZXIiLCIgdmls////AToiZXZ6bH//
bHVlAAAAEAAAcATfqA9snp4AAAAAADQAAHAR2AkjOwAAAA9ldmlsLWNvbnRhaW5lciIsIiB2aWz/
//8BOiJldnpsf/9sdWUAAAAQAABwBN+oD2yengAAAAAAFAAAcAwAABJnAAAAAQECAEAAAAA0AABw
EdgJIzsAAAAPZXZpbC1jb250YWluZXIiLCIgdmls////AToiZXZ6bH//bHVlAAAAEAAAcATfqA9s
np4AAAAAABQAAHAMAAASZwAUAABwEgCpD2wAAAAAAAAAAQAAABQAAHAMAAASZwAAAAEBAgBAAAAA
NAAAD2V2AAAAFAAAcAwAABJnAAAAAQECAHUAAAAUAABwDAAAEmcAAAABAQ0ANQAAADQAABQAAHAS
AA==

--OuqLSk+lll7jlpzy
Content-Type: application/octet-stream
Content-Disposition: attachment; filename=pcp-numcreds-undefined-data
Content-Transfer-Encoding: base64

AAAADAAAcAz/fwAA

--OuqLSk+lll7jlpzy--

--MxJePDGa3ThR4Lvi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAmbtdHsACgkQFMQFyXGS
NVOKWA/9HX2XipPcP0HM/hRw01kO7LgaMQD574KpdYivEqUX7H+n0Bg02A6PTm5D
McORwwgJ5tJ71OvgdvIzczwNfHBj7HOMhdSQTOTulogqJBXG2kyLbGBzNIQ61lCN
/lhiPTIi/uV8dgy6eFLhd1/UewAiYGPL2J6iqnyoTwgpv5Pe0q5rbnNRGCxVca0b
UuAvRTy5n44blbC2LKWK1ut1IY96oOiTn/fu3rc/rXNbsKmKwlaYM43dtNcYjAAH
c8MgZlTcS3B04jcKgjBQbSZFw9TQZvvNcc5IzyKZuQ2g8mlHtXXnAciZz8UoMks4
F8QaQzvl/fYYUWHQ3sr3f9wKMNlnMP06iN3WA3+bmmZX+iXdTNLHIlNwotTDM9Dx
oe7BIVHHJ/Veg3G+okXA8+Yt+bGMcj+46ZYyNqhMPZWRfzE370YMj0tKYdbF51j2
RLJf1GYsU7YBOHqFi/Eo50YmKf54d+I35/l4dg/i5s8WzrHBjNHy3xXcP+4GGYSS
JxrfuUQ8KoPSR77RYH2GfBHowLWtjpUXqe632RLpN3mlqRtxu0nVYRxhBCH170S2
9iJJXAy9Y+a5ize2bYRczaG1gISzKyPFXqBPPQyMuZ8ZYt128R+rKbN6BOWwcS09
tCTpA8ygVIc6OdlOpuw7hkLCdbI6q+n4sp1zdIQaq9atknH7NXM=
=rHT7
-----END PGP SIGNATURE-----

--MxJePDGa3ThR4Lvi--
