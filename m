X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1776" "Friday" "29" "January" "2016" "20:13:23" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160130011323.7B7FD3AE072@smtpvbsrv1.mitre.org>" "45" "[oss-security] Re: CVE request Qemu: ide: ahci null pointer dereference when using FIS CLB engines" nil nil nil "1" "2016013001:13:23" "[oss-security] Re: CVE request Qemu: ide: ahci null pointer dereference when using FIS CLB engines" (number mark "U       cve-assign@m Jan 29   45/1776  " thread-indent "\"[oss-security] Re: CVE request Qemu: ide: ahci null pointer dereference when using FIS CLB engines\"\n") "<alpine.LFD.2.20.1601291203340.22140@wniryva>" ("<alpine.LFD.2.20.1601291203340.22140@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14132 invoked by uid 550); 30 Jan 2016 01:13:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14110 invoked from network); 30 Jan 2016 01:13:35 -0000
From: cve-assign@mitre.org
To: ppandit@redhat.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, zuozhi.fzz@alibaba-inc.com
In-Reply-To: <alpine.LFD.2.20.1601291203340.22140@wniryva>
Message-Id: <20160130011323.7B7FD3AE072@smtpvbsrv1.mitre.org>
Date: Fri, 29 Jan 2016 20:13:23 -0500 (EST)
Subject: [oss-security] Re: CVE request Qemu: ide: ahci null pointer dereference when using FIS CLB engines

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Qemu emulator built with an IDE AHCI emulation support is vulnerable to a null
> pointer dereference flaw. It occurs while unmapping the Frame Information
> Structure(FIS) & Command List Block(CLB) entries.
>
> A privileged user inside guest could use this flaw to crash the Qemu process
> instance resulting in DoS.
>
> https://lists.gnu.org/archive/html/qemu-devel/2016-01/msg05742.html
> https://bugzilla.redhat.com/show_bug.cgi?id=1302057

>> ide: ahci: add check before calling dma_memo

>> address_space_map() returns NULL because 'bounce.buffer' is in use

Use CVE-2016-2197.

This is not yet available at
http://git.qemu.org/?p=qemu.git;a=history;f=hw/ide/ahci.c but
that may be an expected place for a later update.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWrAyZAAoJEL54rhJi8gl54p0QAK4MPiZJk06Dm60yZcoDkz2k
AOnEE+vnHrYgD0pv3gNrtN5r7m3Aqo0FnDv9O+MlRy35ZouAnp5M5FcMhLCSnxyi
5py9FNW0VMOSz45y7oXFv50SOtbHO63uRf5ZUGc1Sbb2gWFVZuYdZMy1MByZ38lO
BEwBmrhDHHa7v1VEwA0avC+ur4H8IZeVv0o16IdgrkbJ3HMOq+mdH8wZVhiiQykK
sR7K4u/iGk3ZV1Jn9Cf9YGtxArFQCYeN58kNQ9SyH5oe2ZnoGnub3ovB7V00ReiU
E+cbPRTwByJyIE/5kOhDHUOV32CnRmkNwWW0g4ZiaROtsQY95gC6+VzASzrAahsY
igG+FuW2YV98opbtqegVixPHeYN5SJu/DIQKJEolPqpNeGs8tNYrhmtShgm95ZJc
K4LrPuNwmg4ZNCFuAGQB6bKzvddh9zutj9Eui5xeuzWd9cXWCJV8F2RHAVtYZZKM
T2WedId8Bu5OstqMCPRQjFMnlMPiajqSdrot0hUAtLds1/EI+iWu0mXaq1fmTxY4
qOtz7GzFWx5xQ+ZRlZj6W3J9dsN74w6xG94vle/bWYLxp646oYBfyMk2nBI4hW3m
XjoUe09njgFRNFDzFJK9uj//qirsPRN2c14RamCN8y65bFKQ4rpopjW26VQwBNJJ
IpC8cX/RD1LvEnWkxF8L
=Huqy
-----END PGP SIGNATURE-----
