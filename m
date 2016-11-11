X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2138" "Friday" "11" "November" "2016" "12:56:55" "+0000" "Dominic Cleal" "dominic@cleal.org" "<b9c127bf-b3c2-c143-b432-f0574481484c@cleal.org>" "67" "[oss-security] CVE-2016-8639: Foreman stored XSS in orgs/locations in settings" nil nil nil "11" "2016111112:56:55" "[oss-security] CVE-2016-8639: Foreman stored XSS in orgs/locations in settings" (number mark "U       dominic@clea Nov 11   67/2138  " thread-indent "\"[oss-security] CVE-2016-8639: Foreman stored XSS in orgs/locations in settings\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26220 invoked by uid 550); 11 Nov 2016 12:57:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26201 invoked from network); 11 Nov 2016 12:57:07 -0000
From: Dominic Cleal <dominic@cleal.org>
To: oss-security@lists.openwall.com
Cc: foreman-security@googlegroups.com
Message-ID: <b9c127bf-b3c2-c143-b432-f0574481484c@cleal.org>
Date: Fri, 11 Nov 2016 12:56:55 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.4.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="M6139h9t95m8LPopljTQRe39HxfuRH8xg"
Subject: [oss-security] CVE-2016-8639: Foreman stored XSS in orgs/locations in settings

--M6139h9t95m8LPopljTQRe39HxfuRH8xg
Content-Type: multipart/mixed; boundary="t4PfBQ3sCogutrPuwFh7HTG8bAmfCaWJE";
 protected-headers="v1"
From: Dominic Cleal <dominic@cleal.org>
To: oss-security@lists.openwall.com
Cc: foreman-security@googlegroups.com
Message-ID: <b9c127bf-b3c2-c143-b432-f0574481484c@cleal.org>
Subject: CVE-2016-8639: Foreman stored XSS in orgs/locations in settings

--t4PfBQ3sCogutrPuwFh7HTG8bAmfCaWJE
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

CVE-2016-8639: Foreman settings dropdown menus may run stored XSS in
organization/location name

If an organization or location is created with a name containing HTML,
then the administrator-only Settings page will render the HTML as part
of a dropdown menu.

This may permit a stored XSS attack if an organization/location with
HTML in the name is created, then an administrator attempts to change
the default organization/location settings.

Mitigation: restrict permissions to organization and location creation,
use the API or CLI instead to change the default organization/location
settings.

Note: this CVE identifier has been assigned retrospectively, to describe
a vulnerability that was fixed during a refactoring of the affected code.

This issue was reported by Sanket Jagtap.

Affects Foreman 1.11.0 to 1.12.4
Fix released in Foreman 1.13.0

Patch (a refactoring):
https://github.com/theforeman/foreman/commit/d163507797c5d9c20249aa4d858465=
cbb74be229

More information:
https://theforeman.org/security.html#2016-8639
http://projects.theforeman.org/issues/15037
https://theforeman.org

--=20
Dominic Cleal
dominic@cleal.org



--t4PfBQ3sCogutrPuwFh7HTG8bAmfCaWJE--

--M6139h9t95m8LPopljTQRe39HxfuRH8xg
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iFkEARECABkFAlglwBcSHGRvbWluaWNAY2xlYWwub3JnAAoJEHx9Mm8sK3LMutUA
n2/JMUCD2Ag8tcnRe4u4JG9jcNUlAJ91/gsWlFDdPe31chYUAob4Yk60zA==
=RzFL
-----END PGP SIGNATURE-----

--M6139h9t95m8LPopljTQRe39HxfuRH8xg--
