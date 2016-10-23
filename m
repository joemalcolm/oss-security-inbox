X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1431" "Saturday" "22" "October" "2016" "21:03:59" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20161023010359.42F65336005@smtpvbsrv1.mitre.org>" "34" "[oss-security] Re: jasper: memory allocation failure in jas_malloc (jas_malloc.c)" nil nil nil "10" "2016102301:03:59" "[oss-security] Re: jasper: memory allocation failure in jas_malloc (jas_malloc.c)" (number mark "U       cve-assign@m Oct 22   34/1431  " thread-indent "\"[oss-security] Re: jasper: memory allocation failure in jas_malloc (jas_malloc.c)\"\n") "<2510502.0NpgWQPfkR@blackgate>" ("<2510502.0NpgWQPfkR@blackgate>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27873 invoked by uid 550); 23 Oct 2016 01:04:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24297 invoked from network); 23 Oct 2016 01:04:10 -0000
From: cve-assign@mitre.org
To: ago@gentoo.org
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <2510502.0NpgWQPfkR@blackgate>
Message-Id: <20161023010359.42F65336005@smtpvbsrv1.mitre.org>
Date: Sat, 22 Oct 2016 21:03:59 -0400 (EDT)
Subject: [oss-security] Re: jasper: memory allocation failure in jas_malloc (jas_malloc.c)

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://blogs.gentoo.org/ago/2016/10/18/jasper-memory-allocation-failure-in-jas_malloc-jas_malloc-c
> 
> AddressSanitizer failed to allocate 0x1000002000 bytes of LargeMmapAllocator
> 
> 0x7f4f0474e170 in jas_malloc ... jasper-1.900.5/src/libjasper/base/jas_malloc.c:117:9
> 0x7f4f04764b4f in bmp_getinfo ... jasper-1.900.5/src/libjasper/bmp/bmp_dec.c:297:25

Use CVE-2016-8886.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYDAr6AAoJEHb/MwWLVhi2PDYP/1NmmhW+xfJZfBR9Ol7iijk4
VYpDfu7DCS8DO/QR2lZZBFJlzZnoe9gtjFgK24s2bj/W3zCwT2wtSzyw+8FLD9DZ
vWLYte57WNG/e992kUe+Oi0lyittYAz2SRCGGnBj71GE+1P47kx7+lFGAMpphBWC
syae4OB/mhZ9ynqmXIXejr4oV/OkowEwFfHcU57ph/p4KbaEZTlZohXiHE3v5kHy
69JHq0ICFpZU4v8WtuUAeDGYTNszTO+LYboO657EMciIYG5lUiIu2EjxvBn8Av+W
Jj1sg/m+jKMFuVjBv2luKnDU+ljzGyf8106PYFjwlb2ox+bd133hmFJyX0c0H6p/
VcbY9GOatGle6Mg00OQ+BpIsZ+EonJUc3KH7a+W6GzPAIoPUhaC3nJ5zrgClGVXT
3oW67lbGeRtEPRz0N+0y0lU38wOE0Zpfdo+3U15ggxvA/W/FPL+pN7KhH2DDMrmH
sOa/GPzV21eIBh9LVzWOOLV44gviAq7PBuTkt5vkerxV1T8u8JZLmCKgKwMuGPGF
sPZnkIlM/I01l1TriUZ372jkY2ytTSye3VTWP6KJAA1sonzf/6Rayj73/YIiO2eL
tbsMlHczFAWHzPQcF/CxCTbYjbVneqjF+0G5UupZcfO7+zeV3RDMp+sbq0Djw1f5
mKQTqhF8qFf6hiYaVlbf
=Cy/w
-----END PGP SIGNATURE-----
