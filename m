X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1462" "Tuesday" "17" "October" "2017" "18:25:07" "+0200" "Bastian Blank" "waldi@debian.org" "<20171017162507.e7lx6fbnleugoxxa@waldi.eu.org>" "46" "[oss-security] CVE-2017-8805: Unsafe symlinks not filtered in Debian mirror script ftpsync" "^Date:" nil nil "10" "2017101716:25:07" "[oss-security] CVE-2017-8805: Unsafe symlinks not filtered in Debian mirror script ftpsync" (number mark "        waldi@debian Oct 17   46/1462  " thread-indent "\"[oss-security] CVE-2017-8805: Unsafe symlinks not filtered in Debian mirror script ftpsync\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30685 invoked by uid 550); 17 Oct 2017 16:26:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30111 invoked from network); 17 Oct 2017 16:25:22 -0000
X-Virus-Scanned: Debian amavisd-new at mail.thinkmo.de
Message-ID: <20171017162507.e7lx6fbnleugoxxa@waldi.eu.org>
Mail-Followup-To: Bastian Blank <waldi@debian.org>,
	oss-security@lists.openwall.com
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="yvhiwt4m3vuacpob"
Content-Disposition: inline
User-Agent: NeoMutt/20170609 (1.8.3)
Date: Tue, 17 Oct 2017 18:25:07 +0200
From: Bastian Blank <waldi@debian.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2017-8805: Unsafe symlinks not filtered in Debian mirror script
 ftpsync
To: oss-security@lists.openwall.com

--yvhiwt4m3vuacpob
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi folks

ftpsync is the tool we use to mirror Debian everywhere.  It uses rsync
to do the heavy lifting.

rsync can copy symlinks.  We enable this option, as the Debian tree
includes symlinks in various of locations.  Unless a special option
(--safe-links) is given, such symlinks can point to arbitrary locations,
even outside of the mirror tree.

An attacker with the ability to add symlinks to the upstream mirror can
create symlinks to arbitrary files or even directories.  Depending on
the config, a HTTP server will follow such symlinks.

Upstream patch:
---------------
  -> https://anonscm.debian.org/cgit/mirror/archvsync.git/commit/?id=3Dd1ca=
2ab2210990b6dfb664cd6776a41b71c48016

Regards,
Bastian

--=20
Beam me up, Scotty!

--yvhiwt4m3vuacpob
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEER3HMN63jdS1rqjxLbZOIhYpp/lEFAlnmLuMACgkQbZOIhYpp
/lGlwQgAmDyk63T0KXOjRVGuXRQorspIQidn/AwDs4F5k+IkhcyaBXhqbx/zFHDw
Onl9mvvX/qO1nSPZOYFCpO9KF89a3SPyduIQxpdYBTx4TuGNSw/pfWZ+KzU2bG4h
jhEgJwx9IIW7L7vJ3U9RqcGglxaoQpeYXODEOnMeX7ztZHH8pzaitZQzX2u3Hc45
P2DalcYkSJgVZWa25K87L7Ys+QvKfBulo+QQeuX5T1+0EDvy4e04yfPD16r+iht/
ELNDoqKiGw4G0OQjVOUGFDTXiGOKhzOkAHcl9VGi5Cuc3p4r6xLVp0zB0UTnfefC
H9MXtboOWdVpyLVzo4xbnYCXN8xkNA==
=DzOA
-----END PGP SIGNATURE-----

--yvhiwt4m3vuacpob--
