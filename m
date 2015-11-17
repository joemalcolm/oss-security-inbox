X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1670" "Tuesday" "17" "November" "2015" "17:51:17" "+0100" "Peter Bex" "peter@more-magic.net" "<20151117165117.GB2631@more-magic.net>" "46" "[oss-security] CVE request for path traversal / info leak bug in Spiffy web server" nil nil nil "11" "2015111716:51:17" "[oss-security] CVE request for path traversal / info leak bug in Spiffy web server" (number mark "U       peter@more-m Nov 17   46/1670  " thread-indent "\"[oss-security] CVE request for path traversal / info leak bug in Spiffy web server\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19466 invoked by uid 550); 17 Nov 2015 16:51:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18417 invoked from network); 17 Nov 2015 16:51:25 -0000
Date: Tue, 17 Nov 2015 17:51:17 +0100
From: Peter Bex <peter@more-magic.net>
To: Open Source Security <oss-security@lists.openwall.com>
Message-ID: <20151117165117.GB2631@more-magic.net>
Mail-Followup-To: Open Source Security <oss-security@lists.openwall.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="xXmbgvnjoT4axfJE"
Content-Disposition: inline
X-PGP-Key: http://www.more-magic.net/peter-bex.asc
User-Agent: Mutt/1.5.21 (2010-09-15)
Subject: [oss-security] CVE request for path traversal / info leak bug in Spiffy web server

--xXmbgvnjoT4axfJE
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello all,

I would like to request a CVE for a path traversal vulnerability in
Spiffy, the web server written in CHICKEN Scheme.  The bug allows
one to request arbitrary files due to a problem in the handling of
backslashes in URI path components.

In principle, the bug only affects Windows, but unfortunately due
to another bug in CHICKEN core that causes backslashes to be converted
to slashes, *nix platforms are equally affected.

A workaround to simply block all requests containing backslashes in
path components has been implemented in Spiffy 5.4, and a proper
solution (allowing backslashes on UNIX in CHICKEN versions where
it's safe to do so) will be implemented in a later version, pending
the fix in CHICKEN core.

In other words, the bug applies to all versions of Spiffy prior to 5.4.

The original announcement can be found here:
http://lists.gnu.org/archive/html/chicken-announce/2015-11/msg00000.html

Kind regards,
Peter Bex

--xXmbgvnjoT4axfJE
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQEcBAEBAgAGBQJWS1sFAAoJEBEdufnLRYmwZikH/jIQ3ndNTeWsieKdJ7uHx6GD
L0KWonY6bquvoOjk8/hr/Eowe1LlGOeIVvbpn11Fpu1KsQVtB7ff3rHGhXLv6oZ1
7jk3letPjShuXygXq2OEb5JbHZB6TRbGkw2Px7XBfK3OhNCz9qae+OmP/arFoLtz
3jbJFkse3tWdmRFqOFL4nfHIvFyxIOEvQUlK7M3QfTX5Nu9uk02Mc7hsvt53/Gax
5a8d/+Gd/cEtl7B/5apuiNaG+QKAuy+Vzjgf5SQuEACTgzwGHYGvxD5cUvClrsXG
XhlxfZUzo8Pknd0NFVYZzKSacMVS0NNuL2aKs1VFA7pp63MK7yS1/1ZGe+6rAQk=
=6A2D
-----END PGP SIGNATURE-----

--xXmbgvnjoT4axfJE--
