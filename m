X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3171" "Thursday" "26" "November" "2015" "21:25:40" "+0100" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20151126212540.2e57f9e6@pc1>" "83" "[oss-security] Stack overflows and out of bounds read in dpkg (Debian)" nil nil nil "11" "2015112620:25:40" "[oss-security] Stack overflows and out of bounds read in dpkg (Debian)" (number mark "U       hanno@hboeck Nov 26   83/3171  " thread-indent "\"[oss-security] Stack overflows and out of bounds read in dpkg (Debian)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28096 invoked by uid 550); 26 Nov 2015 20:25:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28055 invoked from network); 26 Nov 2015 20:25:45 -0000
Date: Thu, 26 Nov 2015 21:25:40 +0100
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
To: oss-security <oss-security@lists.openwall.com>
Message-ID: <20151126212540.2e57f9e6@pc1>
X-Mailer: Claws Mail 3.13.0 (GTK+ 2.24.28; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512; protocol="application/pgp-signature"; boundary="=_zucker.schokokeks.org-25519-1448569533-0001-2"
Subject: [oss-security] Stack overflows and out of bounds read in dpkg (Debian)

--=_zucker.schokokeks.org-25519-1448569533-0001-2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

https://blog.fuzzing-project.org/30-Stack-overflows-and-out-of-bounds-read-=
in-dpkg-Debian.html

Two stack overflows and one stack out of bounds access were fixed in
dpkg, the package management tool from Debian.

A call to the function read_line didn't consider a trailing zero byte
in the target buffer and thus could cause a one byte stack overflow
with a zero byte. This issue was already fixed in the testing code when
I reported it, but the fix wasn't backported to stable yet.
https://anonscm.debian.org/cgit/dpkg/dpkg.git/commit/dpkg-deb/extract.c?id=
=3De65aa3db04eb908c9507d5d356a95cedb890814d
Git commit / fix
https://crashes.fuzzing-project.org/dpkg-stack-overflow-write-read_line-ext=
racthalf-133.deb
Minimal PoC file

A second almost identical stack overflow due to a call to the function
read_line was in the same file.
https://crashes.fuzzing-project.org/dpkg-stack-overflow-write-read_line-ext=
racthalf-248.deb
Minimal PoC file

https://web.nvd.nist.gov/view/vuln/detail?vulnId=3DCVE-2015-0860
These issues got the id CVE-2015-0860.

A stack out of bounds read can happen in the function
dpkg_ar_normalize_name. There is a read access to an array where the
index can have the value -1. A check if the index is a positive value
fixes this.
https://crashes.fuzzing-project.org/dpkg-stack-oob-read-dpkg_ar_normalize_n=
ame.deb
Minimal PoC file

All issues were found with the help of american fuzzy lop and address
sanitizer.

https://lists.debian.org/debian-security-announce/2015/msg00312.html
Debian has published the advisory DSA 3407-1. Fixes packages for both
stable (Jessie) and oldstable (Wheezy) have been published.

http://www.ubuntu.com/usn/usn-2820-1/
Ubuntu has published the advisory USN-2820-1. Fixed packages for Ubuntu
15.10, 15.04 and the LTS versions 14.04 and 12.04 have been published.

All users of Ubuntu, Debian and other dpkg/apt-based distributions
should update.

--=20
Hanno B=C3=B6ck
http://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: BBB51E42

--=_zucker.schokokeks.org-25519-1448569533-0001-2
Content-Type: application/pgp-signature
Content-Transfer-Encoding: 7bit
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJWV2rEAAoJEKWIAHK7tR5CPcwQAJ/PBowm1QOjk6HfJzifFi5q
vAlqFZCpuIvl1BI3Li/DvknrnS7n2kz0jOIXKFaDiSi7lrKCgoQ/PcgcBIkz4Jaj
FHNZtGUwZREIALXg2KEvrGmdBG20svbiO2YCtE3cGNYxaPpVXUxnWjInVWpExf4f
UGNSF6jyyQNQMJYn1sdVLdXkegWwZR+Qy8baGb8mifmkKh9sR+6sxdOfQsp2PgYK
8XwTy8bGinzejCDGV/SgjM4JM9D+2pFcyAQ894O/EfLeptR0FkIvoNFyyA6TQgyc
86w8gj6r+T+lRX9jqcAq0J8mK+BQ6eSf0kFHQYmujVO1jTsW14ISXAfERnZKeyI5
RFkRz8PofOYKhHk0ScPc8kFS6u+6SfjOpiemwK+tJWq+a1/tiqmzEVjdvV7TIToQ
jXDJ8w9JKoghw7IsUXjjmv3bRdDGTal3aLRXVNurgd7BAEYh1NL6tbfgy4kaabFY
/HyrpCr1MCxnktG16yI3fgyzlQ+OrchZzphT9f0mtJrROFd+OOc4YlHSpD8b0wat
t7NTjQ6WNmaWyBcrbbMqQo7ZJe0MDfZ/mxGW4ioxMnUl2k93sN7kfp+GFQ6g55ET
V3Ad1IUZkcl8aVcW8U6l4ll04QT3hn9xKhhcYW1S0MDvx6aeBL8MPTm5sGJlKCll
aq3YP0fZpVC7IiWq7XeU
=AeoZ
-----END PGP SIGNATURE-----

--=_zucker.schokokeks.org-25519-1448569533-0001-2--
