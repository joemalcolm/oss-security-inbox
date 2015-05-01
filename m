X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2152" "Friday" "1" "May" "2015" "21:34:05" "+0200" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20150501213405.2b2aca2a@pc1>" "55" "Re: [oss-security] On sanctioned MITMs" nil nil nil "5" "2015050119:34:05" "[oss-security] On sanctioned MITMs" (number mark "        hanno@hboeck May  1   55/2152  " thread-indent "\"Re: [oss-security] On sanctioned MITMs\"\n") "<20150501191522.GA18039@zoho.com>" ("<20150501191522.GA18039@zoho.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21764 invoked by uid 550); 1 May 2015 19:33:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21746 invoked from network); 1 May 2015 19:33:48 -0000
Message-ID: <20150501213405.2b2aca2a@pc1>
In-Reply-To: <20150501191522.GA18039@zoho.com>
References: <20150501191522.GA18039@zoho.com>
X-Mailer: Claws Mail 3.11.1 (GTK+ 2.24.27; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512; protocol="application/pgp-signature"; boundary="=_zucker.schokokeks.org-28092-1430508816-0001-2"
Cc: oss-security@lists.openwall.com
Date: Fri, 1 May 2015 21:34:05 +0200
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] On sanctioned MITMs
To: mancha <mancha1@zoho.com>

--=_zucker.schokokeks.org-28092-1430508816-0001-2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

My quick take on this:
It is very common that when you run any kind of IT infrastructure that
you outsource some technical parts to third parties. Your security
relies on the question how trustworthy these third parties are.

I don't see anything special here with outsourcing your server's TLS
handling. Or anything special about cloudflare. When you outsource IT
infrastructure you trust someone.

Just a thought experiment that has nothing to do with CDNs or TLS: Most
medium or small Web services don't have their own datacenters. They have
servers - either rented or their own - in a datacenter run by someone
else. With physical access to the machine basically you can own them
completely. There's almost nothing you can do to secure a machine where
non-trustworthy people have physical access.

So I don't deny there are potential problems. But I don't see them as
new or special.


--=20
Hanno B=C3=B6ck
http://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: BBB51E42

--=_zucker.schokokeks.org-28092-1430508816-0001-2
Content-Type: application/pgp-signature
Content-Transfer-Encoding: 7bit
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJVQ9UtAAoJEKWIAHK7tR5CS7kP/0082jTH3ZxI+l51aavvbrrr
VTz1vPu7rDvAVkBFfLdIQXaX3KKSEad23Zc80PCkH1YFKfmK/Uet7Pt3o1tT8TlN
IoLbMuwUBuoG/HwlLXB7GkmDVXUzfQb+vwBuQWIrNbHHQlXoOy2epryQWLFA//oO
ZUwNohkIBQnclRtC63Ktx8cHQ9qOWi+/Cc4ROI3h+YT9zfw78rTB8F2faf50QbvC
0QkFHT5sv1MjsqdUquXSZR4ulO0ybJuBqPBDbFDNt32Th/xL997WX7we2BngW6uN
dYeYFo/2l8AkKmISlFhIA2YbFd4FEiDdTjrVDzkeUmmy6h3W32zrXjsVidBFEl4p
g9s8uKfSb4eSekra5XhFTPx2f+B0EdOG3+SJH4kIluodKjSxn46XEQXsYJL5vDaI
W+4wpyS3gOajT3/k4udn2qPPqCFyby3ywlWvZSiFKLru9Ow7GtGLj5aVydr2KUno
ZOpIghpziujtA/ZOZ0SEk+KAF0GwVuqAqb5aw+RyKRfkcMTkEs7v+ElCvOytMUDH
NeghQjdcZajngeSrKHAS96NkQpIDs+uKZdALiHobdubmzdrrRu5S8tQCNoA3dRHD
4cv/dDg+A73jW+7g4W+hBA7c0enKvpluZvRKJYzKTV1EjVQ5WgmLoO+A/YjP2kks
vcslFUeHInJJc9cgOSzb
=ifMb
-----END PGP SIGNATURE-----

--=_zucker.schokokeks.org-28092-1430508816-0001-2--
