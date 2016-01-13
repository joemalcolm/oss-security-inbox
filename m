X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4823" "Wednesday" "13" "January" "2016" "22:27:02" "+0000" "halfdog" "me@halfdog.net" "<b8b828c3-8dc6-1406-7080-7d45aae6c6ad@halfdog.net>" "125" "[oss-security] Overlayfs ovl_setattr missing permission checks (CVE-2015-8660)" nil nil nil "1" "2016011322:27:02" "[oss-security] Overlayfs ovl_setattr missing permission checks (CVE-2015-8660)" (number mark "U       me@halfdog.n Jan 13  125/4823  " thread-indent "\"[oss-security] Overlayfs ovl_setattr missing permission checks (CVE-2015-8660)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1660 invoked by uid 550); 13 Jan 2016 22:28:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1632 invoked from network); 13 Jan 2016 22:28:47 -0000
To: oss-security@lists.openwall.com
From: halfdog <me@halfdog.net>
Message-ID: <b8b828c3-8dc6-1406-7080-7d45aae6c6ad@halfdog.net>
Date: Wed, 13 Jan 2016 22:27:02 +0000
User-Agent: Mozilla/5.0 (Windows NT 6.3; rv:36.0) Gecko/20100101 Firefox/36.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: [oss-security] Overlayfs ovl_setattr missing permission checks (CVE-2015-8660)

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

Preamble:
=========

This post is just for reference.

Credits and sincere thanks to all the fine people, who discovered the
vulnerability before me, developed the patches and rolled the whole
responsible disclosure procedure.


Problem description:
====================

Linux user namespace allows to mount file systems as normal user,
including the overlayfs. As many of those features were not designed
with namespaces in mind, this increase the attack surface of the Linux
kernel interface. Due to missing security checks when changing mode of
files on overlayfs, a SUID binary can be created within user namespace
but executed from outside to gain root privileges.

Overlayfs was intended to allow create writeable filesystems when
running on readonly medias, e.g. on a live-CD. In such scenario, the
lower filesystem contains the read-only data from the medium, the
upper filesystem part is mixed with the lower part. This mixture is
then presented as an overlayfs at a given mount point. When writing to
this overlayfs, the write will only modify the data in upper, which
may reside on a tmpfs for that purpose.

One problematic use case is the modification of file or attributes of
files on the overlayfs within a user namespace. A user without any
capabilities on the host is given CAP_SYSADMIN within the user
namespace, thus having capabilities to change the attributes of files
on the overlayfs when not checking, if the host-system user would also
have the capability to change the attributes of the file without
having CAP_SYSADMIN there also. As this check was missing, the process
within namespace could gain read/write access to arbitrary files.
Combined with the SUID-write technique from a previous article ([1]),
modification of host-UID-0 SUID-binaries allows escalation to host
root user.


Exploitation Technique:
=======================

Exploitation is technically quite simple:

* Create new user and mount namespace using clone with
CLONE_NEWUSER|CLONE_NEWNS flags.

* Mount an overlayfs using /bin as lower filesystem, some temporary
directories as upper and work directory.

* Overlayfs mount would only be visible within user namespace, so let
namespace process change CWD to overlayfs, thus making the overlayfs
also visible outside the namespace via the proc filesystem.

* Make su on overlayfs world writable without changing the owner

* Let process outside user namespace write arbitrary content to the
file applying a slightly modified variant of [1].

* Execute the modified su binary

POC:
====

This exploit uses one parent and one user namespace process. The
namespace process creates the overlayfs mount, chdirs to the directory
and makes su writable. Afterwards this process waits until the parent
has gained root privileges before rolling everything back: unmounting,
cleanup of helper files. As soon as the parent process notices, that
the child has prepared su as intended, it uses the technique from
SetgidDirectoryPrivilegeEscalation [1], that is calling another SUID
binary, e.g. mount, to use stderr to write to the opened su file
without loosing SUID bit. Afterwards parent process invokes the
modified su to create an UID 0 process. The change of the parent's UID
then triggers the namespace child to start cleanup. See
UserNamespaceOverlayfsSetuidWriteExec.c [2] for example code.

build# ./UserNamespaceOverlayfsSetuidWriteExec -- /bin/bash
Setting uid map in /proc/491/uid_map
Setting gid map in /proc/491/gid_map
euid: 0, egid: 0
euid: 0, egid: 0
Namespace helper waiting for modification completion
Namespace part completed
root#


Results, Discussion:
====================

The missing security checks in overlayfs were just a mistake, that
should not happen, but which by itself would not have those
devastating effects. By exposing quite some kernel functionality to
unprivileged users via user namespaces, this increases the attack
surface of the kernel significantly. Thus it might be a good idea to
deactivate it on standard kernels by default and grant it only to
selected users.

For the above exploit to work, not only exposure within the namespace
is required, a process from outside uses /proc to access the mounts
which should be visible only to processes within the namespace. This
is by itself already a risk but might be also a security vulnerability
by itself, worth fixing.


[1]
http://www.halfdog.net/Security/2015/SetgidDirectoryPrivilegeEscalation/
[2]
http://www.halfdog.net/Security/2015/UserNamespaceOverlayfsSetuidWriteExec/

- -- 
http://www.halfdog.net/
PGP: 156A AE98 B91F 0114 FE88  2BD8 C459 9386 feed a bee
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAlaWzy4ACgkQxFmThv7tq+7PuACeNbJJ335/22gZiVGBXSSqYHC2
hE0An0KyqLXQHozhPS3FQGVSf2IuWTej
=YHDR
-----END PGP SIGNATURE-----
