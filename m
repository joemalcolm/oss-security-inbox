X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1264" "Sunday" "4" "December" "2016" "22:12:18" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<4fd7625ebd8d44e5a39e6cf241e12421@imshyb02.MITRE.ORG>" "32" "[oss-security] Re: libming: listswf: heap-based buffer overflow in _iprintf (outputtxt.c)" nil nil nil "12" "2016120503:12:18" "[oss-security] Re: libming: listswf: heap-based buffer overflow in _iprintf (outputtxt.c)" (number mark "U       cve-assign@m Dec  4   32/1264  " thread-indent "\"[oss-security] Re: libming: listswf: heap-based buffer overflow in _iprintf (outputtxt.c)\"\n") "<2076188.WoL3bP8qxZ@arcadia>" ("<2076188.WoL3bP8qxZ@arcadia>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23792 invoked by uid 550); 5 Dec 2016 03:12:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23767 invoked from network); 5 Dec 2016 03:12:30 -0000
From: <cve-assign@mitre.org>
To: <ago@gentoo.org>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
In-Reply-To: <2076188.WoL3bP8qxZ@arcadia>
Message-ID: <4fd7625ebd8d44e5a39e6cf241e12421@imshyb02.MITRE.ORG>
Date: Sun, 4 Dec 2016 22:12:18 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: libming: listswf: heap-based buffer overflow in _iprintf (outputtxt.c)

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://blogs.gentoo.org/ago/2016/12/01/libming-listswf-heap-based-buffer-overflow-in-_iprintf-outputtxt-c

> AddressSanitizer: heap-buffer-overflow
> READ of size 2

Use CVE-2016-9827 for this buffer over-read.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYRNjHAAoJEHb/MwWLVhi2szoP/2HNdfDuYTk2tUOma5Uavxkg
fXUl7wnGcKLBJCAtJNw5Qnl4l1AE2Hirrpmfsvbid9hHNCJ8njCtdDwqHXL6IT+H
ft+XV1aqETr7IkVgC2Wg6x2ZptrFDT5Lab7iNJylDek2iSdT4oscAthjlVCJZcR5
b9MjXSih+vrsY7MxPkrcn7ZXQwWgM6nBReCpf1gZBc81l7K4ejzGBK0Xc2c6v4/Q
JxBaY2VxsxX52w842CckemTQvM5Yy7BUCdmXFqfw2dy5stTvM/OouFgqSwBqiR3Q
/AGXqZ2rIK1XoRVLtohlWUuIeIvVv9OkXNp1qM7L/QKFqURkzieOqzlo4Do97a6e
13iK8psRtMphfjjCpenjC+gujgAssqdXRDQ7cskcIB+sYwjmGoF97tJZ2OJtgQk0
TJlW0b/GokrKaeyJdYr2LSlqx+WKcrawOXDbiHAnNpZrswjKCjEbkIsGWMnGt391
aYVYegERbjlh+KpxurB5Gyocn/EVi9TczWn8TVBZYWyBSmK/ABpv7s5guZHalhH7
kAOHNI+iMaOcFvDeAG8K0oGNfNoY/oCAJa3USh3Qq/O+S9KUa+2k4sVHLyL6cCMa
Q0bCcVs5PmYATknEgTOBX9QzRqkQyhpnFB6wgEXeZPZmLf+8f29jWnOk8zQYm+M1
20ErSFbyOcSIXrnF+S4q
=6lQs
-----END PGP SIGNATURE-----
