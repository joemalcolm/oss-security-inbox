Received: (qmail 21673 invoked by uid 550); 31 Dec 2025 19:53:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1209 invoked from network); 31 Dec 2025 13:06:50 -0000
DKIM-Signature: v=1; a=ed25519-sha256; q=dns/txt; c=relaxed/relaxed;
	d=josefsson.org; s=ed2303; h=Content-Type:MIME-Version:Message-ID:Date:
	References:In-Reply-To:Subject:Cc:To:From:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=UAxWHlxI5EYdFf6EFE/FtDXDhnt7NF7SnNRHqnQ5vaE=; t=1767186405; x=1768396005; 
	b=S+R2oHalJbQ2oLjpHMjACupjT39rulisX6+QzaKbA64JzILq3r314uvMF/QyP7jAPeGhCYtgAnU
	hQAZPW1e8BQ==;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=josefsson.org; s=rsa2303; h=Content-Type:MIME-Version:Message-ID:Date:
	References:In-Reply-To:Subject:Cc:To:From:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=UAxWHlxI5EYdFf6EFE/FtDXDhnt7NF7SnNRHqnQ5vaE=; t=1767186405; x=1768396005; 
	b=l9HVBiRCJ+4MuJXbx7KJDbD7BJkWr4pvaGRWgnmLmSGOl+9ETe84geo3SyklxaWd+96rMb8RlUa
	1EOH6okzG6BMmf1kcNg3TmOQqo4hv8aUF+CU2ldxZJNs2WItKmAVH+c5D9vk+/opXNwkGZyHKya26
	6FyuzmiVMDbQHiGJXcRZTiB0Pn0Uq9CChqyL5pvW5PDimSVe7EAdtNAS0ExxCQxm1MhTLLGuXhL+w
	twny2ad/56SZ2nFGn6Z18J9dchJ0c5ovku8u1vkMtKRAr4ugvLntaAMx7UEJpIJmzNFwymFJdWAKm
	qfjFi7FxH3NPTnf/jM0gy2G3wLa2TYf2dFK3bAaYWHf4uZ0ByY93wIZxNWX0E0lgMFqtcr7nDR8jN
	anglDdyoGG8Wa0fTJx/CAZzZzDbFqKhIo6OwFLHZAv21b87gvQchLj+IvzuChz3HZBN2H5X6V;
From: Simon Josefsson <simon@josefsson.org>
To: kf503bla@duck.com
Cc: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
In-Reply-To: <6F979157-91AD-4C55-8CCD-5CC5AA18BB50.1@smtp-inbound1.duck.com>
	(kf503bla@duck.com's message of "Mon, 29 Dec 2025 00:21:16 -0500")
References: <4bb0e4f7-a4f3-45cc-b519-2044b4b2871c@gmail.com>
	<928709EE-07AA-4995-B9D3-E83AC18353CC.1@smtp-inbound1.duck.com>
	<6F979157-91AD-4C55-8CCD-5CC5AA18BB50.1@smtp-inbound1.duck.com>
OpenPGP: id=B1D2BD1375BECB784CF4F8C4D73CF638C53C06BE;
 url=https://josefsson.org/key-20190320.txt
X-Hashcash: 1:23:251231:kf503bla@duck.com::7OqaAbqqQHFhj2Wo:4Egh
X-Hashcash: 1:23:251231:oss-security@lists.openwall.com::LkNZ9Egdm5G9BiKU:oC1G
Date: Wed, 31 Dec 2025 14:07:44 +0100
Message-ID: <878qei6bq7.fsf@josefsson.org>
User-Agent: Gnus/5.13 (Gnus v5.13)
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"
Subject: [oss-security] Re: Best practices for signature verifcation

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

"What to use instead?" is indeed the bigger question, and it get lost in
all the GnuPG bashing.  To my mind, the alternatives are in a seriously
worse state than GnuPG is in.  So in some sense, the practical
consequence of moving away from GnuPG is to weaken people's security,
which is something to consider when giving advice here.  I think we
should all be worried about this state of affairs, and try to improve
things, instead of telling people to stop using strong proven solutions.

A small survey:

1) X509 with CMS/PKCS#7 - I'm happy that few appear to seriously
consider this, since that ecosystem have almost all of PGP's flaws but
add tons of more complexity to run attacks through.

2) Special-purpose tools like Minisign, signify, ed25519-cli, and
saltpack.  Typically lacks a stable specification and/or decentralized
process to pave the way to add PQ options.  Often lacks protocol
specifications for MIME integration, file format conventions, and
sometimes lack multiple interoperable implementations.

3) Age.  Modern design with multiple implementations and decent
documentation.  Lacks sign+verify.  Lacks MIME interaction.

4) SSH signatures.  Reasonable minimal design, multiple implementations,
integration into Git, IETF standardization work in progress [1] and some
PQ drafts [2] [3].  Lacks MIME integration.  No encryption support.  I
wish 'age' supported SSH signatures to make this format more popular.

5) XMLDigSig and JSON Web Signatures.  (I hope I manage to provoke both
communities by placing these two in the same category.)  Reasonably well
specified with multiple implementations, although suffering from
non-minimal design and canonicalization concerns.  The toolchain to work
with these blobs is often web-oriented and primitive implementations are
lacking, making it less suitable for low-level software supply-chain
integrity protection.  For JSON some PQ alternatives exist.  Both
ecosystems are negatively tainted by the X.509 WebPKI complexity.

6) Sigstore and Sigsum.  (I hope I provoke both camps here too :)) These
are modern designs that realize that signatures without transparency is
not effective against practical attacks.  Reasonable well specified,
although lacking in multiple implementations and PQ options.  Sigstore
suffer from complexity and its focus on container security.  Sigsum
suffer from lack of non-Go implementations and MIME integration.

7) Non-GnuPG PGP implementations.  This offers a simple migration path,
and some have already taken it.  The complexity of PGP is still present,
and most of the attacks are consequences of the PGP design rather than
GnuPG problems.  GnuPG is shipping PQ options already and the others are
catching up, but the PGP schism is likely to cause continued eco-system
self-harm.  While one could have hoped for something here, I'm not sure
if this offers enough beyond a non-GPL license.

Did I forget some option?

Personally, I'm staying with GnuPG using Ed25519 keys on physical
hardware dongles and I'm adding Sigsum, using a different Ed25519 key on
the same physical device, see a GNU InetUtils release --
https://lists.gnu.org/archive/html/bug-inetutils/2025-12/msg00017.html
-- for inspiration.  I will help with SSH Signature standardization and
PQ options, since I believe SSH Signatures is the approach that is
nearest a IETF-level standardization maturity.  I hope/encourage that
Sigsum will add PQ options, a C+Python implementation, and resolve MIME
integration -- and that Sigstore will continue to offer a challenging
popular competitor.  I believe that Ed25519+SLH-DSA is the best
near-term PQ variant for long-term software protection, alas no
practical tools offers this today.

/Simon

[1] https://datatracker.ietf.org/doc/html/draft-josefsson-sshsig-format-03
[2] https://datatracker.ietf.org/doc/html/draft-josefsson-ssh-sphincs-01
[3] https://datatracker.ietf.org/doc/html/draft-josefsson-ssh-ed25519mldsa6=
5-01

kf503bla@duck.com writes:

> then what do you suggest to use? i hear it all the time "pgp sucks" but w=
hat's the alternative huh?
>
>>=20
>> In light of the recent GnuPG vulnerabilities, I remembered that OpenPGP
>> is almost never the right choice. CMS/PKCS#7 isn't any better, and
>> X.509 is also bad except that its extremely wide deployment in TLS
>> keeps it alive.
>>=20
>> See https://www.latacora/com/blog/2019/07/16/the-pgp-problem/
>>=20
>> and https://soatok.blog/2024/11/15/what-to-use-instead-of-pgp/.
>>=20
>> --
>> Sincerely,
>> Demi Marie Obenour (she/her/hers)
>

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQNoBAEWCgMQFiEEo8ychwudMQq61M8vUXIrCP5HRaIFAmlVICAUHHNpbW9uQGpv
c2Vmc3Nvbi5vcmfCHCYAmDMEXJLOtBYJKwYBBAHaRw8BAQdACIcrZIvhrxDBkK9f
V+QlTmXxo2naObDuGtw58YaxlOu0JVNpbW9uIEpvc2Vmc3NvbiA8c2ltb25Aam9z
ZWZzc29uLm9yZz6IlgQTFggAPgIbAwULCQgHAgYVCAkKCwIEFgIDAQIeAQIXgBYh
BLHSvRN1vst4TPT4xNc89jjFPAa+BQJn0XQkBQkNZGbwAAoJENc89jjFPAa+BtIA
/iR73CfBurG9y8pASh3cbGOMHpDZfMAtosu6jbpO69GHAP4p7l57d+iVty2VQMsx
+3TCSAvZkpr4P/FuTzZ8JZe8BrgzBFySz4EWCSsGAQQB2kcPAQEHQOxTCIOaeXAx
I2hIX4HK9bQTpNVei708oNr1Klm8qCGKiPUEGBYIACYCGwIWIQSx0r0Tdb7LeEz0
+MTXPPY4xTwGvgUCZ9F0SgUJDWRmSQCBdiAEGRYIAB0WIQSjzJyHC50xCrrUzy9R
cisI/kdFogUCXJLPgQAKCRBRcisI/kdFoqdMAQCgH45aseZgIrwKOvUOA9QfsmeE
8GZHYNuFHmM9FEQS6AD6A4x5aYvoY6lo98pgtw2HPDhmcCXFItjXCrV4A0GmJA4J
ENc89jjFPAa+wUUBAO64fbZek6FPlRK0DrlWsrjCXuLi6PUxyzCAY6lG2nhUAQC6
qobB9mkZlZ0qihy1x4JRtflqFcqqT9n7iUZkCDIiDbg4BFySz2oSCisGAQQBl1UB
BQEBB0AxlRumDW6nZY7A+VCfek9VpEx6PJmdJyYPt3lNHMd6HAMBCAeIfgQYFggA
JgIbDBYhBLHSvRN1vst4TPT4xNc89jjFPAa+BQJn0XTSBQkNZGboAAoJENc89jjF
PAa+0M0BAPPRq73kLnHYNDMniVBOzUdi2XeF32idjEWWfjvyIJUOAP4wZ+ALxIeh
is3Uw2BzGZE6ttXQ2Q+DeCJO3TPpIqaXDAAKCRBRcisI/kdFouvKAP9k+kZehXXJ
N+sCWJQHvswq1px6eNpB8K9GYNB3mggQpQD/d/XEZmhXdTiTB917rH3+LP1qld8+
NxiagNOjoqjzew8=
=Vydf
-----END PGP SIGNATURE-----
--=-=-=--
