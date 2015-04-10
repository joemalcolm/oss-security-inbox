X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1725" "Friday" "10" "April" "2015" "10:18:57" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<5527F7F1.9000100@redhat.com>" "41" "[oss-security] REJECT CVE-2015-1861" nil nil nil "4" "2015041016:18:57" "[oss-security] REJECT CVE-2015-1861" (number mark "        kseifried@re Apr 10   41/1725  " thread-indent "\"[oss-security] REJECT CVE-2015-1861\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19475 invoked by uid 550); 10 Apr 2015 16:19:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 18430 invoked from network); 10 Apr 2015 16:19:11 -0000
Message-ID: <5527F7F1.9000100@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="9DG7BHGwgBAit6tHfdXklD7Jr9KjNrUCv"
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.23
Date: Fri, 10 Apr 2015 10:18:57 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] REJECT CVE-2015-1861
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>

--9DG7BHGwgBAit6tHfdXklD7Jr9KjNrUCv
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Please REJECT CVE-2015-1861. Reason: Someone found something and sent it
to the distros list, I assigned a CVE, turns out this was a
re-discovery, it was already assigned a CVE previously by the vendor
(the vendor was also on distros, but this happened late at night).

Because this CVE has been widely sent out in private I think it's safer
to REJECT rather then hope nobody accidentally used it somewhere.

--=20
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993


--9DG7BHGwgBAit6tHfdXklD7Jr9KjNrUCv
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIcBAEBAgAGBQJVJ/fxAAoJEBYNRVNeJnmTH3kQAMx88ssCuhpvgKpbcVOAAMAX
W7asd71fqjRwBUdVpeZ5/cPTzftovtGzQb8Nen4r4blfn65cJjrzp5io+E2jiH72
2X1j1PVB2lZyNNgnCgam+usE7J/tmH96d5r2ZhdRXYXVxkJ6LvsCEJJ+X/edI0oj
KCXnKhwOIF1O3gjSoWSsrPGJuPeq9mGRqbokG52iJNl3PYtHegYeTWZNMKZiNvx0
1SMLVaaQwQR1qx8L1xwFstkLv3xCFb9O5Kvmu62P4DVw7m6CSqsiueVIgrF789h+
1P8BOuNBRFrlG4B95qXLK/t59bqoNId9odw1b1YYbqZS2Hg1dYACvosghr+mhR0R
tnucnkDkc1wDO9gsD5z/ymAt7XROXn10Y9cklB66oz80zCcP5HRp0bStBja49A0G
oHaKjgf0BITjOsUvF2aBW+hIRwPvRPUT163mxOupWG/499oCKgK14h8rrMnguKeT
SxRzAeGSTl9D6dQx2qvclOCBHhTNQKV4cnt5JYV37rDOLlMultxLsCgkoyp+MuCl
mFDLDt3lrAknxILWmZq2Y8OK3trytWq8YsmItnmgSuJXshPwVQIm7REk3fhLha2H
YWs8lQ1aKtWtFmurU+43GpMQEv6hSgQhBbpSgtrQqrxZ493zx/xWfKIMISz2Ds2T
b0sd63d7AUGWP+Tu5jou
=G3yi
-----END PGP SIGNATURE-----

--9DG7BHGwgBAit6tHfdXklD7Jr9KjNrUCv--
