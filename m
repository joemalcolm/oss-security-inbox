X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2419" "Thursday" "28" "September" "2017" "20:24:58" "+0200" "chbi@chbi.eu" "chbi@chbi.eu" "<850ff904-b998-0710-d3c9-39adc6a22fbb@chbi.eu>" "73" "[oss-security] Stored XSS vulnerability in eGroupware Community Edition <= 16.1.20170703" nil nil nil "9" "2017092818:24:58" "[oss-security] Stored XSS vulnerability in eGroupware Community Edition <= 16.1.20170703" (number mark "U       chbi@chbi.eu Sep 28   73/2419  " thread-indent "\"[oss-security] Stored XSS vulnerability in eGroupware Community Edition <= 16.1.20170703\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20293 invoked by uid 550); 28 Sep 2017 18:26:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12282 invoked from network); 28 Sep 2017 18:25:18 -0000
To: oss-security@lists.openwall.com
From: chbi@chbi.eu
Message-ID: <850ff904-b998-0710-d3c9-39adc6a22fbb@chbi.eu>
Date: Thu, 28 Sep 2017 20:24:58 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="iHDGAtrP98HujLuaIx0sepilW896JpCXg"
Subject: [oss-security] Stored XSS vulnerability in eGroupware Community Edition <=
 16.1.20170703

--iHDGAtrP98HujLuaIx0sepilW896JpCXg
Content-Type: multipart/mixed; boundary="tLG3T055vaHnw3fvwkkr3UFjNAd7PsiSk";
 protected-headers="v1"
From: chbi@chbi.eu
To: oss-security@lists.openwall.com
Message-ID: <850ff904-b998-0710-d3c9-39adc6a22fbb@chbi.eu>
Subject: Stored XSS vulnerability in eGroupware Community Edition <=
 16.1.20170703

--tLG3T055vaHnw3fvwkkr3UFjNAd7PsiSk
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi,

there is a security issue in eGroupware Community Edition <=3D
16.1.20170703 (https://github.com/EGroupware/egroupware)


Stored XSS vulnerability allows an unauthenticated remote attacker to
inject JavaScript via Browser User-Agent which is triggered by the
application administrator.

Fix:
https://github.com/EGroupware/egroupware/commit/0ececf8c78f1c3f9ba15465f53a=
682dd7d89529f


The issue is fixed in eGroupware Community Edition 16.1.20170922.


Until now vendor has not marked the new version as security update and
also not mentioned the security issue.
(https://github.com/EGroupware/egroupware/releases/tag/16.1.20170922)


I've requested a CVE ID (MITRE) but I have not received any yet.


--=20
chbi
https://chbi.eu

GPG: 3DE9 9187 4BE9 EAE6 3CA8  DC20 BA7B 93F9 9037 AE7E
     https://chbi.eu/chbi.asc


--tLG3T055vaHnw3fvwkkr3UFjNAd7PsiSk--

--iHDGAtrP98HujLuaIx0sepilW896JpCXg
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEPemRh0vp6uY8qNwgunuT+ZA3rn4FAlnNPnoACgkQunuT+ZA3
rn6V1A/8CKcXgFsuHBFYHlfc6/MMnn+4MI/nQ9R8jXSy7Z/CsqIFw/NP6iK1epxz
L3IeS6tId62+gFH9rCFcKS4ycdiecSWifYl5APY9OfMRL/jyOfuiYJABggLVYgtc
PlRLOs0zEk4WySbdZLf9ExzB/+lKJjTUrCDlnt/xTcZixNW+gSN4e/1oXAzxyykG
gYTAfMREs08u183t0ceUlejf1nrbbecJwwAgL5c9+XzQmmsVt6+HomnoiAL66PtQ
JQrjKAag+Mzk4X1nUoXu6QpThYd0iM5eUHD+vIYRtt3tTGK61fLv0Q4AZnPrkO7k
vmf4SPdzyusRtLwH7A58Z7lXy7qcJrfi1tX4dq2H/5QmwZb+wyuQVYnFA6atKokB
LX5Co/s4xOjqgU/kBV4d4N2rupjTO3J1/zqMm0pFCaUtrV9jdjFQO7Lv9C/nrS85
HjkCyidABuz93i20IyTtzSlUKO0D+vVg92jxhg5KFHhle7jX5CEeF0zqILW194D1
Yc97olOZ2YMxCpMSgQWiqLmckhnQ9x4Fb9+ovJI73PpjBpQvCIM1eBaiGs76qiRH
OveEH+3kBKUid7khDlqX4TPHveTfSBZHmo/B+z+VOgwHdOTB6+GxqcKfvLf/1tdZ
cgR9ThYtP/jC8HAoZ5Y5E5Nua4aYa1VFDgEwWgqu0XuOFxkeoRo=
=Vb8c
-----END PGP SIGNATURE-----

--iHDGAtrP98HujLuaIx0sepilW896JpCXg--
