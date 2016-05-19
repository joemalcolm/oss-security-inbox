X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2526" "Thursday" "19" "May" "2016" "16:41:56" "-0400" "Randy Barlow" "randy@electronsweatshop.com" "<573E2514.7080509@electronsweatshop.com>" "71" "[oss-security] Pulp 2.8.3 Released to address multiple CVEs" nil nil nil "5" "2016051920:41:56" "[oss-security] Pulp 2.8.3 Released to address multiple CVEs" (number mark "U       randy@electr May 19   71/2526  " thread-indent "\"[oss-security] Pulp 2.8.3 Released to address multiple CVEs\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24083 invoked by uid 550); 20 May 2016 00:14:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22021 invoked from network); 19 May 2016 20:42:13 -0000
To: oss-security@lists.openwall.com
From: Randy Barlow <randy@electronsweatshop.com>
X-Enigmail-Draft-Status: N1110
Organization: electronsweatshop.com
Message-ID: <573E2514.7080509@electronsweatshop.com>
Date: Thu, 19 May 2016 16:41:56 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.8.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="iFdPMreAEvPorKSdmg267P2rv8WtNtX1h"
X-RR-Connecting-IP: 107.14.168.142:25
X-Cloudmark-Score: 0
Subject: [oss-security] Pulp 2.8.3 Released to address multiple CVEs

--iFdPMreAEvPorKSdmg267P2rv8WtNtX1h
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Pulp 2.8.3 has been released to address multiple CVEs:

CVE-2016-3111 (Low Impact):
pulp.spec generates its RSA keys for message signing insecurely
https://pulp.plan.io/issues/1837

CVE-2016-3112 (Moderate Impact):
Pulp consumer private keys are world-readable
https://pulp.plan.io/issues/1834

CVE-2016-3107 (Moderate Impact):
Node certificate containing private key stored in world-readable file
https://pulp.plan.io/issues/1833

CVE-2016-3108 (Moderate Impact):
Insecure temporary file used when generating certificate for Pulp Nodes
https://pulp.plan.io/issues/1830

CVE-2016-3106 (Low Impact):
Insecure creation of temporary directory when generating new CA key
https://pulp.plan.io/issues/1827

Additionally, CVE-2013-7450[0] was announced during this release cycle
even though it was fixed in Pulp 2.3.0. Users who have upgraded from
Pulp < 2.3.0 may still be vulnerable, action may be required.

Users should read the release notes[1] and the mailing list
announcement[2] to learn more.

Thanks to Florian Weimer, Sander Bos, and Jeremy Cline for reporting
these issues and submitting patches.


[0] https://bugzilla.redhat.com/show_bug.cgi?id=3D1003326
[1]
http://pulp.readthedocs.io/en/latest/user-guide/release-notes/2.8.x.html#pu=
lp-2-8-3
[2] https://www.redhat.com/archives/pulp-list/2016-May/msg00054.html

--=20
Randy Barlow


--iFdPMreAEvPorKSdmg267P2rv8WtNtX1h
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJXPiUVAAoJEHhEzLg73SRipRUP/2gfHMf3tcgRZ9pXu0CUOuik
nFZ5OwfXegfLvpzzf8LPynFB1iDTEI2ZD9hqlQmpSSEhMfJg/n+BU/cNisreUeh0
UPDCdRKS+E5Qzx8hjltpbKMGtBfAaGG6ShOYjCoft/v1Q+iofG3hKW4IcY7+fFHa
jLg2JIfaShc3TJiMjqswmnH+5pZBRqj6S0iV64BwF2kdgqyriUO0kn+23jrpmXd9
P0Rf5xY7XqEwsH+NTAaOozSevtywpvzZenFlp3SJLUq1JIZjt2iRL6k9HQz7V8y7
L03saUj8AHEM4hO3pJXEG1Dh8WP0YbeA/jqvtEHmCMNqFi1rtEfyGYrNQm/ThHUl
fqVZ644laSXyxaXEBUQC7zFcnAcNRvLI2KSMzTNAwbtoo69WbAxWMAXj/kOZzITG
TaKKG4OO2bcS4b29foKb5ByzB+CdIVtIc37rZRH6y1Syu+w/qbEAUuawXL/kTUJZ
3SX2ROhz1pVN3s1VqsUo+KR5HWOe0sHW7NfYGHTxIehC5ZPU542TuwrqttE5isra
8zKtJM2uffZcbuzWzaEZSdA/KBszRPEjyGmiu+VrtFJATYEHDWJf+V8oUg24ldqL
pf8JAgkQ1ODKNcbRUNXdUTgzylZqp0YSeKN48ITPj+yr8cezsJB8yrWwi+MECrZ7
+aW6te3li9+VL86p66ww
=8ru2
-----END PGP SIGNATURE-----

--iFdPMreAEvPorKSdmg267P2rv8WtNtX1h--
