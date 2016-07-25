X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1951" "Monday" "25" "July" "2016" "16:22:20" "+0100" "Dominic Cleal" "dominic@cleal.org" "<57962EAC.7050401@cleal.org>" "61" "[oss-security] CVE-2016-5390: Foreman information disclosure in host interfaces/parameters API" nil nil nil "7" "2016072515:22:20" "[oss-security] CVE-2016-5390: Foreman information disclosure in host interfaces/parameters API" (number mark "U       dominic@clea Jul 25   61/1951  " thread-indent "\"[oss-security] CVE-2016-5390: Foreman information disclosure in host interfaces/parameters API\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21539 invoked by uid 550); 25 Jul 2016 15:22:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21518 invoked from network); 25 Jul 2016 15:22:32 -0000
From: Dominic Cleal <dominic@cleal.org>
To: oss-security@lists.openwall.com
Cc: foreman-security@googlegroups.com
Message-ID: <57962EAC.7050401@cleal.org>
Date: Mon, 25 Jul 2016 16:22:20 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.2.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="iNCFwHL3fObQ9KbRWN4u2DPom0NQhACu5"
Subject: [oss-security] CVE-2016-5390: Foreman information disclosure in host
 interfaces/parameters API

--iNCFwHL3fObQ9KbRWN4u2DPom0NQhACu5
Content-Type: multipart/mixed; boundary="pJkP0W6j7Pff05wfx1khOaclRIMVIgIL7"
From: Dominic Cleal <dominic@cleal.org>
To: oss-security@lists.openwall.com
Cc: foreman-security@googlegroups.com
Message-ID: <57962EAC.7050401@cleal.org>
Subject: CVE-2016-5390: Foreman information disclosure in host
 interfaces/parameters API

--pJkP0W6j7Pff05wfx1khOaclRIMVIgIL7
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

CVE-2016-5390: Foreman information disclosure in host
interfaces/parameters APIs

Non-admin users with the view_hosts permission containing a filter are
able to access API routes beneath "hosts" such as GET
/api/v2/hosts/secrethost/interfaces without the filter being taken into
account. This allows users to access network interface details
(including BMC login details) for any host.

The filter is only correctly used when accessing the main host details
(/api/v2/hosts/secrethost). Access to the "nested" routes, which
includes interfaces, reports, parameters, audits, facts and Puppet
classes, is not authorized beyond requiring any view_hosts permission.

Affects Foreman 1.10.0 and higher
Fix released in Foreman 1.12.1 and 1.11.4

Patch:
https://github.com/theforeman/foreman/commit/7a86dcfe6b36dd43cd6163ce70599e=
53f09cc217

More information:
https://theforeman.org/security.html#2016-5390
http://projects.theforeman.org/issues/15653
https://theforeman.org

--=20
Dominic Cleal
dominic@cleal.org



--pJkP0W6j7Pff05wfx1khOaclRIMVIgIL7--

--iNCFwHL3fObQ9KbRWN4u2DPom0NQhACu5
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAleWLqwACgkQfH0ybywrcswjzwCfTFfAV2DW/Wdh4oLEYr+1ekNS
aMsAoJJ/oLBtFAVo9StSv5XVtB83y0rF
=01jf
-----END PGP SIGNATURE-----

--iNCFwHL3fObQ9KbRWN4u2DPom0NQhACu5--
