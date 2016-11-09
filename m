X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1901" "Wednesday" "9" "November" "2016" "13:28:53" "+0000" "Dominic Cleal" "dominic@cleal.org" "<e83aa49b-8c7d-e662-55bd-8f5a415e38b8@cleal.org>" "62" "[oss-security] CVE-2016-8634: Foreman stored XSS in orgs/locations wizard step" nil nil nil "11" "2016110913:28:53" "[oss-security] CVE-2016-8634: Foreman stored XSS in orgs/locations wizard step" (number mark "U       dominic@clea Nov  9   62/1901  " thread-indent "\"[oss-security] CVE-2016-8634: Foreman stored XSS in orgs/locations wizard step\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28449 invoked by uid 550); 9 Nov 2016 13:29:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28425 invoked from network); 9 Nov 2016 13:29:05 -0000
From: Dominic Cleal <dominic@cleal.org>
To: oss-security@lists.openwall.com
Cc: foreman-security@googlegroups.com
Message-ID: <e83aa49b-8c7d-e662-55bd-8f5a415e38b8@cleal.org>
Date: Wed, 9 Nov 2016 13:28:53 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.4.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="sGJggEB7f6cpCqbKjPBbGvhvl5NNXxvni"
Subject: [oss-security] CVE-2016-8634: Foreman stored XSS in orgs/locations wizard step

--sGJggEB7f6cpCqbKjPBbGvhvl5NNXxvni
Content-Type: multipart/mixed; boundary="JhOObrgQCo1DpRXudcEW3VgxusXat0Lox";
 protected-headers="v1"
From: Dominic Cleal <dominic@cleal.org>
To: oss-security@lists.openwall.com
Cc: foreman-security@googlegroups.com
Message-ID: <e83aa49b-8c7d-e662-55bd-8f5a415e38b8@cleal.org>
Subject: CVE-2016-8634: Foreman stored XSS in orgs/locations wizard step

--JhOObrgQCo1DpRXudcEW3VgxusXat0Lox
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

CVE-2016-8634: Foreman organization/location wizard may run stored XSS
in name

When creating an organization or location in Foreman, if the name
contains HTML then the second step of the wizard will render the HTML.
This occurs in the alert box on the page.

This may permit a stored XSS attack if an organization/location with
HTML in the name is created, then a user is linked directly to this URL.

Mitigation: restrict permissions to organization and location creation,
don't follow untrusted links to Foreman.

This issue was reported by Sanket Jagtap.

Affects Foreman 1.1 and higher
Fix due to be released in Foreman 1.14.0

Patch:
https://github.com/theforeman/foreman/commit/5a573456b5ecb3ba0d24e057722704=
f9afeda8f7

More information:
https://theforeman.org/security.html#2016-8634
http://projects.theforeman.org/issues/17195
https://theforeman.org

--=20
Dominic Cleal
dominic@cleal.org



--JhOObrgQCo1DpRXudcEW3VgxusXat0Lox--

--sGJggEB7f6cpCqbKjPBbGvhvl5NNXxvni
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iFkEARECABkFAlgjJJUSHGRvbWluaWNAY2xlYWwub3JnAAoJEHx9Mm8sK3LMnckA
oMsRyten/8o44CE91FkQW49N4bIdAJ9YIb3TItwPgF+YB6qbbwmW13KhGw==
=ILjF
-----END PGP SIGNATURE-----

--sGJggEB7f6cpCqbKjPBbGvhvl5NNXxvni--
