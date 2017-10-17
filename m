X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2225" "Tuesday" "17" "October" "2017" "19:43:56" "+0200" "chbi@chbi.eu" "chbi@chbi.eu" "<8a886780-1b10-6412-06bf-e61aef4a8a2c@chbi.eu>" "69" "[oss-security] Stored XSS vulnerability in ILIAS <= 5.2.8 and <= 5.1.20" nil nil nil "10" "2017101717:43:56" "[oss-security] Stored XSS vulnerability in ILIAS <= 5.2.8 and <= 5.1.20" (number mark "U       chbi@chbi.eu Oct 17   69/2225  " thread-indent "\"[oss-security] Stored XSS vulnerability in ILIAS <= 5.2.8 and <= 5.1.20\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26100 invoked by uid 550); 17 Oct 2017 17:44:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26078 invoked from network); 17 Oct 2017 17:44:48 -0000
To: oss-security@lists.openwall.com
From: chbi@chbi.eu
Message-ID: <8a886780-1b10-6412-06bf-e61aef4a8a2c@chbi.eu>
Date: Tue, 17 Oct 2017 19:43:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="TtUqocHAEWLiph9gvLmake5WDRCFQD051"
Subject: [oss-security] Stored XSS vulnerability in ILIAS <= 5.2.8 and <= 5.1.20

--TtUqocHAEWLiph9gvLmake5WDRCFQD051
Content-Type: multipart/mixed; boundary="L5rxuMRHbTkJOSq1aK2IL8AAwEXr5TFGj";
 protected-headers="v1"
From: chbi@chbi.eu
To: oss-security@lists.openwall.com
Message-ID: <8a886780-1b10-6412-06bf-e61aef4a8a2c@chbi.eu>
Subject: Stored XSS vulnerability in ILIAS <= 5.2.8 and <= 5.1.20

--L5rxuMRHbTkJOSq1aK2IL8AAwEXr5TFGj
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi,

I've discovered a security issue in ILIAS <=3D 5.2.8 and <=3D 5.1.20
(https://www.ilias.de)


A stored XSS vulnerability in the media object component allows an
authenticated user to inject JavaScript to gain administrator privileges.


Fix:
https://github.com/ILIAS-eLearning/ILIAS/commit/b2a4660afec1e87d41c83c8e381=
f549bc6dfc70f


The issue is fixed in ILIAS 5.2.9 and 5.1.21.

https://www.ilias.de/docu/goto_docu_pg_75377_35.html
https://www.ilias.de/docu/goto_docu_pg_75378_1719.html


I've requested a CVE ID (MITRE).

--=20
chbi
https://chbi.eu

GPG: 3DE9 9187 4BE9 EAE6 3CA8  DC20 BA7B 93F9 9037 AE7E
     https://chbi.eu/chbi.asc


--L5rxuMRHbTkJOSq1aK2IL8AAwEXr5TFGj--

--TtUqocHAEWLiph9gvLmake5WDRCFQD051
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEPemRh0vp6uY8qNwgunuT+ZA3rn4FAlnmQWMACgkQunuT+ZA3
rn54BxAAmVS6cuNdliLIawEEuDnZYAAby7QZtP+kr9vJVPud29KYCF7uTfTSqrxi
OD+EZbQAzOph8GjoAFKGNWl/QDiK0M4TUoPKVVNjhTLBOU3NxUg6JzSHKZ3p45pi
SnZ4ypb/tdNbRDQZnvgRIPQAVO1ysXMz2OBCtEGPVsg33pdDFO/xNoZkESTTDwzs
GdUMX0afd7KvGOkf9ddYzVLH5W4TysGh7KrVIwZ0z3T6Ie+DPliascBJFYuGfKTR
yPQYEXfSUazw0FJmGzbY00SaYtZwBch5142lRZNi7ycAlHCPAcyE9nHwhsQeOwmq
HhEXAL2I5LXT+bj5T0jARogPLdDH5FgtAw51Dx2aP+A+YegqYlMcUBdGKDXGE2ii
Sdy64MTzUcnhUtLq2CARCrr33nufqZEOW2pm1dlf4ZWpwgJU+0ctISWhkMgIvZpi
XvIhQWstcFeKCQXjj7aVSVLkW/eYQN3KApLiaoi4nPzeu3F/LT+gCurcnJcuyuCt
tc01MZWoFYn4ReEQgDwHHEX95tGIyoTQDLhdBz7Sbk7kw85T1GOnctdh8W2E/70B
fF3rRXhy+EgOkCcER/rHZT8m9gf9c+ojs7O/z94Kt0AAn8HBuJ7BldtB1ETlonJn
cNvzVCr+ddi5Z8S/ayWfl0JsfCa2zRrppZD4sziM5OG0n2wQzaI=
=epik
-----END PGP SIGNATURE-----

--TtUqocHAEWLiph9gvLmake5WDRCFQD051--
