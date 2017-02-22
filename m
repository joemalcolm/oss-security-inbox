X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1896" "Wednesday" "22" "February" "2017" "13:00:26" "+0000" "Dominic Cleal" "dominic@cleal.org" "<411848dc-8ecb-ed81-1142-c8cce7828cb1@cleal.org>" "60" "[oss-security] CVE-2016-7078: Foreman organization/location authorization vulnerability" nil nil nil "2" "2017022213:00:26" "[oss-security] CVE-2016-7078: Foreman organization/location authorization vulnerability" (number mark "U       dominic@clea Feb 22   60/1896  " thread-indent "\"[oss-security] CVE-2016-7078: Foreman organization/location authorization vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11946 invoked by uid 550); 22 Feb 2017 13:00:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11928 invoked from network); 22 Feb 2017 13:00:38 -0000
To: oss-security@lists.openwall.com
Cc: foreman-security@googlegroups.com
From: Dominic Cleal <dominic@cleal.org>
Message-ID: <411848dc-8ecb-ed81-1142-c8cce7828cb1@cleal.org>
Date: Wed, 22 Feb 2017 13:00:26 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.7.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="TKOH9FgfBPqns4al6JjQ3L79LFJW78Squ"
Subject: [oss-security] CVE-2016-7078: Foreman organization/location authorization
 vulnerability

--TKOH9FgfBPqns4al6JjQ3L79LFJW78Squ
Content-Type: multipart/mixed; boundary="FEeHj7vpr59mWQmXejJvWJBuaxDp6hHxT";
 protected-headers="v1"
From: Dominic Cleal <dominic@cleal.org>
To: oss-security@lists.openwall.com
Cc: foreman-security@googlegroups.com
Message-ID: <411848dc-8ecb-ed81-1142-c8cce7828cb1@cleal.org>
Subject: CVE-2016-7078: Foreman organization/location authorization
 vulnerability

--FEeHj7vpr59mWQmXejJvWJBuaxDp6hHxT
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

CVE-2016-7078: Foreman user with no organizations or locations can see
all resources

A user account that is associated to no organizations or locations is
able to view resources from all organizations/locations in the web UI or
API, when either the organization or location feature is enabled. The
user remains subject to permissions and filters on their assigned roles.

Mitigation: ensure all users are assigned to at least one organization
or location, or disable the feature if unused.

This issue was reported by Daniel Lobato Garcia.

Affects all known Foreman versions
Fix due to be released in Foreman 1.15.0

Patch:
https://github.com/theforeman/foreman/commit/5f606e11cf39719bf62f8b1f339686=
1b32387905

More information:
https://theforeman.org/security.html#2016-7078
http://projects.theforeman.org/issues/16982
https://theforeman.org

--=20
Dominic Cleal
dominic@cleal.org


--FEeHj7vpr59mWQmXejJvWJBuaxDp6hHxT--

--TKOH9FgfBPqns4al6JjQ3L79LFJW78Squ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iFkEARECABkFAliti2oSHGRvbWluaWNAY2xlYWwub3JnAAoJEHx9Mm8sK3LMY68A
nRgoSNyOJnkHBF9BhRi8SsyE1ECRAKCeJ0wtDoAtsPUueRtoGa9Nm3E2KQ==
=aB5+
-----END PGP SIGNATURE-----

--TKOH9FgfBPqns4al6JjQ3L79LFJW78Squ--
