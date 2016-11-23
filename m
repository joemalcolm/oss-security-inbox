X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1514" "Tuesday" "22" "November" "2016" "19:14:03" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<34405e1f08734a7fb48464fb06a54bc6@imshyb02.MITRE.ORG>" "39" "[oss-security] Re: imagemagick: heap-based buffer overflow in IsPixelGray (pixel-accessor.h)" nil nil nil "11" "2016112300:14:03" "[oss-security] Re: imagemagick: heap-based buffer overflow in IsPixelGray (pixel-accessor.h)" (number mark "U       cve-assign@m Nov 22   39/1514  " thread-indent "\"[oss-security] Re: imagemagick: heap-based buffer overflow in IsPixelGray (pixel-accessor.h)\"\n") "<17230619.a7QXZHqGJY@arcadia>" ("<17230619.a7QXZHqGJY@arcadia>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7645 invoked by uid 550); 23 Nov 2016 00:14:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7615 invoked from network); 23 Nov 2016 00:14:15 -0000
From: <cve-assign@mitre.org>
To: <ago@gentoo.org>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
In-Reply-To: <17230619.a7QXZHqGJY@arcadia>
Message-ID: <34405e1f08734a7fb48464fb06a54bc6@imshyb02.MITRE.ORG>
Date: Tue, 22 Nov 2016 19:14:03 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: imagemagick: heap-based buffer overflow in IsPixelGray (pixel-accessor.h)

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://blogs.gentoo.org/ago/2016/11/19/imagemagick-heap-based-buffer-overflow-in-ispixelgray-pixel-accessor-h

> ImageMagick-7.0.3-6/./MagickCore/pixel-accessor.h:507:30
> imagemagick-7.0.3.6/work/ImageMagick-7.0.3-6/MagickCore/attribute.c:677

> AddressSanitizer: heap-buffer-overflow
> READ of size 4

> https://github.com/ImageMagick/ImageMagick/commit/ce98a7acbcfca7f0a178f4b1e7b957e419e0cc99
> 
> coders/sgi.c

Use CVE-2016-9556 for this buffer over-read.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYNN5eAAoJEHb/MwWLVhi2c/EP/iCKNHI2pUBD95pymlj+Fkt2
JJOJzfWG2KSFsFT0jjfIfEg0DCyD+0gjlUe/QEboA57lKMHx1Bu/xKvyGrpoaI86
T3utbgSUF3ZwYaNGySIMpVG96Fdtp8dfJWEMSBSw3deOVCjAFHqExRbOiIQwkaDD
rvS2SzFNa3H/tmhPyrTiTUwmjV+pnG81YvwKJhkxapLyPbROBuI0QuGmm7hv7kzF
ADJI3WVzW3d2N5xU+HFg5sQgmH0dwybwWD/KkzpYJ1daTq53mdOaOW2c/qjhWbk7
wukuNqT8PhNxLLpNRMaZCNKIHdBD+RCh9Oi/zQwXHpSkJ7EgfW/LRCx1OIuXrGBD
gWMbm6KqI13DvbV6ct9elpr54/dZ8zklNrar++PsDRksmwFLiz1mBbzdAPJiTVKT
gNEjqSkM1wqPlFQO/pWAwJU0Ja7bLQg5XUE5gfrl1pFNMqBJ54IzdJUnKXNw64lc
u72Aa3tZ+XKN902zpbqaVb+9PHqL/FFVYCfd64l0CRkEToPP9OIg10sCL9VEVeEw
eyDDYR8jIEVu3ilvm/ieQsb5ZVkhPvkWlGwhaJRzG89U9D5j9S4qrOIk5CXPnJ82
Z8bXCzxAX7ebnRstDbz5lOJ1Lb6ahvmboHuxs4VoEryN+9fdmWCKVYTVRNRi8oAd
ER7izj3MLcjre+i4Oifq
=irqB
-----END PGP SIGNATURE-----
