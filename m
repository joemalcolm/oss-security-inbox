X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2322" "Wednesday" "16" "August" "2017" "09:11:41" "-0400" "Daniel Kahn Gillmor" "dkg@fifthhorseman.net" "<87y3qjhd2q.fsf@fifthhorseman.net>" "54" "Re: [oss-security] Insecure DNS dependency in many Kerberos deployments" "^Date:" nil nil "8" "2017081613:11:41" "[oss-security] Insecure DNS dependency in many Kerberos deployments" (number mark "        dkg@fifthhor Aug 16   54/2322  " thread-indent "\"Re: [oss-security] Insecure DNS dependency in many Kerberos deployments\"\n") "<d3e0c378-10ac-4ac9-0b60-b5993308a058@redhat.com>" ("<d3e0c378-10ac-4ac9-0b60-b5993308a058@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 23745 invoked by uid 550); 16 Aug 2017 13:28:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9295 invoked from network); 16 Aug 2017 13:14:51 -0000
In-Reply-To: <d3e0c378-10ac-4ac9-0b60-b5993308a058@redhat.com>
References: <d3e0c378-10ac-4ac9-0b60-b5993308a058@redhat.com>
Message-ID: <87y3qjhd2q.fsf@fifthhorseman.net>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"
Date: Wed, 16 Aug 2017 09:11:41 -0400
From: Daniel Kahn Gillmor <dkg@fifthhorseman.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Insecure DNS dependency in many Kerberos deployments
To: Florian Weimer <fweimer@redhat.com>, oss-security@lists.openwall.com

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

On Wed 2017-08-16 10:50:33 +0200, Florian Weimer wrote:
> By default, Kerberos clients perform host name canonicalization (search
> path resolution, CNAME chain chasing and PTR lookups) to obtain a
> service principal name.  This allows service impersonification:

This is a long-standing security flaw in kerberos, and i think it has
probably been stumbled across by anyone who has tried to deploy a new
kerberos environment.  (i know, because i did, many many years ago)

It's particularly bad that this is the default for new deployments
because novices deploying a new kerberos domain are unlikely to deviate
from the defaults out of fear of breaking something.  The result is that
nearly every single krb5 deployment has this bug.

The band-aid needs to have been pulled off ages ago so that it's fixed
for new deployments, and legacy deployments need to explicitly enable it
if they need it.

Alas, I don't know how to make this transition happen smoothly :(

> Some deployments have implemented compatibility with
> dns_canonicalize_hostname =3D false by moving the canonicalization to the
> application instead, which is of course equally insecure:

Thanks for noticing these, Florian.  This is a disturbing trend:
backflow of security flaws as they get fixed in one place for
"compatibility" in another. :/

      --dkg

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEOCdgUepHf6PklTkyFJitxsGSMjcFAlmURI0ACgkQFJitxsGS
MjcE7g/+IYgE/E2qXYK4lChWqw+c9Eox+wekLGlHacCoBreGOEl/Ymbm9adBK/zM
OKkDdlHEUW2F4G2apTlLI6zEGwnZP+WhcPFv6BWS3gx5zYBrRN6xvjpozI2eVyy4
EfZU64vmBYAnCwVzPMYp9/oqqs4yPYW/ttule08rDtF3+jQUiE+6kAEtUAKmFF7b
+dnozeflB3oPHCcPFZvSdXKedp0GnLb/yjKoM88fmyqFBVylM7EItZqrXIOVXmWs
6CuMMORdeYwbIMXIEPGyLDAYGTM0pPL/ZqTUKn9JT2ahDq407zYoXGnZgcsl5P33
PNB7zayejIsJtLtjv3NO9LScsVRTJyJijPiMEXYMCx6x9aRHSASi3g3oyepYTieS
rq4kgZEbdslBqvDiyec1wPypM/QzYmtMJUYI1ct5LBmGU/03V4SSLxecU/lKVin7
kKtp+Hj5PGvrCnpjQTHRq6yoeCdMFOX3R7/ytHulfOFCDGMRrxY9+v8opBN0Z29E
QHvA8MRPmeuVcOjhG/wK9+qIwjm6fI21kaXGm0weooq9ukFIIa6BVyCdc9kPi5X9
6p7urF+DY1S6Elv6BINMo8cLfCHxAQopjfokXRo4ZuUU8cOtGRJgoP1xMbzvoRkU
Jjs7VuRT2Ck/1jazaGetJFyPp8r6hazLQiknXbIXrxvPvoNmAX8=
=QKAS
-----END PGP SIGNATURE-----
--=-=-=--
