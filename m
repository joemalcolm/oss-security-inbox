X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1983" "Wednesday" "2" "November" "2016" "13:52:41" "+0100" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20161102135241.20a8c3c4@pc1>" "54" "Re: [oss-security] [SECURITY ADVISORY] IDNA 2003 makes curl use wrong host" "^Date:" nil nil "11" "2016110212:52:41" "[oss-security] [SECURITY ADVISORY] IDNA 2003 makes curl use wrong host" (number mark "        hanno@hboeck Nov  2   54/1983  " thread-indent "\"Re: [oss-security] [SECURITY ADVISORY] IDNA 2003 makes curl use wrong host\"\n") "<20161102115304.GA11945@hurricane.linuxnetz.de>" ("<alpine.DEB.2.20.1611020812500.375@tvnag.unkk.fr>" "<20161102115304.GA11945@hurricane.linuxnetz.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 22232 invoked by uid 550); 2 Nov 2016 12:52:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22212 invoked from network); 2 Nov 2016 12:52:59 -0000
Message-ID: <20161102135241.20a8c3c4@pc1>
In-Reply-To: <20161102115304.GA11945@hurricane.linuxnetz.de>
References: <alpine.DEB.2.20.1611020812500.375@tvnag.unkk.fr>
	<20161102115304.GA11945@hurricane.linuxnetz.de>
X-Mailer: Claws Mail 3.14.0 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_zucker.schokokeks.org-20101-1478091169-0001-2"
Date: Wed, 2 Nov 2016 13:52:41 +0100
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] [SECURITY ADVISORY] IDNA 2003 makes curl use
 wrong host
To: oss-security@lists.openwall.com

--=_zucker.schokokeks.org-20101-1478091169-0001-2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, 2 Nov 2016 12:53:04 +0100
Robert Scheck <robert@fedoraproject.org> wrote:

> On the other hand, I am wondering if this should be really classified
> as a security related issue.

Ambiguitiy in character encodings can often be a source of security
issues.

Just think of the following:
* A Certificate Authority is using different pieces of software that
  mix different IDNA encodings.
* I request a certificate for strasse.de, but the verification mail
  goes to xn--strae-oqa.de.
* I am the owner of xn--strae-oqa.de and now have a valid certificate
  for strasse.de.

IMHO the whole idea of suddenly changing how international domain names
are encoded is a very problematic security violation.

--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: FE73757FA60E4E21B937579FA5880072BBB51E42

--=_zucker.schokokeks.org-20101-1478091169-0001-2
Content-Type: application/pgp-signature
Content-Transfer-Encoding: 7bit
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJYGeGZAAoJEKWIAHK7tR5CP0QP/3knhVXwzGNA0kAJSXZvItpG
bJNbZwoV9lpSmFDxD+zBM1+QUMbaOkF7b6SXD4Xc3IocZneET8OgzBETfUDE/Hyc
FyYxwLk1nxkfGCdtyL6lxi3M+7TII2i/xmsXOKqJr63ZDNqzIULXAgfsBFhIe4c0
4kkei6i+xVNCupd8V3yoVVo+zJS/wnAFKWZWIp9B5Y25Tl9/Dh6dEcskA4CnVtxq
1156WmitP114OK6rp5XBT4JuzTezWIDDEvCAl7uRoSMBEd21su5ASOjJYXftNp95
T/vsNM+nhrxhGK4kMwv1kyMmmERPiqPtInvcurmde8LySbFEUy1hmJwNkBSjDhN0
S1PDZK+Yj0PYok5nag5ciQow2xYCDu3VXZF/vhiaCcIQOffzA9p3YmsRsooMslWJ
zN9GPhqVs30ucC4FM6rEQ3Y8G5aBo+AUWW8UeIHVLYryEmJvh3kVpQ/J0T4oFkse
0AOcE5OxoLxRM82cc7TREndmgCe9/Lv8k4+C3JTKy7gNyyLIEvbjnDImN/HWv2Ag
xGDV0ii9YmYdRDSvX/qlJ9dR/xe2W7CwyDrUYTEpPp4Q2s6+y8QR9P5k+CzKIF60
7cvNk4KRjbXgbdKSfCRYyq0KM0AxOo2fcSSrEevCdF87sPVaNXgT/dbJwVs4C/3e
aIJy7l8qXA9kZFPatj9h
=kFRb
-----END PGP SIGNATURE-----

--=_zucker.schokokeks.org-20101-1478091169-0001-2--
