X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1219" "Saturday" "21" "November" "2015" "14:52:52" "+0100" "Yves-Alexis Perez" "corsac@debian.org" "<1448113972.31921.7.camel@debian.org>" "40" "[oss-security] CVE request for LightDM - XDMCP denial of service" nil nil nil "11" "2015112113:52:52" "[oss-security] CVE request for LightDM - XDMCP denial of service" (number mark "U       corsac@debia Nov 21   40/1219  " thread-indent "\"[oss-security] CVE request for LightDM - XDMCP denial of service\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9248 invoked by uid 550); 21 Nov 2015 13:53:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9229 invoked from network); 21 Nov 2015 13:53:08 -0000
Message-ID: <1448113972.31921.7.camel@debian.org>
From: Yves-Alexis Perez <corsac@debian.org>
To: oss-security@lists.openwall.com
Date: Sat, 21 Nov 2015 14:52:52 +0100
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-ApXzkLSUusu8QwA1Ocom"
X-Mailer: Evolution 3.18.2-1 
Mime-Version: 1.0
Subject: [oss-security] CVE request for LightDM - XDMCP denial of service

--=-ApXzkLSUusu8QwA1Ocom
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

it seems that some versions of LightDM (1.14 and 1.16 series) are vulnerable
to a denial of service when XDMCP server is enabled. When that's the case, =
an
XDMCP request with no address will crash LightDM.

More information can be found in=C2=A0https://bugs.launchpad.net/lightdm/+b=
ug/15168
31=C2=A0and the bug is fixed with 1.14.4 and 1.16.6 (and development release
1.17.2).

Can a CVE be assigned to this?

Thanks in advance,
--=20
Yves-Alexis


--=-ApXzkLSUusu8QwA1Ocom
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAABCAAGBQJWUHc0AAoJEG3bU/KmdcClkuAH/0of+dTt+eycjcILfY8rvfmu
3TcwO85Fv7P6ltbppu3LGg027CKXWwk/g7UwfCEMH8dmwASG3Qcay9jE7AzTN1Kq
Lgj00ULP7YNakrKCaRuDPQo4Tstl9/ZnZfmWjYYFz4yfeVNb6BDFAbkuove7rDLM
iwClXmWTxqd0s72WwWH1rns3oO8tQrO45t+Zmq4OstkmqFbzseoTyPQc7sHOE5hA
8GxFeegB9F146RgnnT79LeBvinJ/18uW3b6TMBjItCV/l4qg2NDD+JstSI5QJjfV
p7urtV/lWgV41i/BhONtpfcrd7f8nDyTQSxNKEPLMqh1L1lxtExX/V89GikXCIg=
=5TWQ
-----END PGP SIGNATURE-----

--=-ApXzkLSUusu8QwA1Ocom--
