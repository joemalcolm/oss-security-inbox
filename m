X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1983" "Sunday" "5" "August" "2018" "21:36:09" "+0800" "Ben Hutchings" "ben@decadent.org.uk" "<e099b2d21c5febadcb4de930cd5cffacbd08f41a.camel@decadent.org.uk>" "50" "[oss-security] Heap-based buffer overflow in zutils zcat" nil nil nil "8" "2018080513:36:09" "[oss-security] Heap-based buffer overflow in zutils zcat" (number mark "U       ben@decadent Aug  5   50/1983  " thread-indent "\"[oss-security] Heap-based buffer overflow in zutils zcat\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32538 invoked by uid 550); 5 Aug 2018 15:35:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24254 invoked from network); 5 Aug 2018 13:36:34 -0000
Message-ID: <e099b2d21c5febadcb4de930cd5cffacbd08f41a.camel@decadent.org.uk>
From: Ben Hutchings <ben@decadent.org.uk>
To: oss-security <oss-security@lists.openwall.com>
Cc: Antonio Diaz Diaz <antonio@gnu.org>
Date: Sun, 05 Aug 2018 21:36:09 +0800
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-wawkDis/iPd8T1VSoCjo"
X-Mailer: Evolution 3.28.2-1 
Mime-Version: 1.0
X-SA-Exim-Connect-IP: 140.113.136.219
X-SA-Exim-Mail-From: ben@decadent.org.uk
X-SA-Exim-Scanned: No (on shadbolt.decadent.org.uk); SAEximRunCond expanded to false
Subject: [oss-security] Heap-based buffer overflow in zutils zcat

--=-wawkDis/iPd8T1VSoCjo
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

A heap-based buffer overflow (CWE-122) was discovered in the zutils
implementation of zcat.  It is apparently possible only if the -v
option, or one of the other options that implies -v, is used.

This seems to have been first discovered in 2016 as a result of
interaction between initramfs-tools and zutils, but was initially
thought to be a bug in the gzip implementation of zcat:
https://bugs.launchpad.net/ubuntu/+source/intel-microcode/+bug/1507443
https://bugs.debian.org/815915

It was eventually reported to the zutils upstream developer (Antonio
Diaz Diaz, cc'd) in the last few weeks and was fixed in version
1.8-pre2.  This was announced in:
https://lists.nongnu.org/archive/html/zutils-bug/2018-08/msg00000.html

I will request a CVE ID for this.

Ben.

--=20
Ben Hutchings
One of the nice things about standards is that
there are so many of them.

--=-wawkDis/iPd8T1VSoCjo
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEErCspvTSmr92z9o8157/I7JWGEQkFAltm/UoACgkQ57/I7JWG
EQnWWA//X7fFN3cLSKL+6fFiaQnCMtndtY6kVlssR3oeCO56NI1QU0EfB7p7427+
yOPIkMsvfzvyaWl0gWM6vWTOmj6600zAr7TVKnmjW2DSv/BYvH47WmVARPLIZUxT
HSxu0hxAQWcawZu027FnrIFaRqUCWIbYnI9uZoSTDg2oXaqIxBB+MU21cd+lFy7A
SPoSz735Rp8HyLixoNDI+aUb9Pr6pWlWBrzc6Mgx/toYoWvmr78VA4XxrpedTv+P
Pu26e9x5iUgU5cOrAdZ/LGGNOx4edtFfMSS8Od8KJ36c5xIYUSFkc4K80fJTHRiR
MVR1wJM1qMJVw/QC5C+y7jO9O1WJ03kfOJkoF/MQ+JwZWPWDHsTAe2bhTfoN/i7i
UkrC6FGxdlhOF9DtswjYZKAfAQt7DwfaLV2uMmwQGq+QKMsoBLflYrV1CRu/2sys
3KRCreynsIcNJaq1z9rl2Mpol2nrNvvDMc8IbJczMEJGP82mGQUcgQ9UR/3q4yCq
kZUD3nFCck0EwxrGeSzSh3vV2j+ea5YEcO9o/EIZm79gDYr2NbSISuLyJG/sSH6x
NvJ/OowjvQygx+9tzTnBhiipAbKIMVpgLyeaxzVDxhAiMjwz23qIUlUOoi9CGmOY
+CrnmPhK4XUoF2eS041c+lsmFuGaej8Lw1zEb8hdbEzyObsxlqQ=
=eMXV
-----END PGP SIGNATURE-----

--=-wawkDis/iPd8T1VSoCjo--
