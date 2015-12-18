X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2295" "Friday" "18" "December" "2015" "01:00:19" "+0100" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20151218010019.37009bbd@pc1>" "56" "[oss-security] Out of bounds read in OpenVPN before 2.3.9" nil nil nil "12" "2015121800:00:19" "[oss-security] Out of bounds read in OpenVPN before 2.3.9" (number mark "U       hanno@hboeck Dec 18   56/2295  " thread-indent "\"[oss-security] Out of bounds read in OpenVPN before 2.3.9\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17596 invoked by uid 550); 18 Dec 2015 00:00:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17547 invoked from network); 18 Dec 2015 00:00:11 -0000
Date: Fri, 18 Dec 2015 01:00:19 +0100
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
Message-ID: <20151218010019.37009bbd@pc1>
X-Mailer: Claws Mail 3.13.0 (GTK+ 2.24.29; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512; protocol="application/pgp-signature"; boundary="=_zucker.schokokeks.org-30589-1450396799-0001-2"
Subject: [oss-security] Out of bounds read in OpenVPN before 2.3.9

--=_zucker.schokokeks.org-30589-1450396799-0001-2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

https://blog.fuzzing-project.org/32-Out-of-bounds-read-in-OpenVPN.html

OpenVPN versions before 2.3.9 contain an out of bounds read error. The
bug happens in the function resolve_remote() in the file socket.c.

I reported this bug to the OpenVPN security team on December 6th. I was
informed that this was already reported to them previously and fixed in
the repository. The new release 2.3.9 fixes this. The current git head
code of OpenVPN has this code part completely reworked, it is thus not
affected.
http://permalink.gmane.org/gmane.network.openvpn.devel/10479
https://community.openvpn.net/openvpn/wiki/ChangesInOpenvpn23#OpenVPN2.3.9

The reason for this bug is that for both IPv4 and IPv6 connections
OpenVPN will read a struct sockaddr_in6, but in the IPv4 case the data
structure is smaller than in the IPv6 case. The bug was found by trying
to run OpenVPN with Address Sanitizer.

I don't know whether this is in any way exploitable, but as OpenVPN is
a security sensitive software I found it worthy to make it public.

--=20
Hanno B=C3=B6ck
http://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: BBB51E42

--=_zucker.schokokeks.org-30589-1450396799-0001-2
Content-Type: application/pgp-signature
Content-Transfer-Encoding: 7bit
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJWc0yTAAoJEKWIAHK7tR5CQVwP+wde+Fp46vjoaTOMdRMLWf+5
RZ7uSIiSukgw9dDLimYUVparxyT1WCy1tfXmGc5Ep9qtPaxtsDFmTWXI4ATt0GRp
ua1gmzfsrORy4PjairO2OyAcpzAs4K/xb5tE7jxur42DP1r4+Qye2OmcjHkMS/ET
V9ihffNPm8sMKvrpjYgicGDY69acChg2AX/6ba+UKYq3QLPTvRykY2pAK1mcYuLq
nkV8VTAoITf890xnUEO7117WiFYNskegEPm5XrDTc3VMhOshv7aFWjpmA84Q+WCc
tRohJdz5ArWmD/4ehzlbVtuRVNaNBDSYRgg0rQ5hgxWtPZWYVxQV0vKp2Cq9J+9A
2P8kxa4O+Fna3xR3WwFCnAxnzCo+/g65CNB9x5Lt/3LIZ8YqbYCpJvf0Hs8WHfGn
R9nV18Pa1vCs1cr1fl/OfP8kw5GYR78m5exnvHfr/j0BQxwiusotRmII8Jokm7dK
yxBZdgHYEgRd4vLT5ag3aUVeY1+h1eZNhI+RA9iwTWDOIds5YbkBsNS10y8i6fSY
WySaOlsvBMR9wn//diDc2iEtSJULtnkzXU4+QhEl9dHaefd8uDKYfRWIZxZGHD6d
Y5xNfySWsbvA0HR/5kgmtMjc4qzYainAMuHwlvpiWdydnotr5swzxFyyHhDcfA0B
MjDEnKGzSx0twr2kyA1O
=aR8R
-----END PGP SIGNATURE-----

--=_zucker.schokokeks.org-30589-1450396799-0001-2--
