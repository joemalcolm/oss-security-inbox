X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1652" "Wednesday" "23" "December" "2015" "17:59:17" "+0100" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20151223175917.722a720a@pc1>" "45" "[oss-security] Use after free in nghttp2" nil nil nil "12" "2015122316:59:17" "[oss-security] Use after free in nghttp2" (number mark "U       hanno@hboeck Dec 23   45/1652  " thread-indent "\"[oss-security] Use after free in nghttp2\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 10104 invoked by uid 550); 23 Dec 2015 16:59:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 10063 invoked from network); 23 Dec 2015 16:59:05 -0000
Date: Wed, 23 Dec 2015 17:59:17 +0100
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
To: oss-security@lists.openwall.com, cve-assign@mitre.org
Message-ID: <20151223175917.722a720a@pc1>
X-Mailer: Claws Mail 3.13.1 (GTK+ 2.24.29; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512; protocol="application/pgp-signature"; boundary="=_zucker.schokokeks.org-23795-1450889933-0001-2"
Subject: [oss-security] Use after free in nghttp2

--=_zucker.schokokeks.org-23795-1450889933-0001-2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

https://nghttp2.org/blog/2015/12/23/nghttp2-v1-6-0/

Quote from release announcement:
"This release fixes heap-use-after-free bug in idle stream handling
code. We strongly recommend to upgrade the older installation to this
latest version as soon as possible."

Given nghttp2 is used for many (most?) http2 deployments and these
become more and more common I think this is rather serious.

--=20
Hanno B=C3=B6ck
http://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: BBB51E42

--=_zucker.schokokeks.org-23795-1450889933-0001-2
Content-Type: application/pgp-signature
Content-Transfer-Encoding: 7bit
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJWetLlAAoJEKWIAHK7tR5C+T8QALkdifxeGNAvFAzDrTxGbQhA
LoOeehWeuw3WqKFwJbgXUjmGEF7u1gbJJWrcTfXyZ8tDKzrICFRQF/zzw6AaWkec
JtSUKFUSpIcxTgxtgLLMBCIaNAFOWja6wYhKr0KRAcBmvgbQpqgSRDAavBQHWsDy
ftZOWtaN64pjWN15RXGEZ8ezI0Z7YMFPgTJSjgqKJ988lztQZmr+Ek4XUdXkyPT3
oSQP64UyeXMmZVYi1kDwOqEeYXcvyDDONAo5y9MijcawEi1KjBjIRrafNDZqD+xR
Inz9qD3UIMzVf6JZ3zaPBtg2+amlFHljSIgz8N79vsEJMC96CZQDjREhZcydwBaX
TEwzdFcMWCySJ/5Een3PlQJ1/nN6bc/Q3Huybh9skyfXFs2eEkxWLuZ54NQDm9ux
k381hAOpldFHdK3f92u4ycevmCJrptqns9JYE2FApGFLrGwPUTQwfSwkaYuRBKnq
gQLHSgu+XUa6/eCQK+BsYxIBYlxlK+UfwwwbhBbBBA9Q5d4h2wKuVupp5imUhfkK
KDXjWJ/DIxWAgxFSqJGdQ6JGtpMqGIOmn+I2EnFCCYIGN+S2XPBL3pLXjazI7hza
Op/xhMA0QJ8eG/L5+9NREXrfuVtIuNGXZScxe5dRRQhKenEI9h9D5ZKwTDTkhr/A
v9UYZVvWGlGw2q3oQArg
=fMk+
-----END PGP SIGNATURE-----

--=_zucker.schokokeks.org-23795-1450889933-0001-2--
