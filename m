X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3453" "Wednesday" "11" "May" "2016" "12:01:19" "+0200" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20160511120119.056ad3c2@pc1>" "83" "[oss-security] ImageMagick heap overflow and out of bounds read" "^Cc:" nil nil "5" "2016051110:01:19" "[oss-security] ImageMagick heap overflow and out of bounds read" (number mark "        hanno@hboeck May 11   83/3453  " thread-indent "\"[oss-security] ImageMagick heap overflow and out of bounds read\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 27696 invoked by uid 550); 11 May 2016 10:01:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 27678 invoked from network); 11 May 2016 10:01:32 -0000
Message-ID: <20160511120119.056ad3c2@pc1>
X-Mailer: Claws Mail 3.13.2 (GTK+ 2.24.30; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512; protocol="application/pgp-signature"; boundary="=_zucker.schokokeks.org-9194-1462960882-0001-2"
Cc: cve-assign@mitre.org
Date: Wed, 11 May 2016 12:01:19 +0200
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] ImageMagick heap overflow and out of bounds read
To: oss-security@lists.openwall.com

--=_zucker.schokokeks.org-9194-1462960882-0001-2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

https://blog.fuzzing-project.org/45-ImageMagick-heap-overflow-and-out-of-bo=
unds-read.html

Recently the ImageTragick vulnerability shed some light on the security
status of ImageMagick.

This made me wonder how resilient to fuzzing ImageMagick is these days.
It's pretty much a posterchild example for a good fuzzing target: Lots
of supported complex binary file formats.

I already did some fuzzing on ImageMagick, but as far as I remember
that was before I used american fuzzy lop and was done with zzuf. I was
also aware that others did some more thorough fuzzing on ImageMagick.
http://www.openwall.com/lists/oss-security/2014/12/24/1

What I did now was relatively simple: I took a trivial, few pixels PNG
and used ImageMagick's "convert" tool to convert it into all file
formats that have both read and write support in ImageMagick. I used
that to run a fuzzing job with afl and asan. By design ImageMagick will
sometimes do huge memory allocations, these can be prevented by setting
limits for the width, height and memory usage in the policy.xml file.

I discovered one heap buffer overflow in the PICT parser and one heap
out of bounds read in the PSD parser. Given how big the attack surface
is this is not terrible, but it shows that despite previous efforts
there's still potential to fuzz ImageMagick.

https://crashes.fuzzing-project.org/imagemagick-heapoverflow-WritePixelCach=
ePixels.pict
Sample file for heap buffer overflow in WritePixelCachePixels() (PICT
format)
https://github.com/ImageMagick/ImageMagick/commit/cfbe890d0cfcd5d3b0f63744a=
6901e40e992e07c
Git commit / fix

https://crashes.fuzzing-project.org/imagemagick-oob-heap-read-PushShortPixe=
l.psd
Sample file for heap out of bounds read in PushShortPixel() (PSD format)
https://github.com/ImageMagick/ImageMagick/commit/15dd190dfd7e7a3341bdc378f=
4f0daba9873322c
Git commit / fix

https://www.imagemagick.org/script/changelog.php
Both issues have been fixed in the versions 6.9.4-0 and 7.0.1-2. In the
meantime new versions (6.9.4-1, 7.0.1-3) came out that, as far as I
understand the ChangeLog, remove another potential vector for the
ImageTragick vulnerabilities, so you should preferrably update to those.

--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: BBB51E42

--=_zucker.schokokeks.org-9194-1462960882-0001-2
Content-Type: application/pgp-signature
Content-Transfer-Encoding: 7bit
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJXMwLvAAoJEKWIAHK7tR5CnUAP/Ap4WNUQ+uULgmOnHYaIWrBa
+BcOMMQiumYAjcW3uIpWcX9ED3UqoRzRVDWF7jmSU+3B/jhUBbvNLz9jcgIuT8+y
W7r9BynTDug92XO95lecg5mkv5yY9DEkb5+PxrN4GjM7I8OL7WOQlbg6ozMwiu+P
czbX0TRlaxIBbkqcWy5LU6F5LTtgQ/dX5JZW0xaGhd2E4fa4l8bLrMWkfzMy5Vk7
gWJllN944WG7ShtTsvUW52UWgnjuB1sPmWqg03rlPTeneGyo6AUFL1IqalPaukXW
l4KJp8asJ7BO2mdL4kf2r3KvhEnuRYY7Ufs7PWiyIrURXSSwgMHlkMy+iNdaC1ga
iRNJ5M3um/zv6clrCtKdMslQRPB/2cTZzGgKtBenM7ImyGbdG2oDzbofilHlBuhd
bZGOUvUe2H23mavJN0oZeS0h4xjcWFhP4o/gJHraTUk3F+DWk/qIrYTNQlUvxLWz
RWGZOgrMIkHs/foF9AAy1M/gz1NHTNhObdCjuq6evuyiA+n7YX6VYPqEhHIlmOau
z46c95ZSIZnL9LMwrvxi0/E/UTEmpJY8a3VMnnkwFStxs0SGB1G/uDEM5F3VY6SL
/oEXcy2ooOaHcK+tOxmVQpczRhdLnOwctlom5APhwy0ohDAk3pZ+1e90YFEzXPgt
7Gioe7H0uhlZ7UJfVOfF
=9Or9
-----END PGP SIGNATURE-----

--=_zucker.schokokeks.org-9194-1462960882-0001-2--
