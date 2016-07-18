X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2069" "Monday" "18" "July" "2016" "20:53:51" "+0200" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20160718205351.658cc486@pc1>" "59" "[oss-security] libupnp write files via POST" nil nil nil "7" "2016071818:53:51" "[oss-security] libupnp write files via POST" (number mark "U       hanno@hboeck Jul 18   59/2069  " thread-indent "\"[oss-security] libupnp write files via POST\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3678 invoked by uid 550); 18 Jul 2016 18:54:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3578 invoked from network); 18 Jul 2016 18:54:07 -0000
Date: Mon, 18 Jul 2016 20:53:51 +0200
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
To: oss-security@lists.openwall.com, cve-assign@mitre.org
Message-ID: <20160718205351.658cc486@pc1>
X-Mailer: Claws Mail 3.13.2 (GTK+ 2.24.30; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512; protocol="application/pgp-signature"; boundary="=_zucker.schokokeks.org-21627-1468868035-0001-2"
Subject: [oss-security] libupnp write files via POST

--=_zucker.schokokeks.org-21627-1468868035-0001-2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

Wanted to point out this report by Matthew Garret (not sure if there's
anything else than a couple of tweets public):
https://twitter.com/mjg59/status/755062278513319936

Notable:
"Reported this to upstream 8 months ago without response, so: libupnp's
default behaviour allows anyone to write to your filesystem"
"Seriously. Find a device running a libupnp based server (Shodan says
there's rather a lot), and POST a file to /testfile. Then GET /testfile"
"=E2=80=A6and yeah if the server is running as root (it is) and is using / =
as
the web root (probably not, but maybe) this gives full host fs access"

And later on:
"Emailed the Debian security team a couple of months ago, no response"

Not good...

Patch:
https://github.com/mjg59/pupnp-code/commit/be0a01bdb83395d9f3a5ea09c1308a4f=
1a972cbd

--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: BBB51E42

--=_zucker.schokokeks.org-21627-1468868035-0001-2
Content-Type: application/pgp-signature
Content-Transfer-Encoding: 7bit
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJXjSW/AAoJEKWIAHK7tR5CsdkQAIGo/2gNwF2mWdbm7x9xnrk4
YUVziram+5mskKi3Cq0RB450vLW9cTtGNF1ShCnLAFI38eoe6T+TI077oX6UEMVZ
vHMw2jl0Q64YpdDhqZStkTqNBRVrNj67XA096LELdjgW6pMOURq3DkuKJqigtqpD
Ap56aphC1Eb36xzjp+y1AeUzBfbMZLGqwrxZcI4FjQERVO33Yd47Py3EDuIz+6h1
9Tcz3FTg01386y+Nf84+yD2BbOJZtbkBW2z+jIJX6Emw6HeKKrXQWQXi0f46FwyA
5wEnQEIXR4ARWl3AGexIS3xjo952fPBdwtGoccC/wPhV/xFBXAd5YG5YJGH7fVU4
vEd0ES3e7D/4D3bcfbqAvsWLTtBiBR8Lzy+2x2OC81YVIE+n0IDGYm1OfnCK+ryz
rr8yLjUUYlM0yalflIANowXpxh8F2gAJsQdLi3kxZsE9cX9IsgkwJSx5hQZwYGsh
vreb5ByCVVDnV7roIR3Q8A1c6150f3rF9+zLjJRlss+kH9/i3/TX4yAM3LdfoRlg
FHmycQUZmruxXahsqD4xVOb3X2MEyBTJtiLWJMzQBnQ0UaAPtMJfbH8J0T4jLz4d
SY/lJjmEKY5oGwfHXbbAjlGy/hiAVOAthCUzQ7in+ut8kHAvmQ5jTLbRFLNTdBmH
J7sq869TXRwa0+kOkR1M
=W6hi
-----END PGP SIGNATURE-----

--=_zucker.schokokeks.org-21627-1468868035-0001-2--
