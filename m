X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1602" "Sunday" "14" "February" "2016" "16:15:33" "+0100" "Paul Gevers" "elbrus@debian.org" "<56C09A15.8060108@debian.org>" "41" "[oss-security] Re: CVE Request: cacti: Authentication using web authentication as a user, not in the,cacti database allows complete access" "^Date:" nil nil "2" "2016021415:15:33" "[oss-security] Re: CVE Request: cacti: Authentication using web authentication as a user, not in the,cacti database allows complete access" (number mark "U       elbrus@debia Feb 14   41/1602  " thread-indent "\"[oss-security] Re: CVE Request: cacti: Authentication using web authentication as a user, not in the,cacti database allows complete access\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3299 invoked by uid 550); 14 Feb 2016 15:33:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 18140 invoked from network); 14 Feb 2016 15:15:59 -0000
X-Brand: +briyaPmxrk=
X-Enigmail-Draft-Status: N1110
Message-ID: <56C09A15.8060108@debian.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Icedove/38.5.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="s3wJsOnqh0OWbiUkQ9bq8bjIR9o1UkViL"
X-OriginalArrivalTime: 14 Feb 2016 15:15:47.0696 (UTC) FILETIME=[950E4700:01D1673A]
X-RcptDomain: lists.openwall.com
Date: Sun, 14 Feb 2016 16:15:33 +0100
From: Paul Gevers <elbrus@debian.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: cacti: Authentication using web authentication as a
 user, not in the,cacti database allows complete access
To: oss-security@lists.openwall.com

--s3wJsOnqh0OWbiUkQ9bq8bjIR9o1UkViL
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

[Sorry for breaking the thread, I don't have access to the original mail]

Just a note regarding the proposed patch for CVE-2016-2313.

As I already noted in the original upstream bug report=C2=B9, I am not
convinced that the "bug" was not (accidental) mis-configuration. I am
convinced that the proposed patch is wrong and told upstream about it.
The patch prevents features of cacti that allow an authenticated user
who is not in the cacti database to get *specified* access to cacti. I
don't know how many setups are using this feature, but the patch is a
regression for those setups. The patch does not change anything in the
configuration tab in the UI, so this at least leads to a confusing
situation.

Paul

=C2=B9 http://bugs.cacti.net/view.php?id=3D2656


--s3wJsOnqh0OWbiUkQ9bq8bjIR9o1UkViL
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJWwJobAAoJEJxcmesFvXUKsAcIAM68zQY6GWLf/O4+mfo4uFrU
qUB9NIcDsFFHQKfJwfFz6MphxDpgeW+rbuFDnRgWk+fwNDaybNl4aK5MOGTq2+m/
6Ukdz1ebCoaOjeGwv9hQigpjN7YKLfapz+CX4pcMKX7zydgMsNxVaZGzB1OfPtcl
4Jp9Ag8JduCnRfUCOywSF0kinOV2RFW5myQCNAgICy9BuLgewSUyfqTbRaxofKL6
9uqkvotDNO0I22QVrofL/pzE3gbknfC6qLSVlezqWNe6+jr+c+R1l+bzXUj7XXbg
GeegQhBHbtfn0j1ccWe9lzLmGNknp9wqVNTYOQTbUDKLWq10Mtzqo43CJNooMJM=
=jJ6s
-----END PGP SIGNATURE-----

--s3wJsOnqh0OWbiUkQ9bq8bjIR9o1UkViL--
