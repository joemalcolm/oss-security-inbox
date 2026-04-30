Received: (qmail 1559 invoked by uid 550); 30 Apr 2026 05:28:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 8155 invoked from network); 30 Apr 2026 04:52:52 -0000
From: Sam James <sam@gentoo.org>
To: oss-security@lists.openwall.com
Cc: Jan Schaumann <jschauma@netmeister.org>
In-Reply-To: <d6111caa-db61-498a-92cb-ea7a0aa0a5e2@ehuk.net>
Organization: Gentoo
References: <afJorKIje4O6dXbH@netmeister.org>
	<d6111caa-db61-498a-92cb-ea7a0aa0a5e2@ehuk.net>
User-Agent: mu4e 1.14.1; emacs 31.0.50
Date: Thu, 30 Apr 2026 05:52:37 +0100
Message-ID: <87se8dgicq.fsf@gentoo.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="==-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"
Subject: Re: [oss-security] CVE-2026-31431: CopyFail: linux local privilege
 scalation

--==-=-=
Content-Type: multipart/mixed; boundary="=-=-="

--=-=-=
Content-Type: text/plain

Eddie Chapman <eddie@ehuk.net> writes:

> On 29/04/2026 21:23, Jan Schaumann wrote:
>> Affected and fixed versions
>> ===========================
>> Issue introduced in 4.14 with commit
>> 72548b093ee38a6d4f2a19e6ef1948ae05c181f7 and fixed in
>> 6.18.22 with commit
>> fafe0fa2995a0f7073c1c358d7d3145bcc9aedd8
>> Issue introduced in 4.14 with commit
>> 72548b093ee38a6d4f2a19e6ef1948ae05c181f7 and fixed in
>> 6.19.12 with commit
>> ce42ee423e58dffa5ec03524054c9d8bfd4f6237
>> Issue introduced in 4.14 with commit
>> 72548b093ee38a6d4f2a19e6ef1948ae05c181f7 and fixed in
>> 7.0 with commit
>> a664bf3d603dc3bdcf9ae47cc21e0daec706d7a5
>> https://git.kernel.org/stable/c/fafe0fa2995a0f7073c1c358d7d3145bcc9aedd8
>> https://git.kernel.org/stable/c/ce42ee423e58dffa5ec03524054c9d8bfd4f6237
>> https://git.kernel.org/stable/c/a664bf3d603dc3bdcf9ae47cc21e0daec706d7a5
>
> So this is one of the worst make-me-root vulnerabilities in the kernel
> in recent times. I see that on the 11th of April 6.19.12 & 6.18.22
> were released with the fix backported.
>
> Longterm 6.12, 6.6, 6.1, 5.15, 5.10 have not received the fix and I
> don't see anything in the upstream stable queues yet as I write. My
> guess is backporting that far back is not as straightforward. As this
> was introduced in 2017 all those older kernels are affected, right? Or
> am I missing something?

It does not apply cleanly, no. Attached is the workaround we're going to
use. I'm not an expert on IPSec but I think this is the lesser evil.

I attempted a backport but ran into a few API changes and wasn't
confident enough to muck around with it, especially for something to
deploy immediately.

> [...]
>
> What went wrong, has the embargo been broken early today? Not looking
> to point any fingers, those who make things happen in our communities
> work dam hard and deserve respect and support, especially with the
> extra burden of AI slop now.

Note that for Linux kernel vulnerabilities, unless the reporter chooses
to bring it to the linux-distros ML, there is no heads-up to
distributions.

It did not happen here.

>
> Eddie

sam


--=-=-=
Content-Type: text/x-patch
Content-Disposition: attachment;
 filename=0001-crypto-disable-authencesn-module-for-CVE-2026-31431.patch
Content-Transfer-Encoding: quoted-printable

=46rom de1aabdde4d8624ed4b6edad1a79444c06069cb2 Mon Sep 17 00:00:00 2001
Message-ID: <de1aabdde4d8624ed4b6edad1a79444c06069cb2.1777520323.git.sam@ge=
ntoo.org>
From: Sam James <sam@gentoo.org>
Date: Thu, 30 Apr 2026 03:14:26 +0100
Subject: [PATCH] crypto: disable authencesn module for CVE-2026-31431

The fix in 6.18 and beyond uses memcpy_sglist which got added in
131bdceca1f0a2d9381270dc40f898458e5e184b, but then they change it in
0f8d42bf128d349ad490e87d5574d211245e40f1 and
4dffc9bbffb9ccfcda730d899c97c553599e7ca8, then drop one of the earlier
changes in 20d868a77f11ba050fe96e7b8efb8ec3b6f2737f.

It's easier to disable the authencesn module as a mitigation for now
until older kernels get fixed upstream. It should only make IPSec slower
in some cases to have it off.

Bug: https://bugs.gentoo.org/973385
Signed-off-by: Sam James <sam@gentoo.org>
---
 crypto/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/crypto/Makefile b/crypto/Makefile
index 4c99e5d376f6..2169292ed1b6 100644
--- a/crypto/Makefile
+++ b/crypto/Makefile
@@ -154,7 +154,7 @@ obj-$(CONFIG_CRYPTO_CRC32C) +=3D crc32c_generic.o
 obj-$(CONFIG_CRYPTO_CRC32) +=3D crc32_generic.o
 obj-$(CONFIG_CRYPTO_CRCT10DIF) +=3D crct10dif_common.o crct10dif_generic.o
 obj-$(CONFIG_CRYPTO_CRC64_ROCKSOFT) +=3D crc64_rocksoft_generic.o
-obj-$(CONFIG_CRYPTO_AUTHENC) +=3D authenc.o authencesn.o
+obj-$(CONFIG_CRYPTO_AUTHENC) +=3D authenc.o
 obj-$(CONFIG_CRYPTO_LZO) +=3D lzo.o lzo-rle.o
 obj-$(CONFIG_CRYPTO_LZ4) +=3D lz4.o
 obj-$(CONFIG_CRYPTO_LZ4HC) +=3D lz4hc.o
--=20
2.54.0=

--=-=-=--

--==-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEBBAEWCgCpFiEEJaa7iN2bdkxrVUHCc4QJ9SDfkZAFAmny4BYbFIAAAAAABAAO
bWFudTIsMi41KzEuMTIsMiwyXxSAAAAAAC4AKGlzc3Vlci1mcHJAbm90YXRpb25z
Lm9wZW5wZ3AuZmlmdGhob3JzZW1hbi5uZXQyNUE2QkI4OEREOUI3NjRDNkI1NTQx
QzI3Mzg0MDlGNTIwREY5MTkwDxxzYW1AZ2VudG9vLm9yZwAKCRBzhAn1IN+RkAGQ
AQCYuD4D50frRPZ7b7F2agsMOfejJyJmTHqx9mwD2p9eKgEAwg/Nr3aYzFULD625
UW4xlEY90LirEd24STQwIBKaoAE=
=yEg5
-----END PGP SIGNATURE-----
--==-=-=--
