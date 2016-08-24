X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1629" "Wednesday" "24" "August" "2016" "14:08:39" "+0100" "Dominic Cleal" "dominic@cleal.org" "<57BD9C57.9030203@cleal.org>" "60" "[oss-security] CVE-2016-6320: Foreman stored XSS in network interface device identifiers" nil nil nil "8" "2016082413:08:39" "[oss-security] CVE-2016-6320: Foreman stored XSS in network interface device identifiers" (number mark "U       dominic@clea Aug 24   60/1629  " thread-indent "\"[oss-security] CVE-2016-6320: Foreman stored XSS in network interface device identifiers\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30108 invoked by uid 550); 24 Aug 2016 13:08:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30090 invoked from network); 24 Aug 2016 13:08:51 -0000
From: Dominic Cleal <dominic@cleal.org>
To: oss-security@lists.openwall.com
Cc: foreman-security@googlegroups.com
Message-ID: <57BD9C57.9030203@cleal.org>
Date: Wed, 24 Aug 2016 14:08:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.2.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="KjBWs3t7BMuPpOTJhS4HbmfKfXfiECGEE"
Subject: [oss-security] CVE-2016-6320: Foreman stored XSS in network interface device
 identifiers

--KjBWs3t7BMuPpOTJhS4HbmfKfXfiECGEE
Content-Type: multipart/mixed; boundary="c9jOB0qOIv94wHcsf92bpie5rfeCEWhVa"
From: Dominic Cleal <dominic@cleal.org>
To: oss-security@lists.openwall.com
Cc: foreman-security@googlegroups.com
Message-ID: <57BD9C57.9030203@cleal.org>
Subject: CVE-2016-6320: Foreman stored XSS in network interface device
 identifiers

--c9jOB0qOIv94wHcsf92bpie5rfeCEWhVa
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

CVE-2016-6320: Foreman stored XSS in network interface device identifiers

Network interface identifiers stored for hosts may contain HTML or
JavaScript that allows a stored XSS (cross-site scripting) vulnerability
when later viewing the host edit form, which contains detail on each
stored network interface.

This issue was reported by Sanket Jagtap.

Affects Foreman 1.8.0 and higher
Fix released in Foreman 1.12.2

Patch:
https://github.com/theforeman/foreman/commit/53081ea14b30d66f0d67b62fe950a2=
c1463225f5

More information:
https://theforeman.org/security.html#2016-6320
http://projects.theforeman.org/issues/16022
https://theforeman.org

--=20
Dominic Cleal
dominic@cleal.org







--c9jOB0qOIv94wHcsf92bpie5rfeCEWhVa--

--KjBWs3t7BMuPpOTJhS4HbmfKfXfiECGEE
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAle9nFcACgkQfH0ybywrcsyqlQCfX/E4E4PIxmXnywjC6aXOkLCX
ViMAn1tmh3DjoQQSM6+kS7UFy7YFuiMG
=dosJ
-----END PGP SIGNATURE-----

--KjBWs3t7BMuPpOTJhS4HbmfKfXfiECGEE--
