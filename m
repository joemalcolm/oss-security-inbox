X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1434" "Wednesday" "24" "January" "2018" "16:38:18" "+1030" "Doran Moppert" "dmoppert@redhat.com" "<20180124060817.GE19133@sin.redhat.com>" "41" "[oss-security] CVE-2018-1000018: ovirt-engine-setup: root password disclosed in provisioning logs" nil nil nil "1" "2018012406:08:18" "[oss-security] CVE-2018-1000018: ovirt-engine-setup: root password disclosed in provisioning logs" (number mark "U       dmoppert@red Jan 24   41/1434  " thread-indent "\"[oss-security] CVE-2018-1000018: ovirt-engine-setup: root password disclosed in provisioning logs\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11631 invoked by uid 550); 24 Jan 2018 06:08:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11613 invoked from network); 24 Jan 2018 06:08:36 -0000
Date: Wed, 24 Jan 2018 16:38:18 +1030
From: Doran Moppert <dmoppert@redhat.com>
To: oss-security@lists.openwall.com
Message-ID: <20180124060817.GE19133@sin.redhat.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="R3G7APHDIzY6R/pk"
Content-Disposition: inline
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.38]); Wed, 24 Jan 2018 06:08:24 +0000 (UTC)
Subject: [oss-security] CVE-2018-1000018: ovirt-engine-setup: root password disclosed in
 provisioning logs

--R3G7APHDIzY6R/pk
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Distributions of ovirt using hosted-engine-setup should check if their
configuration is affected by this issue, as the default log file
permissions were 0755 and the root password was not correctly filtered.

https://gerrit.ovirt.org/#/c/86635/
https://gerrit.ovirt.org/#/c/62679/

https://bugzilla.redhat.com/show_bug.cgi?id=3D1537904


--=20
Doran Moppert
Red Hat Product Security

--R3G7APHDIzY6R/pk
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIcBAEBCgAGBQJaaCLRAAoJEGohqWcZR7qp+lUP/iuceJATHcPkMT5zDIm3mT/i
r+rFzRDfWr/eaR0EEmiBtME3qSGqW0QNuOa3qkyHqMo20BJmTW2ifYAHEU/uUaP+
DO/ycqZRfrnzDfBTlJn1D8GLGOqm0n9W0Bhk8i2BztLcYT7LotuABNYP2v7pUnRd
BO/EPGkhDiC9DIUmKD47aC7q7pimqw+K0+qzmZ2VsSPNm/IrSdO0GLpWDffirHzu
Whd2QXIE3llnov5h+txytinMo+L/ZOzOmMVhLBwCAHWK04MOU61P9ymxlEtZLy2u
NJUMS5WNW+ewWhYRFnULkHBZjWvuUnSX3oa3/ITeheYMnBqMbwmIHXRi5zowrvR6
SrG1qjw1S4j3g95kc2+9C+5IsFDb2yxjZ3Wow7IJIcGId9W4rjNTf3vTSAdfFI7t
wAlMK1IkWhjI7dozbLgjpVrkJDok9nheWKAkjOeCOTB6Cp0NQIdn7ZpxhvRmHm98
azVUWIvVJ+7bb4SiOtdom3GaEmahkiCErNjbPfgcB7rpMv3gRjqnUSpVBMwoXp/w
F9ziadoF+IiLZK98FW0mbLm/vsB5QevP7i3W/BDEOII9Dq/fC+WHybwHUznRAW0W
enqBsrD7zQbuCGPwO63w8NrOOwUe353afQu3o2rRGooAJ5F3DQMv3eQJd8dpNlqY
4WbwzEFuJn1ad5Jrv9hY
=kwYj
-----END PGP SIGNATURE-----

--R3G7APHDIzY6R/pk--
