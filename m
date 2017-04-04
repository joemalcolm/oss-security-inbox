X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1714" "Tuesday" "4" "April" "2017" "08:06:14" "+0100" "Dominic Cleal" "dominic@cleal.org" "<99c89101-3138-4cb5-a193-c92250736aab@cleal.org>" "59" "[oss-security] CVE-2017-2667: Hammer CLI SSL certificate verification disabled" nil nil nil "4" "2017040407:06:14" "[oss-security] CVE-2017-2667: Hammer CLI SSL certificate verification disabled" (number mark "U       dominic@clea Apr  4   59/1714  " thread-indent "\"[oss-security] CVE-2017-2667: Hammer CLI SSL certificate verification disabled\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 12078 invoked by uid 550); 4 Apr 2017 07:06:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12048 invoked from network); 4 Apr 2017 07:06:26 -0000
From: Dominic Cleal <dominic@cleal.org>
To: oss-security@lists.openwall.com
Cc: foreman-security@googlegroups.com
Message-ID: <99c89101-3138-4cb5-a193-c92250736aab@cleal.org>
Date: Tue, 4 Apr 2017 08:06:14 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.8.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="bU5R02j1EgmvpFqIIf072MX5psuKxC6Vl"
Subject: [oss-security] CVE-2017-2667: Hammer CLI SSL certificate verification disabled

--bU5R02j1EgmvpFqIIf072MX5psuKxC6Vl
Content-Type: multipart/mixed; boundary="ciSMwlFkLB2c0jesG2p1CG1R6VfM7X794";
 protected-headers="v1"
From: Dominic Cleal <dominic@cleal.org>
To: oss-security@lists.openwall.com
Cc: foreman-security@googlegroups.com
Message-ID: <99c89101-3138-4cb5-a193-c92250736aab@cleal.org>
Subject: CVE-2017-2667: Hammer CLI SSL certificate verification disabled

--ciSMwlFkLB2c0jesG2p1CG1R6VfM7X794
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

CVE-2017-2667: SSL/HTTPS server certificates are not verified by default
in Hammer CLI

Hammer CLI, a REST API-based CLI for Foreman, initiated HTTPS
connections via the apipie-bindings and rest-client libraries without
verifying the SSL certificate presented by the server. This could allow
for man-in-the-middle attack.

This issue was reported by Tomas Strachota.

Affects all known Hammer CLI versions
Fix released in Hammer CLI 0.10.0

Patch:
https://github.com/theforeman/hammer-cli/commit/74b926ae24f47f1d93b778e06b6=
4935e57b60e33

More information:
https://theforeman.org/security.html#2017-2667
http://projects.theforeman.org/issues/19033
https://theforeman.org

--=20
Dominic Cleal
dominic@cleal.org





--ciSMwlFkLB2c0jesG2p1CG1R6VfM7X794--

--bU5R02j1EgmvpFqIIf072MX5psuKxC6Vl
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iFkEARECABkFAljjReYSHGRvbWluaWNAY2xlYWwub3JnAAoJEHx9Mm8sK3LMhJwA
nR9JWJ0EKtlp7dFm8ydmEg+vKeKHAJ9b7A+oh6vHbUQIkHaR6MkrazHPmA==
=Jcnt
-----END PGP SIGNATURE-----

--bU5R02j1EgmvpFqIIf072MX5psuKxC6Vl--
