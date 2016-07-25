X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2407" "Monday" "25" "July" "2016" "16:16:06" "+0100" "Dominic Cleal" "dominic@cleal.org" "<57962D36.9000102@cleal.org>" "75" "[oss-security] CVE-2016-4451, CVE-2016-4475: Foreman organizations/locations API/UI privilege escalations" nil nil nil "7" "2016072515:16:06" "[oss-security] CVE-2016-4451, CVE-2016-4475: Foreman organizations/locations API/UI privilege escalations" (number mark "U       dominic@clea Jul 25   75/2407  " thread-indent "\"[oss-security] CVE-2016-4451, CVE-2016-4475: Foreman organizations/locations API/UI privilege escalations\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30427 invoked by uid 550); 25 Jul 2016 15:16:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30406 invoked from network); 25 Jul 2016 15:16:22 -0000
To: oss-security@lists.openwall.com
Cc: foreman-security@googlegroups.com
From: Dominic Cleal <dominic@cleal.org>
Message-ID: <57962D36.9000102@cleal.org>
Date: Mon, 25 Jul 2016 16:16:06 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.2.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="tDOw0xt6J1noOKbela2bEI6jBPbLqiUji"
Subject: [oss-security] CVE-2016-4451, CVE-2016-4475: Foreman organizations/locations API/UI
 privilege escalations

--tDOw0xt6J1noOKbela2bEI6jBPbLqiUji
Content-Type: multipart/mixed; boundary="uWL9xiwqFNNv03XQJ9bBU3rp9xVjfhO89"
From: Dominic Cleal <dominic@cleal.org>
To: oss-security@lists.openwall.com
Cc: foreman-security@googlegroups.com
Message-ID: <57962D36.9000102@cleal.org>
Subject: CVE-2016-4451, CVE-2016-4475: Foreman organizations/locations API/UI
 privilege escalations

--uWL9xiwqFNNv03XQJ9bBU3rp9xVjfhO89
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

1) CVE-2016-4451: organizations/locations privilege escalation in
Foreman API

When accessing Foreman as a user limited to specific organization, if
users know other organization id and have unlimited filters they can
access/modify other organization data. They just have to set the id as
API parameter.

Affects Foreman 1.7 and higher
Fix released in Foreman 1.12.0 and 1.11.3


2) CVE-2016-4475: privilege escalation in organizations/locations API and UI

When accessing Foreman as a user limited to specific organization or
location, these are not taken into account in the API or parts of the
UI. This allows a user to view, edit and delete organizations and
locations they are not associated with if they have the requisite
permissions.

Affects Foreman 1.1 and higher
Fix released in Foreman 1.12.0 and 1.11.4


Mitigation for both vulnerabilities: make sure you have filters
restricted to organizations or locations when you limit user by
assigning them to particular organizations or locations.

Patches:
https://github.com/theforeman/foreman/commit/1144040f444b4bf4aae81940a150b2=
6b23b4623c
https://github.com/theforeman/foreman/commit/a30ab44ed6f140f1791afc51a1e448=
afc2ff28f9

More information:
https://theforeman.org/security.html#2016-4451
http://projects.theforeman.org/issues/15182
https://theforeman.org/security.html#2016-4475
http://projects.theforeman.org/issues/15268
https://theforeman.org

--=20
Dominic Cleal
dominic@cleal.org


--uWL9xiwqFNNv03XQJ9bBU3rp9xVjfhO89--

--tDOw0xt6J1noOKbela2bEI6jBPbLqiUji
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAleWLTYACgkQfH0ybywrcswOWQCglqv+5H9DNG1/r7AfvllXiGaX
CW0AnRvzoHplozORw7Av+eJg8ndyejwV
=tUxd
-----END PGP SIGNATURE-----

--tDOw0xt6J1noOKbela2bEI6jBPbLqiUji--
