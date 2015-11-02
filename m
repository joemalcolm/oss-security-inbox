X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1351" "Monday" "2" "November" "2015" "11:03:55" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20151102160355.7C43352E039@smtpvbsrv1.mitre.org>" "33" "[oss-security] Re: CVE request: DoS in libxml2 if xz is enabled" nil nil nil "11" "2015110216:03:55" "[oss-security] Re: CVE request: DoS in libxml2 if xz is enabled" (number mark "U       cve-assign@m Nov  2   33/1351  " thread-indent "\"[oss-security] Re: CVE request: DoS in libxml2 if xz is enabled\"\n") "<CACn5sdQxv1xrLWNJi4eiS=mN3ZkXvaGQOzbNGw4HZqr3Dfg=Fw@mail.gmail.com>" ("<CACn5sdQxv1xrLWNJi4eiS=mN3ZkXvaGQOzbNGw4HZqr3Dfg=Fw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18175 invoked by uid 550); 2 Nov 2015 16:04:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18145 invoked from network); 2 Nov 2015 16:04:07 -0000
From: cve-assign@mitre.org
To: gustavo.grieco@gmail.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <CACn5sdQxv1xrLWNJi4eiS=mN3ZkXvaGQOzbNGw4HZqr3Dfg=Fw@mail.gmail.com>
Message-Id: <20151102160355.7C43352E039@smtpvbsrv1.mitre.org>
Date: Mon,  2 Nov 2015 11:03:55 -0500 (EST)
Subject: [oss-security] Re: CVE request: DoS in libxml2 if xz is enabled

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> We found a denegation of service parsing a specially crafted xml in libxml2
> if xz support is enabled. It affects version 2.9.1 and probably others.
> Find attached a xml that never finishes the parsing process:
> ...
> #0  0xb7f3e63c in xz_decomp (state=state@entry=0x8001cff0)

Use CVE-2015-8035.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWN4jAAAoJEL54rhJi8gl5/dMP/iQwWAw5fr+9kWkFCQEEfyM9
xznrHRmuygTKDSNMSFGuZ2wXbGzsakJNFke3BC6WqU8343CjoWbX7FinfR/NSqEN
HykMeCUlAuM7I19CA/8Ig1qBoS/46LUBNwMrRrmbfJyNn1mh52+96RBYISFmhF2/
hyEhGl+4zscCy+JRgZD0/77bNZR0fS1gxy3x6pXr5TN9MmxTONXEHk3Kg0u9jHAC
ve1pzE8DxzNTIi0vbI4MNGP0NezTFUNjhcCuxiiJUuqhNZ2wvkJAgCkxEQz6uvPP
XoOVuyu/+ytM4Z42wAId7aylgu7Zdp7Yx2Ej5PZLIYo8TDrrOp5dqRC83hdV1S0n
AU/VEFF7CqEDrX2W5Idjx9sbnAnVGcsBrVTZta5zkpaHZhtnjK/SeNKNKOgxc5F8
YRc/M/LasyHQBq/mK982h3iY2r82r7XN4tmkYayzXBtMEEXm1eRbS9eQx/je3bX+
I66BlEAaUdhqNhRU5Auyx27FIVuM7RnmU/7SKYWaB45H3X/b1Zr8Xpxvyd/LKqhG
TxtOuI3i7+d9gl13iX35jfxwSitdoIoNNU5JWftVOalHGITG+glsDq9PFBVB0Udl
E039za5WjF/R64p/uSoBgMvu4UqOE1DBks+h0VK0vzV/jV3VrUQb/b1qmjlSXzsN
gTz8OIpmOf6o/PZ8kHRe
=pFpx
-----END PGP SIGNATURE-----
