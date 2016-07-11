X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1683" "Monday" "11" "July" "2016" "12:51:57" "+0200" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20160711125157.7ed792f4@pc1>" "49" "Re: [oss-security] CVE-2016-5011: util-linux: Extended partition loop in MBR partition table leads to DoS" nil nil nil "7" "2016071110:51:57" "[oss-security] CVE-2016-5011: util-linux: Extended partition loop in MBR partition table leads to DoS" (number mark "U       hanno@hboeck Jul 11   49/1683  " thread-indent "\"Re: [oss-security] CVE-2016-5011: util-linux: Extended partition loop in MBR partition table leads to DoS\"\n") "<CAKG8Do6jzQUGa-hgGxa8oxYAhkz3qm8sMMXmbC8HuNJZKGqbLw@mail.gmail.com>" ("<CAKG8Do6jzQUGa-hgGxa8oxYAhkz3qm8sMMXmbC8HuNJZKGqbLw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5540 invoked by uid 550); 11 Jul 2016 10:52:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5516 invoked from network); 11 Jul 2016 10:52:13 -0000
Date: Mon, 11 Jul 2016 12:51:57 +0200
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
To: oss-security@lists.openwall.com,
  Cedric Buissart <cbuissar@redhat.com>
Message-ID: <20160711125157.7ed792f4@pc1>
In-Reply-To: <CAKG8Do6jzQUGa-hgGxa8oxYAhkz3qm8sMMXmbC8HuNJZKGqbLw@mail.gmail.com>
References: <CAKG8Do6jzQUGa-hgGxa8oxYAhkz3qm8sMMXmbC8HuNJZKGqbLw@mail.gmail.com>
X-Mailer: Claws Mail 3.13.2 (GTK+ 2.24.30; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512; protocol="application/pgp-signature"; boundary="=_zucker.schokokeks.org-12592-1468234323-0001-2"
Subject: Re: [oss-security] CVE-2016-5011: util-linux: Extended partition
 loop in MBR partition table leads to DoS

--=_zucker.schokokeks.org-12592-1468234323-0001-2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Mon, 11 Jul 2016 12:11:43 +0200
Cedric Buissart <cbuissar@redhat.com> wrote:

> CVE-2016-5011: util-linux: Extended partition loop in MBR partition
> table leads to DoS

Have you discovered this bug or do you know how it was discovered?

Was it found with fuzzing or code inspection?

I have done fuzzing on partitioning tools before, however I hadn't
found anything, this bug indicates I haven't looked enough :-)


--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: BBB51E42

--=_zucker.schokokeks.org-12592-1468234323-0001-2
Content-Type: application/pgp-signature
Content-Transfer-Encoding: 7bit
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJXg3pNAAoJEKWIAHK7tR5CWSYQALj923znGZQq+WOslG9xCpIx
8kEgJr3ZZ9j0Z41b6CtdszB+YWRMYzBJkUpXgAwX4l/pfy0CIcF/oSdGC+Dc9/Ih
UY9YlgOd4UqWpXE0eCtaQaqf/dAvtWDZUeEW6FHq4sM2+zxulwHR1SbvaTdW1wwi
J8D5NQHq6/j6cPAxDM+GS+gLNogKscyeU0A5KJtf0ifcgVSGY4+NIxZ4f/cPIB3H
vyGOSIBEsQ5y2BcpAgu87cUNnyL2G0O8DTY/BAfqaVDr8NiCVM0kua5AM6E3YSuv
ziUlaZssy60rm/qEwM2Na0ELib5WxfiqVYYJR9nLYVXPQuRBx9TRRZ3JNGnqj2jp
O7uMnXWckd49hzZoI7B5E1i43HTb+TSXAOLE+HQJQhgMWS8Pq7EWgDTubPeTGGJv
29BHyK5jK3BggXbUR1ovxZvrPKIvg7Y8RP0ThntilTtX6+Ho0lOJ7dhp3fmFSv4k
FxpW82W3OvZWQl2prWwcYGQUcOsT7hd1zNsSsn99YuWIT9KzUNE3ntsasmIQSrME
F5eJ9R1EfvP6IYWzXzU0L83a7k7mDUx3meJsJDQwDFfIvWP+1EpN4d69p0LgqTJZ
urLSJY1nDy+sOsroIiw1xySXPhugRVSUnnWM/dsSI4seZKdmL4VYE3YxqtAD0upR
Ktd/s2pPNapAQuGMSYkb
=nK3B
-----END PGP SIGNATURE-----

--=_zucker.schokokeks.org-12592-1468234323-0001-2--
