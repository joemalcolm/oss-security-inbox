X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1564" "Monday" "21" "November" "2016" "22:05:37" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<520fe7bf505c433392c547157534c5f6@imshyb02.MITRE.ORG>" "40" "[oss-security] Re: CVE request: LibTIFF tiffcrop: Heap buffer overflow via writeBufferToSeparateStrips" nil nil nil "11" "2016112203:05:37" "[oss-security] Re: CVE request: LibTIFF tiffcrop: Heap buffer overflow via writeBufferToSeparateStrips" (number mark "U       cve-assign@m Nov 21   40/1564  " thread-indent "\"[oss-security] Re: CVE request: LibTIFF tiffcrop: Heap buffer overflow via writeBufferToSeparateStrips\"\n") "<20161111205756.GC26873@tunkki>" ("<20161111205756.GC26873@tunkki>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27688 invoked by uid 550); 22 Nov 2016 03:05:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27670 invoked from network); 22 Nov 2016 03:05:50 -0000
From: <cve-assign@mitre.org>
To: <henri@nerv.fi>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
In-Reply-To: <20161111205756.GC26873@tunkki>
Message-ID: <520fe7bf505c433392c547157534c5f6@imshyb02.MITRE.ORG>
Date: Mon, 21 Nov 2016 22:05:37 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE request: LibTIFF tiffcrop: Heap buffer overflow via writeBufferToSeparateStrips

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> http://bugzilla.maptools.org/show_bug.cgi?id=2592
> 
>         * tools/tiffcrop.c: fix multiple uint32 overflows in
>         writeBufferToSeparateStrips(), writeBufferToContigTiles() and
>         writeBufferToSeparateTiles() that could cause heap buffer overflows.

>> Bug 2592 -
>> Summary:  Heap buffer overflow via writeBufferToSeparateStrips tiffcrop.c:1170

>> AddressSanitizer: heap-buffer-overflow
>> READ of size 223

Use CVE-2016-9532 for this integer overflow report with resultant
buffer over-read.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYM7WhAAoJEHb/MwWLVhi2CxIP/iBsAzZXlwVnlKsgeCs0sjc3
qG3xsKjFnuGmgOYwcFKcIUGVNT7B+Y6ilrAs5fXmS403ezZwmCNCXIRALITJKoTK
KVaUWTq0VEh5ntAHezJwMviREfl0+g3gX22yRJU6jsuW5l2xXvZWFKNMfAJvCnz/
x54Flhv2SawR1bKt7zlbxg40IivcQZuwIsL8ZestE00vBT/lMoEv2Z/xoDJGpbJM
V7fbvoR7UBcR6hqSoDi4D94y9Hsa6NC7PIfkL1ffGaIRyCIwegTwwyEB6WR/76I0
J/e0fDMicsTR4iTVrzGQNHGnj/cAmeTPGErQpIu5ndXKFbMQJfLjxyoUuWTFu2aN
GalgWMeVNv6crJH23eEjfPqqCSO9cU/9z2qQc6P5WYleKtRLlxRdoWllSJVZzeSw
+uy+1hdIseX18Y2pb14iG4iNSWPpbxUCPgsSS+izzqPc82rnKnTYGqJaDmsGN8oL
yquVr8ainyRe2s5fuPqAydsfBvfikuC88QYeTU6CjhNBYVj9yG0SgXSu3fb/d3KP
BKSvWHmKEAREkiu3M0e8Cby1x8E4sM3jCRTCUOcSuAU1tNB+o2CyR6+GLjpthBtH
XufZ1CLcjZNJzsdgH9urWZnH064SRvQ6qF9JJ6Ri/luTMz47IwjiuDv3NUxcafX8
6bGDLHQIyR2Tax1nHY7B
=pC5y
-----END PGP SIGNATURE-----
