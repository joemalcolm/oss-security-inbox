X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1476" "Friday" "2" "December" "2016" "13:07:34" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<5002229f1c1145cab231c07a2e1d43a2@imshyb02.MITRE.ORG>" "36" "[oss-security] Re: imagemagick: heap-based buffer overflow in IsPixelGray (pixel-accessor.h) (Incomplete fix for CVE-2016-9556)" nil nil nil "12" "2016120218:07:34" "[oss-security] Re: imagemagick: heap-based buffer overflow in IsPixelGray (pixel-accessor.h) (Incomplete fix for CVE-2016-9556)" (number mark "U       cve-assign@m Dec  2   36/1476  " thread-indent "\"[oss-security] Re: imagemagick: heap-based buffer overflow in IsPixelGray (pixel-accessor.h) (Incomplete fix for CVE-2016-9556)\"\n") "<61694157.NErDMq1P2B@arcadia>" ("<61694157.NErDMq1P2B@arcadia>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18272 invoked by uid 550); 2 Dec 2016 18:07:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18254 invoked from network); 2 Dec 2016 18:07:46 -0000
From: <cve-assign@mitre.org>
To: <ago@gentoo.org>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
In-Reply-To: <61694157.NErDMq1P2B@arcadia>
Message-ID: <5002229f1c1145cab231c07a2e1d43a2@imshyb02.MITRE.ORG>
Date: Fri, 2 Dec 2016 13:07:34 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: imagemagick: heap-based buffer overflow in IsPixelGray (pixel-accessor.h) (Incomplete fix for CVE-2016-9556)

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://blogs.gentoo.org/ago/2016/12/01/imagemagick-heap-based-buffer-overflow-in-ispixelgray-pixel-accessor-h-incomplete-fix-for-cve-2016-9556

> AddressSanitizer: heap-buffer-overflow
> READ of size 4
> 
>     #0 0x7f897b123266 in IsPixelGray 
>     ImageMagick-7.0.3-8/./MagickCore/pixel-accessor.h:507:30

Use CVE-2016-9773 for the vulnerability present in "an updated version
which includes the fix for CVE-2016-9556."

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYQbZTAAoJEHb/MwWLVhi23/0P/jjSc66cYiN9RO+COylm6tXV
eTJyErBTaBEPif0I/0OYuYrXP40EIgUGFjCBYuCWpTkMabqw1/aOaSSSIc5fXfAg
fuRpgddBCSmSsncTcivJGJw8mfRC7kRb9pxkmxcxRbC9JibW42OzFTo9Yzc0cpuE
HENOhxL7n26ZJw3dc+y+tGZUXynLARe/93DFkpw03twLFE8pqSffRdPTSveQb6j/
6GTuHdLYFmmqTFXVk3TGntbgQmKSFhodi6T5te9pTXdwSl336yAswbL7XSECXJeZ
mr2RWFxCP3r9pGFPIfSGuuO4N5dkOOM/x94G5JgqYO+BBxMMdTSqwuLKZYLnmPju
xYalu2woeXhb6I9LRiKVw6+kAGJTo3tTnhLk3P1p8gnYug5gcr6k1TP2RAvq8ydj
0S12k2FJDiTFFQob3HCf5fYXDxgLc955pFhA1oE8ojblBG8LMaLAiPNUYUfWaAae
VZ5v3awgaAltFCh8VwJfW7NOUWaDnd1eQfTnkYH0Wt0NDHcY5gjnRNyQePQKL9nU
WyBACf4E8s/nPcpQJaZvgv0eiv0ncNGt2+ooXFo20BU72xu9xzXDq/HMMu2LIIL7
X5Gh8NtWwRuT0Bsrs61cfL3oFoK91AexniJQQPyfzrSEfT81yi1YtmBkSoVZ8Zvw
j9xoQMSMPUgvGv2afIGM
=oclT
-----END PGP SIGNATURE-----
