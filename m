X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2026" "Thursday" "10" "September" "2015" "15:25:25" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150910192525.25FCEB2E4C9@smtpvbsrv1.mitre.org>" "47" "[oss-security] Re: CVE request Qemu: ide: divide by zero issue" nil nil nil "9" "2015091019:25:25" "[oss-security] Re: CVE request Qemu: ide: divide by zero issue" (number mark "        cve-assign@m Sep 10   47/2026  " thread-indent "\"[oss-security] Re: CVE request Qemu: ide: divide by zero issue\"\n") "<alpine.LFD.2.20.1509101208190.20982@wniryva>" ("<alpine.LFD.2.20.1509101208190.20982@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9905 invoked by uid 550); 10 Sep 2015 19:25:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9887 invoked from network); 10 Sep 2015 19:25:37 -0000
In-Reply-To: <alpine.LFD.2.20.1509101208190.20982@wniryva>
Message-Id: <20150910192525.25FCEB2E4C9@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, luodalongde@gmail.com
Date: Thu, 10 Sep 2015 15:25:25 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request Qemu: ide: divide by zero issue
To: ppandit@redhat.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Qemu emulator built with the IDE disk and CD/DVD-ROM emulation support is
> vulnerable to a divide by zero issue. It could occur while executing an IDE
> command WIN_READ_NATIVE_MAX to determine the maximum size of a drive.
> 
> A privileged user inside guest could use this flaw to crash the Qemu instance
> resulting in DoS.
> 
> The fix disables undue IDE commands for CD-ROM drives.
> 
> https://lists.gnu.org/archive/html/qemu-devel/2015-09/msg02479.html

In this case, we are assigning a CVE ID for the primary problem
statement in the msg02479.html post, i.e., the "All other commands are
illegal to send to an ATAPI device and should be rejected by the
device" statement. Use CVE-2015-6855. The divide-by-zero error is
resultant, and serves as a demonstration of how an illegal command can
have a security impact. It is conceivable that other security impacts
may be discovered later.

(not yet available at
http://git.qemu.org/?p=qemu.git;a=history;f=hw/ide/core.c)

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJV8diyAAoJEL54rhJi8gl5uHgQAJTCJFsIvOV4bvGLr2IBeyyT
WuyKhVTjHPnI05gIN/GetgRg53OkxX7p2PtlCW4+X6GtDizwY6ia4QwS1dKJeKZr
GCaeU8NgiOoeGYj674yPrd2qfLzI1IaBcl5Hn2NMTjRquJQfSfrcWG8OuH+K9Zlp
Rg+8XLhdiryDGmslj0fb6aq+XlSfApszdaR1kFLX1zJzLBFlYeueUfDkZNTLmQmI
E6tDCxn8oE6yEVdWHIciwt09yRYLQORGVR619mXkVMXNguXzgJpe66poAUDbSmcC
W0RdGoAHnS0iqz6eq1e+AsFQhP0zvGfQpCm7Od08EMEbvQAmk7dOjYs/qZN5KHkI
m1AshF0MmlxUsCS6kNIOJbQp0YsAhflHV7oZ24HWy0NF0bytM3sZFiWIPSE66N1G
OVdp6/NRVg4gGvOm/XeP09zezkR/PkPETfVldg9ffPsIx3LUQBFZK9HtAx6wJA6w
3pNVNktvE7LxNIzfvlGChkhvy4q07E4er2jEKGCMlYDp8zd7HKm+8eE2DFhz74xP
n+VaCpbeQ/0oilZLWlkA50WY2nrI6Ndf07pjw7y7ZozZBvgwGKkXsBLwRh4OByvd
IFC2zeTkbT609DhMY/hQQaVTjT+T5M35wqaCe3Xo2nq4vltf03i5w57yRy3gEUKq
20FvsUHrETz9JjTtxRgI
=8VhV
-----END PGP SIGNATURE-----
