X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1941" "Thursday" "12" "September" "2019" "13:43:47" "-0400" "Randy Barlow" "randy@electronsweatshop.com" "<12565f8bad84ea9a77dadaaae0509b4cfa122fc3.camel@electronsweatshop.com>" "62" "[oss-security] 3 CVEs in dino" nil nil nil "9" "2019091217:43:47" "[oss-security] 3 CVEs in dino" (number mark "U       randy@electr Sep 12   62/1941  " thread-indent "\"[oss-security] 3 CVEs in dino\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] 3 CVEs in dino" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30400 invoked by uid 550); 12 Sep 2019 17:46:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28541 invoked from network); 12 Sep 2019 17:44:04 -0000
Message-ID: <12565f8bad84ea9a77dadaaae0509b4cfa122fc3.camel@electronsweatshop.com>
From: Randy Barlow <randy@electronsweatshop.com>
To: oss-security@lists.openwall.com
Date: Thu, 12 Sep 2019 13:43:47 -0400
Organization: electronsweatshop.com
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-0kKRQImMX+c7Pz8FlGRn"
User-Agent: Evolution 3.32.4 (3.32.4-1.fc30) 
MIME-Version: 1.0
X-CMAE-Envelope: MS4wfBA8hsPFBKtPKW4deWsmxHUv0GzkmTiy1ZyGoQUXvroAjWcVF4a2wDRfmmHK+sPQAwz0TZ4TRw7SIh21BGScMqTRS5j2h1YOGfkzUkuRhb+mvd0NNpkB
 aJdViW7Ccm0/gbA+jr0Ai1WG4oIuiYaGDtrT5kRNBjLHWVzwI+bcouq0RumxM/2ETSn8sxxTnC/BxXr90/h8eZOk1X4k/Zroh6A=
Subject: [oss-security] 3 CVEs in dino

--=-0kKRQImMX+c7Pz8FlGRn
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Three CVEs have been identified and fixed in Dino.

CVE-2019-16235
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Dino did not properly check the source of message carbons.

https://nvd.nist.gov/vuln/detail/CVE-2019-16235

Fixed in https://github.com/dino/dino/commit/e84f2c49567e86d2a261ea264d65c4=
adc549c930


CVE-2019-16236
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Dino did not check roster push authorization.

https://nvd.nist.gov/vuln/detail/CVE-2019-16236

Fixed in https://github.com/dino/dino/commit/dd33f5f949248d87d34f399e8846d5=
ee5b8823d9


CVE-2019-16237
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Dinot did not properly check the source of MAM messages.

https://nvd.nist.gov/vuln/detail/CVE-2019-16237

Fixed in https://github.com/dino/dino/commit/307f16cc86dd2b95aa02ab8a85110e=
4a2d5e7363

--=-0kKRQImMX+c7Pz8FlGRn
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEtaW+t5vwm7qNSBIDeETMuDvdJGIFAl16g9MACgkQeETMuDvd
JGIWThAAjuQqFwDvievULI2TWPXYk1CSzK216vcPVpvevxW2koilUYd6ZrqPwflv
J/qx/9ykgtubGLNrLgqkTZYFfDP67GHDF+8mKz9CjX0rwYORK1LdP6iEnn5PlF7a
5ghRedy49M4sPVPtJqa5zWv+j1bAZmra7rwTYlCy180p3SQxR+OLVyo5d3d5OgcJ
u6jO60HtUoQk0myjjq4xLYIa1BhDeuinRoW4abr5IllvMyHWe9tGX6CGgD9kEZxr
ow6PJ8Ey0+lyQLAJYZxaY65f4WeGwxmTOB4io+ARp+X+OfGnex/jDnHmHUCjlbiG
wX/gCjWIAP9GH4ujeVeCUNPFb/07FvL00eglZ2hBrX0z81EyYoZbzZ4CV4Epfagg
JyA0UhqecXcZX9Bsx0xQ6lCt8jbGF98Q6jOqm8dOgpH7k03VgjxncbrKLK4fDPsv
m7DC8ATJhfIeKB86FLZpXB8sYgLVNMlIxvQj8Prntp9WtQTa7F4W1JJ0Is8fvcK2
pdSPPEPM3vZjc2VJq2R1YCTpaGJfrcR2LyFddTuubuPJWrRvZWQZzph8HCGYOeQE
7KTaLMUuhCn5SWBbDQkxiOL+2sODvxdLofFUA2BmBGXmdBdWc6VxvSeHqNlzLOyb
Bo+o2W2Y4O5Qwi77szPO6xQFzu0P9E8/gEComx+c925Bp7dah6c=
=ezgU
-----END PGP SIGNATURE-----

--=-0kKRQImMX+c7Pz8FlGRn--

