X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1536" "Saturday" "28" "March" "2015" "23:52:12" "+0100" "Yves-Alexis Perez" "corsac@debian.org" "<1427583132.25801.79.camel@debian.org>" "43" "[oss-security] CVE request (Debian specific): slapd: dangerous access rule in default config" nil nil nil "3" "2015032822:52:12" "[oss-security] CVE request (Debian specific): slapd: dangerous access rule in default config" (number mark "        corsac@debia Mar 28   43/1536  " thread-indent "\"[oss-security] CVE request (Debian specific): slapd: dangerous access rule in default config\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9982 invoked by uid 550); 28 Mar 2015 22:52:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9962 invoked from network); 28 Mar 2015 22:52:31 -0000
Message-ID: <1427583132.25801.79.camel@debian.org>
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-L+LMb+ODLm9QZrklqZLM"
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
Cc: team@security.debian.org
Date: Sat, 28 Mar 2015 23:52:12 +0100
From: Yves-Alexis Perez <corsac@debian.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request (Debian specific): slapd: dangerous access rule in
 default config
To: oss-security@lists.openwall.com

--=-L+LMb+ODLm9QZrklqZLM
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Debian bug #761406 was fixed in Debian sid some time ago, but no CVE was
assigned. In order to raise some exposure, and make sure admins
check/fix their config, we'll issue a DSA, so I'm requesting a CVE for
this.

The problem is that by default LDAP users have write access to their own
attributes. If LDAP is used to grant permissions, and those permissions
are stored as user attributes (for example by using the ou), then an
user can modify its own permissions, which is usually not wanted.

It's a Debian specific issue, but the OpenLDAP documentation [2]
actually recommends something like that.

Thanks in advance,

[1]: https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=3D761406
[2]: http://www.openldap.org/doc/admin24/guide.html#Basic ACLs
--=20
Yves-Alexis

--=-L+LMb+ODLm9QZrklqZLM
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAABCAAGBQJVFzCdAAoJEG3bU/KmdcClccYH/i8cCrAxZKkSb2g2zGh2Lo3h
cqrcXFG+WA8L+4WW37NE5G7P/G3DnV/t7GPquG34oFmJplQhO47vrbqq9bJkiDgv
KFAPOiGLfG5Uq4rj98AjvVCFIDEnh8ZD3UxyJ9XoaAfAM+rYUfz6AJPx6T8LKWjy
Lnsm3jDfyIQomJJFkPIwxZa4gNi4n0I3ruzFqWV8jFa9UgsEHe0IGYjnx2MMmffB
8ap1+U8Nb592NOQEklS+EJ6E6CrtWXZFgPfPik2Ckcp9hG4EWd9zaVBC7LeR4Xo4
e9CTK3aV8f9tzmzQ0W/uk0uhljojLIjIb0vMF2gnMwQeM1Jx+Fy/fE8aUH5inWQ=
=/Tpo
-----END PGP SIGNATURE-----

--=-L+LMb+ODLm9QZrklqZLM--
