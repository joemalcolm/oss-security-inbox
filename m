X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2103" "Wednesday" "22" "August" "2018" "20:11:00" "+0100" "Ben Hutchings" "ben@decadent.org.uk" "<713d7e651cd8e9eda903f26392d30c8cb45afc38.camel@decadent.org.uk>" "53" "[oss-security] Re: Heap-based buffer overflow in zutils zcat" nil nil nil "8" "2018082219:11:00" "[oss-security] Re: Heap-based buffer overflow in zutils zcat" (number mark "U       ben@decadent Aug 22   53/2103  " thread-indent "\"[oss-security] Re: Heap-based buffer overflow in zutils zcat\"\n") "<e099b2d21c5febadcb4de930cd5cffacbd08f41a.camel@decadent.org.uk>" ("<e099b2d21c5febadcb4de930cd5cffacbd08f41a.camel@decadent.org.uk>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14005 invoked by uid 550); 22 Aug 2018 19:27:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32480 invoked from network); 22 Aug 2018 19:11:20 -0000
Message-ID: <713d7e651cd8e9eda903f26392d30c8cb45afc38.camel@decadent.org.uk>
From: Ben Hutchings <ben@decadent.org.uk>
To: oss-security <oss-security@lists.openwall.com>
Cc: Antonio Diaz Diaz <antonio@gnu.org>
Date: Wed, 22 Aug 2018 20:11:00 +0100
In-Reply-To: <e099b2d21c5febadcb4de930cd5cffacbd08f41a.camel@decadent.org.uk>
References: <e099b2d21c5febadcb4de930cd5cffacbd08f41a.camel@decadent.org.uk>
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-X3BOCUM2mPxD/G/uqh4N"
X-Mailer: Evolution 3.28.5-1 
Mime-Version: 1.0
X-SA-Exim-Connect-IP: 148.252.241.226
X-SA-Exim-Mail-From: ben@decadent.org.uk
X-SA-Exim-Scanned: No (on shadbolt.decadent.org.uk); SAEximRunCond expanded to false
Subject: [oss-security] Re: Heap-based buffer overflow in zutils zcat

--=-X3BOCUM2mPxD/G/uqh4N
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, 2018-08-05 at 21:36 +0800, Ben Hutchings wrote:
> A heap-based buffer overflow (CWE-122) was discovered in the zutils
> implementation of zcat.  It is apparently possible only if the -v
> option, or one of the other options that implies -v, is used.
>=20
> This seems to have been first discovered in 2016 as a result of
> interaction between initramfs-tools and zutils, but was initially
> thought to be a bug in the gzip implementation of zcat:
> https://bugs.launchpad.net/ubuntu/+source/intel-microcode/+bug/1507443
> https://bugs.debian.org/815915
>=20
> It was eventually reported to the zutils upstream developer (Antonio
> Diaz Diaz, cc'd) in the last few weeks and was fixed in version
> 1.8-pre2.  This was announced in:
> https://lists.nongnu.org/archive/html/zutils-bug/2018-08/msg00000.html
>=20
> I will request a CVE ID for this.

This has been designated as CVE-2018-1000637.

Ben.

--=20
Ben Hutchings
You can't have everything.  Where would you put it?


--=-X3BOCUM2mPxD/G/uqh4N
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEErCspvTSmr92z9o8157/I7JWGEQkFAlt9tUQACgkQ57/I7JWG
EQkloBAAoYbqDmQecvi+QA/iQoUyzCykxFbW+dDxJJcpbrdpyrpubOFD9163iHuM
/xxAdJyjNtyMIasrPrQZ1iFw9oUt+BYoTBiPQv1eVv7PCBOWaylnEVRI8jWr3mNk
x6TyDq76czXVJzkCV8OkLspHdhexWOuLmoGzpjosbiAJ3PRQJKMGREGx70stVlVS
RX0LTudGMNiOIMQhpJEJWmZTk0maECVGte+zgpHsML1OUn9r/EjgTGNd+KNhXHLy
XZQFDT8LQ35tZZAcwoXcfzIgU7k5f9yNPt5pci4w4Ph3asmHVHKcRDjMd3B2uJHL
ThPNxKNPkzE90TN4DM1VcVgoHpwjc9gxHG07I9/rFkxyakb4SvvuIzqz9pmU1ftk
eG/KbyuUaodAuikGqU4g5GQpcG4DOgpzqpo49frFjwnBuoSkqXPJOCOzhMWm74Au
d7mc3y5795J0k/3cOgq/+OukWkMrfBL2npIKbkoU/QLuwbpujuVsyzUPFyBRAGkv
70fDARHMKpvwDU0itFUXDNosuJwzFpg52hRAtQAfZBuNFvReJQJckuVhvttFzq0n
Q6MZjflgLOLwpIv36AeyMC+t9Sry+3PuFFKQM3b6eseRBr/AzldkZqQ3TwV3npLl
XXAndyKkrImX/UpsddBQ70nYPMJSOIXcan7T4CWjhlxu7Q/ebII=
=mAA5
-----END PGP SIGNATURE-----

--=-X3BOCUM2mPxD/G/uqh4N--
