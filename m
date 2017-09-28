X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3106" "Thursday" "28" "September" "2017" "20:17:26" "+0200" "chbi@chbi.eu" "chbi@chbi.eu" "<83acfdf4-1398-8017-fc91-ab65e855d743@chbi.eu>" "86" "[oss-security] Stored XSS vulnerability in Tine 2.0 Community Edition <= 2017.08.3" nil nil nil "9" "2017092818:17:26" "[oss-security] Stored XSS vulnerability in Tine 2.0 Community Edition <= 2017.08.3" (number mark "U       chbi@chbi.eu Sep 28   86/3106  " thread-indent "\"[oss-security] Stored XSS vulnerability in Tine 2.0 Community Edition <= 2017.08.3\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19588 invoked by uid 550); 28 Sep 2017 18:26:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7688 invoked from network); 28 Sep 2017 18:17:46 -0000
To: oss-security@lists.openwall.com
From: chbi@chbi.eu
Message-ID: <83acfdf4-1398-8017-fc91-ab65e855d743@chbi.eu>
Date: Thu, 28 Sep 2017 20:17:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="tXIlfdxwgSB38Taqer8Saot2PEXq0hknc"
Subject: [oss-security] Stored XSS vulnerability in Tine 2.0 Community Edition <= 2017.08.3

--tXIlfdxwgSB38Taqer8Saot2PEXq0hknc
Content-Type: multipart/mixed; boundary="tLIfkPbgs9tKpNtG274sqcgB3SWrU1JMj";
 protected-headers="v1"
From: chbi@chbi.eu
To: oss-security@lists.openwall.com
Message-ID: <83acfdf4-1398-8017-fc91-ab65e855d743@chbi.eu>
Subject: Stored XSS vulnerability in Tine 2.0 Community Edition <= 2017.08.3

--tLIfkPbgs9tKpNtG274sqcgB3SWrU1JMj
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi,

there are security issues in Tine 2.0 Community Edition <=3D 2017.08.3
(https://github.com/tine20/Tine-2.0-Open-Source-Groupware-and-CRM/)


Stored XSS vulnerability via IMG tag at "History" of Profile, Calendar,
Tasks and CRM allows an authenticated user to inject JavaScript which is
triggered by the application administrator and other users.

Stored XSS vulnerability via IMG tag at "Leadname" of CRM allows an
authenticated user to inject JavaScript which is triggered by the
application administrator and other users.

Stored XSS vulnerability via IMG tag at "Filename" of Filemanager allows
an authenticated user to inject JavaScript which is triggered by the
application administrator and other users.


Fix:
https://github.com/tine20/Tine-2.0-Open-Source-Groupware-and-CRM/commit/bc8=
a6fbd3128cf5ef27d808f6c6ba869fdc2262b
https://github.com/tine20/Tine-2.0-Open-Source-Groupware-and-CRM/commit/146=
c5aaafd826c1c8990333c393bff6f64c90786
https://github.com/tine20/Tine-2.0-Open-Source-Groupware-and-CRM/commit/24e=
39e1e930097b8793a03b8864d3c484ede546b


The issues are fixed in Tine Community Edition 2017.08.4.


Until now vendor has not marked the new version as security update and
also not mentioned the security issues.
(https://github.com/tine20/Tine-2.0-Open-Source-Groupware-and-CRM/releases/=
tag/2017.08.4)


I've requested CVE IDs (MITRE), but I have not received any yet.


--=20
chbi
https://chbi.eu

GPG: 3DE9 9187 4BE9 EAE6 3CA8  DC20 BA7B 93F9 9037 AE7E
     https://chbi.eu/chbi.asc


--tLIfkPbgs9tKpNtG274sqcgB3SWrU1JMj--

--tXIlfdxwgSB38Taqer8Saot2PEXq0hknc
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEPemRh0vp6uY8qNwgunuT+ZA3rn4FAlnNPLwACgkQunuT+ZA3
rn4qWA/9FuenA93AcXXduMeylZi2+eWD6t+Sla9oJ+eh2l3xNy9o+KZGruUjI3Lw
b6uJvolYxD1bZwLQVHDS/KJXrgVCenRZGx3BSX6ogv4YjMonjpzbkLUeCEr5jOvQ
sl8cupnfxDxXhewjXpbBQhYvbaX0tHMoEO/wRWiW5p9NiN8wzp7nG9+GSq2t9+iR
xdAlENe3BOR2XmKoHfe6ka70el0CJZtNOzxRkDZ+5gydozULMqLuN2cX3Jp6NxZO
+VMjTHAH2faczIkdxIYcDIQ4E0SUSl9foOtbhX5rEZVh01gundTTBY088guIDa8/
kQHbB0lNv4tgM5wHohOWcPp5v1sGLwpA8bI5uX0FAcWIz9x4uWFTBYqtysT3Lu8E
P+4qd3dN4/joqaSNiqxwBzZN7i+N8ARQFDGyF67/nr1gY6ALwece0I9qc0pi5717
5Ih/dUV8eUH89RIv9lzrlaDOqj/MIhhaGhH4DMkeZAqJyqpSOZ2O9QA036+RnXY1
Wrs85RH5YvLgoPX7JiN8RCHGacZIx8kTvSEuFUWKSda9sXToTE1IKv9DRN/YK+e9
m8g5wXDd2YYph5ONgofeqWW02YJVvC0LK3DOeufQ699fpnlsiq/pzKzwd1NdqCDw
FVlmiyniKL9Y442cQ1R7u/EccFmYsCMGOBQLkGMemEAK2EEQz2I=
=Ff99
-----END PGP SIGNATURE-----

--tXIlfdxwgSB38Taqer8Saot2PEXq0hknc--
