X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4284" "Wednesday" "4" "October" "2017" "20:18:40" "+0200" "chbi@chbi.eu" "chbi@chbi.eu" "<084a2018-ecd5-186d-dba2-0cc051001019@chbi.eu>" "172" "[oss-security] Several Privilege Escalation issues in Kanboard <= 1.0.46" nil nil nil "10" "2017100418:18:40" "[oss-security] Several Privilege Escalation issues in Kanboard <= 1.0.46" (number mark "U       chbi@chbi.eu Oct  4  172/4284  " thread-indent "\"[oss-security] Several Privilege Escalation issues in Kanboard <= 1.0.46\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32201 invoked by uid 550); 4 Oct 2017 18:31:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14125 invoked from network); 4 Oct 2017 18:19:00 -0000
To: oss-security@lists.openwall.com
From: chbi@chbi.eu
Message-ID: <084a2018-ecd5-186d-dba2-0cc051001019@chbi.eu>
Date: Wed, 4 Oct 2017 20:18:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="7kUCMC5NUN2CpLbPp6knkgmuNLp5xbPeB"
Subject: [oss-security] Several Privilege Escalation issues in Kanboard <= 1.0.46

--7kUCMC5NUN2CpLbPp6knkgmuNLp5xbPeB
Content-Type: multipart/mixed; boundary="Da38oFtUKTS1fNfxWiUUpJXpjV50CxVJH";
 protected-headers="v1"
From: chbi@chbi.eu
To: oss-security@lists.openwall.com
Message-ID: <084a2018-ecd5-186d-dba2-0cc051001019@chbi.eu>
Subject: Several Privilege Escalation issues in Kanboard <= 1.0.46

--Da38oFtUKTS1fNfxWiUUpJXpjV50CxVJH
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable


Hi,

I've discovered several security issues in Kanboard <=3D 1.0.46
(https://kanboard.net)



1)
By altering form data an authenticated user can edit Name, Email,
Identifier, Description,... of a private project of another user.


2)
By altering form data an authenticated user can add a new task to a
private project of another user.


3)
By altering form data an authenticated user can edit columns of a
private project of another user.


4)
By altering form data an authenticated user can add a new category to a
private project of another user.


5)
By altering form data an authenticated user can edit a category of a
private project of another user.


6)
By altering form data an authenticated user can edit swimlanes of a
private project of another user.


7)
By altering form data an authenticated user can edit tags of a private
project of another user.


8)
By altering form data an authenticated user can add automatic actions to
a private project of another user.


9)
By altering form data an authenticated user can remove columns from a
private project of another user.


10)
By altering form data an authenticated user can remove categories from a
private project of another user.


11)
By altering form data an authenticated user can at least see the name of
tags of a private project of another user.


12)
By altering form data an authenticated user can remove automatic actions
from a private project of another user.


13)
By altering form data an authenticated user can edit tasks of a private
project of another user.


14)
By altering form data an authenticated user can add a external link to a
private project of another user.


15)
By altering form data an authenticated user can add a internal link to a
private project of another user.


Fix:
https://github.com/kanboard/kanboard/commit/074f6c104f3e49401ef0065540338fc=
2d4be79f0
https://github.com/kanboard/kanboard/commit/3e0f14ae2b0b5a44bd038a472f17eac=
75f538524




16)
By altering form data an authenticated user can download attachments
from a private project of another user.


17)
By altering form data an authenticated user can see thumbnails of
pictures from a private project of another user.


18)
By altering form data an authenticated user can remove attachments from
a private project of another user.


Fix:
https://github.com/kanboard/kanboard/commit/7100f6de8a1f566e260b3e65312767e=
4cde112b1



The issues are fixed in Kanboard 1.0.47.

https://kanboard.net/news/version-1.0.47




Should I request a CVE ID for each issue or one CVE ID for all issues?

What is the recommended method?



--=20
chbi
https://chbi.eu

GPG: 3DE9 9187 4BE9 EAE6 3CA8  DC20 BA7B 93F9 9037 AE7E
     https://chbi.eu/chbi.asc


--Da38oFtUKTS1fNfxWiUUpJXpjV50CxVJH--

--7kUCMC5NUN2CpLbPp6knkgmuNLp5xbPeB
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEPemRh0vp6uY8qNwgunuT+ZA3rn4FAlnVJgYACgkQunuT+ZA3
rn42Ig//WD6/r8nyg9CzrZ2y/fvCVyH+3BVvu9ccy5aH+QRTSdcj/4H+Y8nDkUYy
G3jYVZGR3izudl4mQeirzVqw2GK0sjaqEEDNIz/FgnPPwyQqcxyCKxH2HV0TFoZv
hkxyq3UZLlecfamsr8Jys+HwyCqs6P7RQx4sRjz5A4KrG31SmPMtKxeBa/khzon7
MXaeu2b61pMFbPrMqxC9MP6LljWFYEnJ9lO7+sUBzG5CqGOVscHNGOvexsZ0R/yj
6E9J6TalXA0e4huNLea2zYL3GFEEUXNgmWdT3rTe7QAGxYYlryAiTDqaFzmER9M/
+6fwOH+eGYx0utF7u7mEOTQI208UczxrZnCLylnRWc4RU2tjRYkYApOGeC0vjLa1
RPpzX9Ot0y8YGLWhN23429B2QW0/HTqvXyzxWr9lkaDzLYuBk3lyuQOYhk3HJri6
oI8pVg0bgTe0N61Eabvx/s9vUDoJ3w7Xdl+h4FzsMZnlJSwPFH+eLjQOj8GNUc9N
Lh3xsKGbiaKJi6hTdrodl554mOYTBH5kx75t3SE/QIWnehzrcVPzL3rPD6frk+tc
+c61z3oMH2l8ZKJ7Y694TJSmk5ytXH/yiCiuuLwaC+tWfzPdPhVyVJTlz+p65Xwg
seCRBtmWYIA1EZoGzvWsaJfd1TwKX6+t0o/aEZp2aNoE5eRFIgw=
=jzpm
-----END PGP SIGNATURE-----

--7kUCMC5NUN2CpLbPp6knkgmuNLp5xbPeB--
