X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2449" "Monday" "14" "November" "2016" "20:45:51" "+0000" "Hector Marco" "hmarco@hmarco.org" "<88958a9e-25c1-97ce-1800-bc4bff93d9a9@hmarco.org>" "77" "[oss-security] CVE-2016-4484: - Cryptsetup Initrd root Shell" nil nil nil "11" "2016111420:45:51" "[oss-security] CVE-2016-4484: - Cryptsetup Initrd root Shell" (number mark "U       hmarco@hmarc Nov 14   77/2449  " thread-indent "\"[oss-security] CVE-2016-4484: - Cryptsetup Initrd root Shell\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20433 invoked by uid 550); 14 Nov 2016 20:49:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18415 invoked from network); 14 Nov 2016 20:46:07 -0000
X-Virus-Scanned: Debian amavisd-new at mfilter17-d.gandi.net
X-Originating-IP: 92.16.32.231
To: fulldisclosure@seclists.org,
 oss security list <oss-security@lists.openwall.com>,
 bugtraq@securityfocus.com
From: Hector Marco <hmarco@hmarco.org>
Message-ID: <88958a9e-25c1-97ce-1800-bc4bff93d9a9@hmarco.org>
Date: Mon, 14 Nov 2016 20:45:51 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.4.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="kqals4uPuqWG7BVPtEbcKEbgx9K91VBRI"
Subject: [oss-security] CVE-2016-4484: - Cryptsetup Initrd root Shell

--kqals4uPuqWG7BVPtEbcKEbgx9K91VBRI
Content-Type: multipart/mixed; boundary="PtFoJUpcgAUQBTdNRUdd3oGa8PSnNF7vB"
From: Hector Marco <hmarco@hmarco.org>
To: fulldisclosure@seclists.org,
 oss security list <oss-security@lists.openwall.com>,
 bugtraq@securityfocus.com
Message-ID: <88958a9e-25c1-97ce-1800-bc4bff93d9a9@hmarco.org>
Subject: CVE-2016-4484: - Cryptsetup Initrd root Shell

--PtFoJUpcgAUQBTdNRUdd3oGa8PSnNF7vB
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hello All,


Affected package
----------------
Cryptsetup <=3D 2:1


CVE-ID
------
CVE-2016-4484


Description
-----------
A vulnerability in Cryptsetup, concretely in the scripts that unlock the
system partition when the partition is ciphered using LUKS (Linux
Unified Key Setup).

This vulnerability allows to obtain a root initramfs shell on affected
systems. The vulnerability is very reliable because it doesn't depend on
specific systems or configurations. Attackers can copy, modify or
destroy the hard disc as well as set up the network to exflitrate data.

In cloud environments it is also possible to remotely exploit this
vulnerability without having "physical access."


Full description:
-----------------
http://hmarco.org/bugs/CVE-2016-4484/CVE-2016-4484_cryptsetup_initrd_shell.=
html


Regards,
Hector Marco & Ismael Ripoll.


--PtFoJUpcgAUQBTdNRUdd3oGa8PSnNF7vB--

--kqals4uPuqWG7BVPtEbcKEbgx9K91VBRI
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJYKiJ/AAoJEPjdiC0+ZMlG5e4P/0bZtixZEJS5mOwBWZ+PVWjf
Dk4vKH43nOxGRDAqBSsCadzvUWLu+g1ZJtThfY+Iki9dewGEeT0mdZTcXWkg/ILz
JIcObtrEr6EeQV87mcreNAmYBf4OTlxVbePC9AGI5OsYbkYgg+2DfeNOyq0ref3D
96I+2WLjFv5qXoqRB6gY0S0qETcZsm7J866Yuihl00PMjz+j2+rsxffI4WRafn0O
lkYKL3KO3slE4t+WgyYy4nY2mIuh5csifiqVwzcm7LawSTlUpTjoutswFXp0jKyj
W1Vpx0clYSZ0dEj/Ob2aYSF8167RD8KlsqN77IFPJNfW7gX7bYJUz6T9X/RWK2Jz
jb2xEH/0YMbbkwkzNM0TYkO/CLT86AQL5tOXfl7TBx4OgZe8pkXp+NcCK9sW9Jrz
0j1bfXc8LBQJsWYpyEYzCxz455v9mJaNAyGxLmWuSX7i+smNT3q6ZzL0+oOo9Nyl
1+maWcdEx6EaZLl6doPRpErVyM25XHoiKjj336d/DyC93v5e7fBkbkWgDc/3aNju
z9KWGOuMZNu8fjkRA2S5dRpvuB6llXYEb0Bzw9iOMjAW7AVGxNcaWJ/3BtI8VdSI
KvUTS9nAw4wEF9hN9uA3UVKT04mDEXUQ7MMrG6xJ6GBLX+Knm99hRihVbdWkY4Ca
JEpiM8WleT3OOg9YeLi8
=miOW
-----END PGP SIGNATURE-----

--kqals4uPuqWG7BVPtEbcKEbgx9K91VBRI--
