X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2337" "Tuesday" "14" "April" "2015" "21:46:32" "+0100" "Ben Hutchings" "ben@decadent.org.uk" "<1429044392.3211.72.camel@decadent.org.uk>" "59" "[oss-security] Buffer overruns in Linux kernel RFC4106 implementation using AESNI" nil nil nil "4" "2015041420:46:32" "[oss-security] Buffer overruns in Linux kernel RFC4106 implementation using AESNI" (number mark "        ben@decadent Apr 14   59/2337  " thread-indent "\"[oss-security] Buffer overruns in Linux kernel RFC4106 implementation using AESNI\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 20253 invoked by uid 550); 14 Apr 2015 21:07:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5694 invoked from network); 14 Apr 2015 20:46:54 -0000
Message-ID: <1429044392.3211.72.camel@decadent.org.uk>
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-aRMsAd3H1YlKDLHKqo9F"
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
X-SA-Exim-Connect-IP: 192.168.4.249
X-SA-Exim-Mail-From: ben@decadent.org.uk
X-SA-Exim-Scanned: No (on shadbolt.decadent.org.uk); SAEximRunCond expanded to false
Cc: 782561@bugs.debian.org
Date: Tue, 14 Apr 2015 21:46:32 +0100
From: Ben Hutchings <ben@decadent.org.uk>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Buffer overruns in Linux kernel RFC4106 implementation using AESNI
To: oss-security <oss-security@lists.openwall.com>

--=-aRMsAd3H1YlKDLHKqo9F
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Linux kernel commit ccfe8c3f7e52 ("crypto: aesni - fix memory usage in
GCM decryption") fixes two bugs in pointer arithmetic that lead to
buffer overruns (even with valid parameters!):

https://git.kernel.org/linus/ccfe8c3f7e52ae83155cb038753f4c75b774ca8a

These are described as resulting in DoS (local or remote), but are
presumably also exploitable for privilege escalation.

The bugs appear to have been introduced by commit 0bd82f5f6355 ("crypto:
aesni-intel - RFC4106 AES-GCM Driver Using Intel New Instructions") in
Linux 2.6.38.

The above fix is included in Linux 4.0 and the following stable updates:

v3.10.73: 31c06b946ce6 crypto: aesni - fix memory usage in GCM decryption
v3.12.40: 0585664d1732 crypto: aesni - fix memory usage in GCM decryption
v3.14.37: e9b15363c101 crypto: aesni - fix memory usage in GCM decryption
v3.18.11: 3b389956156c crypto: aesni - fix memory usage in GCM decryption
v3.19.3: b90935f1d9a0 crypto: aesni - fix memory usage in GCM decryption
v3.13.11-ckt19: 40e073009626 crypto: aesni - fix memory usage in GCM decryp=
tion

Please assign a CVE ID for this.

Ben.

--=20
Ben Hutchings
Editing code like this is akin to sticking plasters on the bleeding stump
of a severed limb. - me, 29 June 1999

--=-aRMsAd3H1YlKDLHKqo9F
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIVAwUAVS18ree/yOyVhhEJAQq0SA/+LlPYb3r2EcY2cxvmfZHRwSTMpYDYdqwj
l1hADYI65/o/iV4165gzPYD/wWwNVQGpkZm9K1egGgR7XP0kW2teaLdOV/QTiR2b
mKj2QSXp7+Nl4PZg5DWMeBXETH+yLfJ0EPo20Iuz9pgvU9MLPZGMl/AOCbUM7FMh
mjNwXNp4w17WtadIIcjNiE1Y7iInqFD/WoW9lg3iGCiyl8ZF64YOZeGuXzkBlA93
7cUX3w1tqA2UYI4oJEAIZ/A0cu2IPHF2iEg+A3eyhP4gsbV/SF9VqJWWHc3pnHvj
4QhZJ5ROhi6wtmFc+2ilaUhILOsJK83FJIpKaAOQ01u4u3e47Rm6aF7FnDNuBjZL
FJaQuPdA2pnsgRKIss+/uNdMqbB5dxfzZLJqJpgPyXOCRgUrlK1GiV7ypn8/jXe8
IyVjFPzJoccCAv5et0qLYYq6WWxVmuApgqn33MIZTZ43lkQ8g/iZ4J8O3HXAuxwn
NRzdi6QzJiHhgJ1Vu1bsWCtcPBC/uMrYajAOlQub2LltHjLafGuB622fay0sPQLe
9uwUlBNVUsBTzsqDmJnCjcKYK1s39anlX/6of1sGAexblUCr3JjjVoyEdQBfMZDr
bp5GQMoKML3FxoGRUmRlcg4p8/j74K4L88Q1oq26mQOIhQCHLBSf6/2FZIwRinnS
g4DZa6zZZ9o=
=XnTh
-----END PGP SIGNATURE-----

--=-aRMsAd3H1YlKDLHKqo9F--
