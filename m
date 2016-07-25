X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1732" "Monday" "25" "July" "2016" "16:20:29" "+0100" "Dominic Cleal" "dominic@cleal.org" "<57962E3D.3090209@cleal.org>" "58" "[oss-security] CVE-2016-4995: Foreman information disclosure through unauthorized template previews" nil nil nil "7" "2016072515:20:29" "[oss-security] CVE-2016-4995: Foreman information disclosure through unauthorized template previews" (number mark "U       dominic@clea Jul 25   58/1732  " thread-indent "\"[oss-security] CVE-2016-4995: Foreman information disclosure through unauthorized template previews\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 10171 invoked by uid 550); 25 Jul 2016 15:20:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 10151 invoked from network); 25 Jul 2016 15:20:40 -0000
To: oss-security@lists.openwall.com
Cc: foreman-security@googlegroups.com
From: Dominic Cleal <dominic@cleal.org>
Message-ID: <57962E3D.3090209@cleal.org>
Date: Mon, 25 Jul 2016 16:20:29 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.2.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="aPN0AJOHnecNjiU06iCfIAcKRokk2Vb4K"
Subject: [oss-security] CVE-2016-4995: Foreman information disclosure through unauthorized
 template previews

--aPN0AJOHnecNjiU06iCfIAcKRokk2Vb4K
Content-Type: multipart/mixed; boundary="MXdecD7UsSddQMvjjnVLF0q29HhkJLsiU"
From: Dominic Cleal <dominic@cleal.org>
To: oss-security@lists.openwall.com
Cc: foreman-security@googlegroups.com
Message-ID: <57962E3D.3090209@cleal.org>
Subject: CVE-2016-4995: Foreman information disclosure through unauthorized
 template previews

--MXdecD7UsSddQMvjjnVLF0q29HhkJLsiU
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

CVE-2016-4995: Foreman information disclosure through unauthorized
template previews

Users who are logged in with permissions to view some hosts are able to
preview provisioning templates for any host by specifying its hostname
in the URL, as the specific view_hosts permissions and filters aren=E2=80=
=99t
checked.

If the organization or location features are enabled, the user will
still be restricted to their associated orgs/locs.

Affects Foreman 1.11.0 and higher
Fix released in Foreman 1.12.1 and 1.11.4

Patch:
https://github.com/theforeman/foreman/commit/c3c186de12be15e55d9582e54659f7=
65304a1073

More information:
https://theforeman.org/security.html#2016-4995
http://projects.theforeman.org/issues/15490
https://theforeman.org

--=20
Dominic Cleal
dominic@cleal.org


--MXdecD7UsSddQMvjjnVLF0q29HhkJLsiU--

--aPN0AJOHnecNjiU06iCfIAcKRokk2Vb4K
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAleWLj0ACgkQfH0ybywrcsyyJgCbBkIoGLP5Hn5Xg9N3mPw/nnI/
46wAni6xNCWM17TTKfcV0WL/JoQpn/b6
=P+s7
-----END PGP SIGNATURE-----

--aPN0AJOHnecNjiU06iCfIAcKRokk2Vb4K--
