X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2542" "Tuesday" "21" "April" "2015" "02:31:47" "+0100" "Ben Hutchings" "ben@decadent.org.uk" "<1429579907.3211.211.camel@decadent.org.uk>" "62" "[oss-security] Re: Buffer overruns in Linux kernel RFC4106 implementation using AESNI" nil nil nil "4" "2015042101:31:47" "[oss-security] Re: Buffer overruns in Linux kernel RFC4106 implementation using AESNI" (number mark "        ben@decadent Apr 21   62/2542  " thread-indent "\"[oss-security] Re: Buffer overruns in Linux kernel RFC4106 implementation using AESNI\"\n") "<1429044392.3211.72.camel@decadent.org.uk>" ("<1429044392.3211.72.camel@decadent.org.uk>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 31925 invoked by uid 550); 21 Apr 2015 01:32:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 31882 invoked from network); 21 Apr 2015 01:32:10 -0000
Message-ID: <1429579907.3211.211.camel@decadent.org.uk>
In-Reply-To: <1429044392.3211.72.camel@decadent.org.uk>
References: <1429044392.3211.72.camel@decadent.org.uk>
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-2pl33xMA/qH6FkKBttqv"
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
X-SA-Exim-Connect-IP: 192.168.4.249
X-SA-Exim-Mail-From: ben@decadent.org.uk
X-SA-Exim-Scanned: No (on shadbolt.decadent.org.uk); SAEximRunCond expanded to false
Cc: 782561@bugs.debian.org
Date: Tue, 21 Apr 2015 02:31:47 +0100
From: Ben Hutchings <ben@decadent.org.uk>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Buffer overruns in Linux kernel RFC4106 implementation using
 AESNI
To: oss-security <oss-security@lists.openwall.com>

--=-2pl33xMA/qH6FkKBttqv
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 2015-04-14 at 21:46 +0100, Ben Hutchings wrote:
> Linux kernel commit ccfe8c3f7e52 ("crypto: aesni - fix memory usage in
> GCM decryption") fixes two bugs in pointer arithmetic that lead to
> buffer overruns (even with valid parameters!):
>=20
> https://git.kernel.org/linus/ccfe8c3f7e52ae83155cb038753f4c75b774ca8a
>=20
> These are described as resulting in DoS (local or remote), but are
> presumably also exploitable for privilege escalation.
>=20
> The bugs appear to have been introduced by commit 0bd82f5f6355 ("crypto:
> aesni-intel - RFC4106 AES-GCM Driver Using Intel New Instructions") in
> Linux 2.6.38.
[...]

After some discussion of these bugs, I'd like to provide my current
understanding of the attack vectors.  I haven't reproduced the bug or
analysed the code myself; this is only based on what I've been told.

- The affected code paths are reachable through AF_ALG, but only using
  the algif_aead module which has not been included in any released
  kernel.  The module and the fix will be part of Linux 4.1.  So this
  attack vector can be largely ignored.

- The kernel developers thought that these code paths were not used for
  decrypting packets for IPsec tunnels.  However, they are if a packet
  is reassembled from IP fragments.  This really does cause DoS,
  confirmed in <https://bugs.debian.org/782561>.

Ben.

--=20
Ben Hutchings
Once a job is fouled up, anything done to improve it makes it worse.

--=-2pl33xMA/qH6FkKBttqv
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIVAwUAVTWoiOe/yOyVhhEJAQo29w/+LY2HrLipU440Ecg6nZLQUDJAbLD5w0Of
UcTzUgBSIDsnEfNVmD42+st5XBARy0tewpUmrNPe1+zYVJgRyqtq5lFl8nuhZtQ1
pon7twVuc9wVrEFVIkJIxrBgyZl9muSghPmz46He/FGqdBo7i3CGVO57KlWt2dvQ
z40WpGaVk0YQ8D8kzchgVXhG+Bbq1h/e9W+FHEG/yeDIk10cPlg/0vlKWVxhC1jx
VJFg0fTgKfeBkc0jRD882ob2QSTwBmLCAqu8+nxMjPusoFJEhezpjyXl3vcXl5vG
qpdI5Jl3KGK2jcuFLPGFEj0KzmgOWnn+gkaYCouqty9lkCkGy08pLztHC0QjMEpG
DEBvJ9MdVS+RANIwhrM5GcWn/g0uON+DNVZ8TSu9Hflitazjb7b/Gdt+r3Grx2du
fYFlJ361iPE4oQzuRtWZD5mi3UcRY7tZh8eP1rXvUMo78IjjG5KfEWM8pX1ZcRwW
KWL+bUowrHGgTyd8wvWL8pFdU6sSfSGmBKLnhdlKQlsImd9F8j2kYRxXqmmvGvh3
EIJ+F/uNU/sDZgC6Hmeigw9msGGQicGo4VYrG77Rj8tSNGp6TNAds+JGUhhFvDy8
mQLILIjZT3hDhnta5f0QkTHhoEHhduSeZVk8BUZhu5A7qne/Imirsr+A2sHxW8qL
bUd8fPcWvgw=
=YKri
-----END PGP SIGNATURE-----

--=-2pl33xMA/qH6FkKBttqv--
