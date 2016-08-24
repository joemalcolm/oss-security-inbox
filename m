X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1659" "Wednesday" "24" "August" "2016" "14:07:01" "+0100" "Dominic Cleal" "dominic@cleal.org" "<57BD9BF5.2040501@cleal.org>" "56" "[oss-security] CVE-2016-6319: Foreman stored XSS in form label helpers" nil nil nil "8" "2016082413:07:01" "[oss-security] CVE-2016-6319: Foreman stored XSS in form label helpers" (number mark "U       dominic@clea Aug 24   56/1659  " thread-indent "\"[oss-security] CVE-2016-6319: Foreman stored XSS in form label helpers\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19764 invoked by uid 550); 24 Aug 2016 13:07:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19734 invoked from network); 24 Aug 2016 13:07:14 -0000
From: Dominic Cleal <dominic@cleal.org>
To: oss-security@lists.openwall.com
Cc: foreman-security@googlegroups.com
Message-ID: <57BD9BF5.2040501@cleal.org>
Date: Wed, 24 Aug 2016 14:07:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.2.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="loXu9PTBrTG4AVSgArhqdOJ6wdGSIU9cR"
Subject: [oss-security] CVE-2016-6319: Foreman stored XSS in form label helpers

--loXu9PTBrTG4AVSgArhqdOJ6wdGSIU9cR
Content-Type: multipart/mixed; boundary="vNwgdPl2xX4I6ggtdE7wkE3aQM5aPorMw"
From: Dominic Cleal <dominic@cleal.org>
To: oss-security@lists.openwall.com
Cc: foreman-security@googlegroups.com
Message-ID: <57BD9BF5.2040501@cleal.org>
Subject: CVE-2016-6319: Foreman stored XSS in form label helpers

--vNwgdPl2xX4I6ggtdE7wkE3aQM5aPorMw
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

CVE-2016-6319: Foreman stored XSS in form label helpers

The "label" parameter of all form helpers used to construct web UI
components was not escaped allowing XSS (cross-site scripting). The
Foreman itself did not contain exploitable code but other plugins that
relied on these form helpers could be vulnerable. One known vulnerable
plugin is Remote Execution. All versions of this plugin are affected.

Affects Foreman 1.6.0 and higher
Fix released in Foreman 1.12.2

Patch:
https://github.com/theforeman/foreman/commit/0f35fe14acf0d0d3b55e9337bc5e2b=
9640ff2372

More information:
https://theforeman.org/security.html#2016-6319
http://projects.theforeman.org/issues/16024
https://theforeman.org

--=20
Dominic Cleal
dominic@cleal.org





--vNwgdPl2xX4I6ggtdE7wkE3aQM5aPorMw--

--loXu9PTBrTG4AVSgArhqdOJ6wdGSIU9cR
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAle9m/UACgkQfH0ybywrcsxYUACghiLgx7vnUGPab43nGoVDN1Ma
eDcAoIDSkL3opX81YbEubxQd6RYbGZYH
=9t0B
-----END PGP SIGNATURE-----

--loXu9PTBrTG4AVSgArhqdOJ6wdGSIU9cR--
