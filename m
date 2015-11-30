X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1632" "Monday" "30" "November" "2015" "11:05:39" "+0100" "Yves-Alexis Perez" "corsac@debian.org" "<1448877939.5015.30.camel@debian.org>" "46" "[oss-security] CVE request for keepassx password database export" "^Date:" nil nil "11" "2015113010:05:39" "[oss-security] CVE request for keepassx password database export" (number mark "        corsac@debia Nov 30   46/1632  " thread-indent "\"[oss-security] CVE request for keepassx password database export\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 14234 invoked by uid 550); 30 Nov 2015 10:06:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 14212 invoked from network); 30 Nov 2015 10:06:07 -0000
Message-ID: <1448877939.5015.30.camel@debian.org>
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-xqnvb32gvmVh7TYgTwql"
X-Mailer: Evolution 3.18.2-1 
Mime-Version: 1.0
Date: Mon, 30 Nov 2015 11:05:39 +0100
From: Yves-Alexis Perez <corsac@debian.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request for keepassx password database export
To: oss-security@lists.openwall.com, dev@keepassx.org, Reinhard Tartler
	 <siretart@tauware.de>

--=-xqnvb32gvmVh7TYgTwql
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

it seems that keepassx 0.4.3 export function are a bit buggy. Starting an
export (using File / Export to / KeepassX XML file) and cancelling it leads=
 to
KeepassX saving a cleartext XML file in ~/.xml without any warning.

This was reported privately to the Debian security team today, but it was
actually reported publicly earlier in the Debian BTS [1]. Unfortunately the
maintainer didn't acknowledge the bug or forwarded it upstream, apparently.

It's not a terrible bug per se because leaking a user password file on purp=
ose
would still require a lot of social engineering skills, but it still look l=
ike
it should get a CVE (an user explicitly cancelling the export surely doesn't
expect its passwords to be there in a hidden file.

Can a CVE be assigned for this?

[1]=C2=A0https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=3D791858[1
--=20
Yves-Alexis


--=-xqnvb32gvmVh7TYgTwql
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAABCAAGBQJWXB9zAAoJEG3bU/KmdcClXRMH/i5LIjlXLSv8OWdQ/GgB4Vj+
1UdV3NevlWTMYM7iuPqDowYLgx0OtPCjWuYHGobfIYCnRpbisbAET5e02jy+PFtR
TgrqvjRUodIgz1t7qqAOHLcLoktbTXayuZeyrx1YV6c3m9EwfNmPfbi31pg8irFq
MlHo5cmzdP8wUScGpYeYt4UzspkOwfV39vIayCZfZMQW5i5h5ygApAgFhcjaLqMY
ArtYSM10mIDJrOmn8jhBsmzHAOF5wn0wW+cOfBcAiPGEnOpRmUr32018J151hQGQ
MieMvEcnAL+l+EexefY4S1AX35zFAGiBYWqEfUk0NCJLNryPK+LGZfJ9LyPAaks=
=pxd+
-----END PGP SIGNATURE-----

--=-xqnvb32gvmVh7TYgTwql--
