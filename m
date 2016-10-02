X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1302" "Sunday" "2" "October" "2016" "11:45:41" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20161002154541.522FC6CC0E3@smtpvmsrv1.mitre.org>" "35" "[oss-security] Re: imagemagick mogrify use after free" nil nil nil "10" "2016100215:45:41" "[oss-security] Re: imagemagick mogrify use after free" (number mark "U       cve-assign@m Oct  2   35/1302  " thread-indent "\"[oss-security] Re: imagemagick mogrify use after free\"\n") "<CAFkTriKAFZKb2_5V8xtyJJQ-DaaY4XimBkZvneRD3wXYMxjnmA@mail.gmail.com>" ("<CAFkTriKAFZKb2_5V8xtyJJQ-DaaY4XimBkZvneRD3wXYMxjnmA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26044 invoked by uid 550); 2 Oct 2016 15:45:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26018 invoked from network); 2 Oct 2016 15:45:53 -0000
From: cve-assign@mitre.org
To: marco.gra@gmail.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <CAFkTriKAFZKb2_5V8xtyJJQ-DaaY4XimBkZvneRD3wXYMxjnmA@mail.gmail.com>
Message-Id: <20161002154541.522FC6CC0E3@smtpvmsrv1.mitre.org>
Date: Sun,  2 Oct 2016 11:45:41 -0400 (EDT)
Subject: [oss-security] Re: imagemagick mogrify use after free

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://github.com/ImageMagick/ImageMagick/issues/281
> https://github.com/ImageMagick/ImageMagick/commit/d63a3c5729df59f183e9e110d5d8385d17caaad0

>> AddressSanitizer: heap-use-after-free
>> READ of size 4

>> magick/attribute.c

Use CVE-2016-7906.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJX8SsRAAoJEHb/MwWLVhi2lOoP/3hkMq06zT1dP90mnGALwTqX
nwKllShGOAfGlGdtJi7LiE+CeSfgXcyMOc666VG26dQb19Aj6moFemWIEZ4GVC5v
WNNGrSVRJvZAlW1LEN1tVwenv4kuevJI5KhoPRWXmUYkbsxdRwKS8pkPKyoYvs5v
c5ttxtdooyvRky2YvRReJ6Qgci0A61D3w8j47qC7yMcI3LJhX0us9WbWTnaLG7x8
ZF+DqtLBUcAgc08RTw1nUUDqxVNeGLAwnu8Ak+f5GQCudd9g570wXjL0UPznLOnC
Wz4fAFfU5NSayq3S/GiileILeDTHJ79ObkOiC9WIjltoRn8iercvs/6tXpvMAWFo
J2WlfitHrepRrK3R517kpnxSTmJyYU6pEu1DtA10DjHo0KFYOLy0+D/N6r8IufNj
mNCKPgtJO6JdNsHrhNBC/dYxkB/3QiGOWayF3dK/MxhD8irfr7gR2w5q2PfTAn+/
dJ4MLvZl+nMPh6Hb7gtIWHHVmryJtoVCwSJIEO3JpNvVnViyGw9iRhRutdDL5rbK
0JEz/2wJ0eDXJ9J/fI+K1Z/Dcc9rgXBeTuAdirkuJWnAd/6ngChoJYHKd0lAIFzT
tyP+64xEg+XYbG7Cj3MrXrQjaDJdGW/b9uW5rwqgqduWEXvUQS91O/r3CERu6cLu
7dpxAcUqkCcF0KlNm7HU
=C5KK
-----END PGP SIGNATURE-----
