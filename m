X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2475" "Wednesday" "17" "June" "2015" "19:26:49" "-0400" "Giancarlo Canales" "gcanalesb@me.com" "<9F15CD0F-3D8D-4987-BB87-BAE3D4F728C1@me.com>" "70" "[oss-security] Possible CVE Request: Multiple stack overflows in squashfs-tools and sasquatch" nil nil nil "6" "2015061723:26:49" "[oss-security] Possible CVE Request: Multiple stack overflows in squashfs-tools and sasquatch" (number mark "        gcanalesb@me Jun 17   70/2475  " thread-indent "\"[oss-security] Possible CVE Request: Multiple stack overflows in squashfs-tools and sasquatch\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13597 invoked by uid 550); 17 Jun 2015 23:27:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13575 invoked from network); 17 Jun 2015 23:27:04 -0000
X-Proofpoint-Virus-Version: vendor=fsecure
 engine=2.50.10432:5.14.151,1.0.33,0.0.0000
 definitions=2015-06-17_08:2015-06-16,2015-06-17,1970-01-01 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 suspectscore=3 phishscore=0 adultscore=0 bulkscore=0 classifier=spam adjust=0
 reason=mlx scancount=1 engine=7.0.1-1412110000 definitions=main-1506170393
X-Pgp-Agent: GPGMail 2.5
Content-type: multipart/signed;
 boundary="Apple-Mail=_0552C85C-D8B0-4E62-8C3F-3B370BA17C89";
 protocol="application/pgp-signature"; micalg=pgp-sha512
Message-id: <9F15CD0F-3D8D-4987-BB87-BAE3D4F728C1@me.com>
MIME-version: 1.0 (Mac OS X Mail 8.2 \(2098\))
X-Mailer: Apple Mail (2.2098)
Cc: cve-assign@mitre.org
Date: Wed, 17 Jun 2015 19:26:49 -0400
From: Giancarlo Canales <gcanalesb@me.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Possible CVE Request: Multiple stack overflows in squashfs-tools and
 sasquatch
To: oss-security@lists.openwall.com

--Apple-Mail=_0552C85C-D8B0-4E62-8C3F-3B370BA17C89
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

I recently discovered several highly similar stack overflow weakness in squ=
ashfs-tools and sasquatch.
This issue has already been made public to both projects, with recommendati=
ons on how to fix them, but a fix has not been released by the project main=
tainers.

Sasquatch is an experimental fork of squashfs-tools.
Squashfs-tools is present in the repositories of Debian, CentOS, and other =
Linux distributions.

The vulnerability can be exploited by using the unsquashfs command to unpac=
k a malicious squashfs image that causes a stack overflow in an unchecked v=
ariable length array.
Thereafter, a function that copies data from the squashfs image to the over=
flown array is executed.

I=E2=80=99m requesting a CVE number for this vulnerability,  per project.

Title: Stack overflows in squash-fs
Products: squash-fs
Affects: All versions
Type: Stack overflow
First CVE ID Request: Yes

Title: Stack overflows in sasquatch
Products: sasquatch
Affects: All versions
Type: Stack overflow
First CVE ID Request: Yes

Fore information about the stack overflow, please visit:
https://github.com/devttys0/sasquatch/pull/5

Thanks in advance,


Giancarlo Canales Barreto

--Apple-Mail=_0552C85C-D8B0-4E62-8C3F-3B370BA17C89
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iQIcBAEBCgAGBQJVggI6AAoJEMV5zjTxRIlLNhAP/Rljd/wnvAxe0XwJFJGoTTbv
KipdrlEcf3NwvVvAWz4KVlULR44JrGXVNllyYT9FTIYfd7J1DvwPD5fdkzyoAl1X
FRGcsPFZPhWSeYpF1gCXz8GSyzcIQmD9aMfhs0ZFn11JJXSjoMzdVm175H0Ppu1Q
hlzWFYcE+/u6mGbkna0zVO8/OZh0jgELgZ3fEb69dp0MMgCsxH4+eJ4oO+SvgfuL
Y+QLxki3wQ4rFs2C35Wz4vrSIjws/a0bksY/LPoVdyV5X7ngGOHOTLc0qwqJSoda
Q6WQE1AcJEFiW/CpvvWoCwUTROnAy6dUshgAEFJtPccsejijIvR9Sq0Y/NS1vbiS
+lLgDFDlvBtiKNmX5b/CO0utChjO+svdKSj4FZASJyqhXcNaZnH+QBpC0+H+WViF
a/QYUQAFxK2xSo4hT1U1puJkBxKkzYYlGzwvOvHaH4+N1ob8Cvz/uJJ16PzdvUx2
GvAnwQtbfsyCTB8EnKxrAs07a7EiqljHQ+QPEXRMoWBXAAkMOcDyGgRgA7XS2Q5b
z5t8/DdTQBM49E9ORSXJ6i2j2CdjhwMeXzIxq+qauyBkuA7ltKm8aHdGXokMQyVz
/yWntURRSS5Q6QuTGq7wNR82s98b/Z4TiCvaeKHR6bjSWGb6GxiVItGxnJC/QKOp
wQprH34x50ZJdcUDDWKe
=bJ4N
-----END PGP SIGNATURE-----

--Apple-Mail=_0552C85C-D8B0-4E62-8C3F-3B370BA17C89--
