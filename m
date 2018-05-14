X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1914" "Monday" "14" "May" "2018" "10:05:20" "+0200" "Yves-Alexis Perez" "corsac@debian.org" "<6770b401c944860c2288ebf7738f40010d938b33.camel@debian.org>" "53" "[oss-security] PGP/MIME and S/MIME mail clients vulnerabilities" "^Date:" nil nil "5" "2018051408:05:20" "[oss-security] PGP/MIME and S/MIME mail clients vulnerabilities" (number mark "        corsac@debia May 14   53/1914  " thread-indent "\"[oss-security] PGP/MIME and S/MIME mail clients vulnerabilities\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26285 invoked by uid 550); 14 May 2018 08:05:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26264 invoked from network); 14 May 2018 08:05:43 -0000
Message-ID: <6770b401c944860c2288ebf7738f40010d938b33.camel@debian.org>
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-yWkURFHMjh27uXznBNOR"
X-Mailer: Evolution 3.28.2-1 
Mime-Version: 1.0
Date: Mon, 14 May 2018 10:05:20 +0200
From: Yves-Alexis Perez <corsac@debian.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] PGP/MIME and S/MIME mail clients vulnerabilities
To: oss-security@lists.openwall.com

--=-yWkURFHMjh27uXznBNOR
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I guess most people have already saw  this, but just in case, it seems that=
 a
vulnerability in PGP/MIME and S/MIME handling in various mail clients will =
be
published tomorrow.

Debian Security team didn't get any private information yet, but there have
been multiple twitter threads and blog posts published already:

https://twitter.com/seecurity/status/995906576170053633
https://arstechnica.com/information-technology/2018/05/critical-pgp-and-smi=
me-
bugs-can-reveal-encrypted-e-mails-uninstall-now/
https://www.eff.org/deeplinks/2018/05/attention-pgp-users-new-vulnerabiliti=
es-
require-you-take-action-now

GnuPG has posted a tweet (https://twitter.com/gnupg/status/9959310835847577=
60)
indicating it's likely a vulnerability in mail clients themselves and not in
the protocol, and which is related to HTML mail handling.

The vulnerabilities apparently enable an attacker to decrypt previous mails,
but my (wild) guess is that the attack actually requests decryption from the
mail client (which has access to the private key), rather than by actually
decrypting itself.

Regards,
--=20
Yves-Alexis Perez - Debian Security


--=-yWkURFHMjh27uXznBNOR
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEE8vi34Qgfo83x35gF3rYcyPpXRFsFAlr5Q0AACgkQ3rYcyPpX
RFuUUAf+Mqv6urcHdvB62LVRwPnj4ZHQIHulT/o6m/pX0T8+gstDDMl2APqtcUIR
6fnyjqTpUfIqPiNMoL8zX2CKw5DqUlN72lwQwxmmimNq/wkgrLE1Zu0vsoUaRukP
nzka46hVc8DxF+YI5sZE32AkXMlKFTHTvode/sLMV1I0jFBtkW3sGWCtbwuOCVj0
KOIo0Fr7GN1WSCRP9iVQFExgVdQoq2VwosEAaKdYLQDkJT4nsOdgaPmF3bxDMpQE
9yV7phJfdwfC+C+4IzW3SRTp21ALaKSqmVxPboehNbbb/mNfvwygl2dIGLYu5f+4
8lyCfdcX6MZdp31HBYXTfIyMD9PUow==
=k5vq
-----END PGP SIGNATURE-----

--=-yWkURFHMjh27uXznBNOR--
