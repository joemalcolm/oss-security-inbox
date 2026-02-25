Received: (qmail 28433 invoked by uid 550); 25 Feb 2026 19:50:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 26267 invoked from network); 25 Feb 2026 17:51:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=openssl.org; s=google; t=1772041860; x=1772646660; darn=lists.openwall.com;
        h=mime-version:user-agent:references:in-reply-to:date:to:from:subject
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=GeTBPOtyTZZ3Dfwp4l4fhryZ/3CXNkFGZNr0z6btRSM=;
        b=BO49VmeFp2Vo4w2IMMovadJSnZdjBEFgNBgN/7IJ+AAjhxmKoLSYgU9FCkfO00xBwP
         CMHvXw6mwfJROkGdn/RTP6bfXhpTOAiXiF/Gpw26BZ1yhrgG2Be5VBqvHA8/hEbFIetW
         GjYi432xO0oCGZar+R370hduL5uzWdPZQvdiYoBDq9DLw1yF4q5zBaBADKvYshh3qv1J
         O7YgvQQkfFC6lrTNAJ5Y0rZmDctwXbXS4AdyY0F+9sDKzVyQeOkY8do8Z1Eotzx31vOW
         r8YpbgYdbYgiw8fw1i5mhvYxt2vTXux+qDPee7j7XzSqdBUiPFxDg0AO2nMexUfZtMco
         Vf2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772041860; x=1772646660;
        h=mime-version:user-agent:references:in-reply-to:date:to:from:subject
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GeTBPOtyTZZ3Dfwp4l4fhryZ/3CXNkFGZNr0z6btRSM=;
        b=YQpkZ0iUtc7lK1tZYyDtLt4xDdLNZMrIy2AVv5jTLB5+zQfIlRJ6miYnN7UhSFdrKl
         GaBxJ/To4a3jybuNc3wtIlxUFfs8V5c+U99AqHktENdQdswCX+3yORvpR9zzTCYrvmve
         nGfLb94XEv2oL04OE9bF9O/TJguAbgon9pHw9IQRbx31OkOAcGuUmlHD7fJ0KsZJRgCr
         xDAsFCn1VkkpNXCPKS8hyCksYimFW8S3urW85sgX6Z8rjBaV1cAElC+WL5rJmXoHiS/W
         v1TH/M75ESNQRI38MbMRnRO11/bghj9yyZQX4kSG50f9pH1hCgBc+JA6tMjtxx5q/sxD
         wWEQ==
X-Gm-Message-State: AOJu0YwWifbhad8gnWo6JRWkQOHTRg3PslV/zDiV5MVXnIXdR/Fc4VmJ
	MNTmtw23wxaoBZCyqquR6T6Z9qZZCmJV8aggAHjq6E2fPOTaqFmrRFnQMBsjo3+Gdi+MUHMH21I
	M/Hf1gk8BHw==
X-Gm-Gg: ATEYQzyS9m4O3Pklk5Ftv/LPtgEg45nJRHqq2V09dGARjUxsVN/s++qoRn49p2UFtdU
	pgsycF/QGSrZi+fHNpufouSmRgPIFOwKB0e5YpIz+PxdEgnWVPA7ui7Y46wo0zcIOsvhOOq2AFC
	Z+P+ATznwAUpAdvbGMQu313ADYvwoda1lGU2O2DyTtNNqIucjl1EZq1AhvHF4NHO0/fw6dFBA7X
	8wXkI5ULGmy+8rhKOE3o1z3Z0y7NkN3MNGkv2Sycx8OpSdtgGLwO7dhSrNFQAB183WC2S7xQ+iA
	GysMNSi4q7l660LGfRaVBZfQEhETlTf1p+WyVGUkuVhXGG/YdO0GWMyYWsQG67ooZ4focZGQjno
	mZnTXaAUEEfR0yeq6mmuUeHUHRtaD6k4NtiPyLdTGwX5GeeVmr2IoMaN+Od6zkMVzGZh+VsyXjb
	50xslmSO9q/exNWeBy8ahiLOr0RYDqbqcZgVJdIdzEfCG/81w=
X-Received: by 2002:a05:6402:42cf:b0:65b:99b3:d517 with SMTP id 4fb4d7f45d1cf-65fa4784f8bmr1042462a12.13.1772041860446;
        Wed, 25 Feb 2026 09:51:00 -0800 (PST)
Message-ID: <bb5b639af06dc7fdc481629c67e07cd8ef00354c.camel@openssl.org>
From: Tomas Mraz <tomas@openssl.org>
To: oss-security@lists.openwall.com
Date: Wed, 25 Feb 2026 18:50:52 +0100
In-Reply-To: <adbbeba91ee3dedcb1ee1b3afc92c8d830979e73.camel@openssl.org>
References: <adbbeba91ee3dedcb1ee1b3afc92c8d830979e73.camel@openssl.org>
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-1jgRiBRurwXLIHbok1uY"
User-Agent: Evolution 3.58.3 (3.58.3-1.fc43) 
MIME-Version: 1.0
Subject: [oss-security] Re: OpenSSL Security Advisory (updated text for CVE-2025-15467)

--=-1jgRiBRurwXLIHbok1uY
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

We have updated the advisory text for CVE-2025-15467 based on findings
by Jan L=C3=BCbbe (Pengutronix).


Stack buffer overflow in CMS (Auth)EnvelopedData parsing (CVE-2025-15467)
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Severity: High

Issue summary: Parsing CMS AuthEnvelopedData or EnvelopedData message with
maliciously crafted AEAD parameters can trigger a stack buffer overflow.

Impact summary: A stack buffer overflow may lead to a crash, causing Denial
of Service, or potentially remote code execution.

When parsing CMS (Auth)EnvelopedData structures that use AEAD ciphers such =
as
AES-GCM, the IV (Initialization Vector) encoded in the ASN.1 parameters is
copied into a fixed-size stack buffer without verifying that its length fits
the destination. An attacker can supply a crafted CMS message with an
oversized IV, causing a stack-based out-of-bounds write before any
authentication or tag verification occurs.

Applications and services that parse untrusted CMS or PKCS#7 content using
AEAD ciphers (e.g., S/MIME (Auth)EnvelopedData with AES-GCM) are vulnerable.
Because the overflow occurs prior to authentication, no valid key material
is required to trigger it. While exploitability to remote code execution
depends on platform and toolchain mitigations, the stack-based write
primitive represents a severe risk.

The FIPS modules in 3.6, 3.5, 3.4, 3.3 and 3.0 are not affected by this
issue, as the CMS implementation is outside the OpenSSL FIPS module
boundary.

OpenSSL 3.6, 3.5, 3.4, 3.3 and 3.0 are vulnerable to this issue.

OpenSSL 1.1.1 and 1.0.2 are not affected by this issue.

OpenSSL 3.6 users should upgrade to OpenSSL 3.6.1.

OpenSSL 3.5 users should upgrade to OpenSSL 3.5.5.

OpenSSL 3.4 users should upgrade to OpenSSL 3.4.4.

OpenSSL 3.3 users should upgrade to OpenSSL 3.3.6.

OpenSSL 3.0 users should upgrade to OpenSSL 3.0.19.

This issue was reported on 14th December 2025 by Stanislav Fort (Aisle
Research). The fix was developed by Igor Ustinov.
Jan L=C3=BCbbe (Pengutronix) reported that CMS EnvelopedData message parsin=
g is
also affected on 10th February 2026.


On Tue, 2026-01-27 at 16:48 +0100, Tomas Mraz wrote:

> OpenSSL Security Advisory [27th January 2026]
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

...


> Stack buffer overflow in CMS AuthEnvelopedData parsing (CVE-2025-
15467)
>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> Severity: High
>=20
> Issue summary: Parsing CMS AuthEnvelopedData message with maliciously
> crafted AEAD parameters can trigger a stack buffer overflow.
>=20
> Impact summary: A stack buffer overflow may lead to a crash, causing
Denial
> of Service, or potentially remote code execution.
>=20
> When parsing CMS AuthEnvelopedData structures that use AEAD ciphers
such as
> AES-GCM, the IV (Initialization Vector) encoded in the ASN.1
parameters is
> copied into a fixed-size stack buffer without verifying that its
length fits
> the destination. An attacker can supply a crafted CMS message with an
> oversized IV, causing a stack-based out-of-bounds write before any
> authentication or tag verification occurs.
>=20
> Applications and services that parse untrusted CMS or PKCS#7 content
using
> AEAD ciphers (e.g., S/MIME AuthEnvelopedData with AES-GCM) are
vulnerable.
> Because the overflow occurs prior to authentication, no valid key
material
> is required to trigger it. While exploitability to remote code
execution
> depends on platform and toolchain mitigations, the stack-based write
> primitive represents a severe risk.
>=20
> The FIPS modules in 3.6, 3.5, 3.4, 3.3 and 3.0 are not affected by
this
> issue, as the CMS implementation is outside the OpenSSL FIPS module
> boundary.
>=20
> OpenSSL 3.6, 3.5, 3.4, 3.3 and 3.0 are vulnerable to this issue.
>=20
> OpenSSL 1.1.1 and 1.0.2 are not affected by this issue.
>=20
> OpenSSL 3.6 users should upgrade to OpenSSL 3.6.1.
>=20
> OpenSSL 3.5 users should upgrade to OpenSSL 3.5.5.
>=20
> OpenSSL 3.4 users should upgrade to OpenSSL 3.4.4.
>=20
> OpenSSL 3.3 users should upgrade to OpenSSL 3.3.6.
>=20
> OpenSSL 3.0 users should upgrade to OpenSSL 3.0.19.
>=20
> This issue was reported on 14th December 2025 by Stanislav Fort
(Aisle
> Research). The fix was developed by Igor Ustinov.

```


```


--=-1jgRiBRurwXLIHbok1uY
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iQJGBAABCgAwFiEE3HAyZir4heL0fyQ/UnRmohynnm0FAmmfNnwSHHRvbWFzQG9w
ZW5zc2wub3JnAAoJEFJ0ZqIcp55tVd4P/1PbmsTguYAu31znuJEu8k4vFO+rSZD+
v8mWtwBUPXflFNsSrKEFGakodQkoPMSlQPZkaDK93quEwzFzCv/dz2Z7s1WhIPv9
bUFkvjzI7hxsuLuke8unamg17xWJRLQN5wcEopp2peFp4/2bEVDX2Jh/pbK8qTwd
F/gWLLcMZUCKDSaRxYj4v374Lo/8c2IIqOwhaIDbVI3VK0JU8MrqFcwLw/EpZrhg
dty4vAcrJLHlWtGjqkyBWDulJhCqVSZObWiZbO8Edp0pz8ZUD0NmQecZ9u6Be2pu
8eEr/nE3J1Eyg/1vvYs32IvoGtbR7dx8TdJWUggbtVGxEGXZu5L5/2MN2m2ygAXh
4gjxsvHJGDONzsST4VyoZyk9YmJSmlIX5yeOXHHSIX6yQcODAGUMPXWIcvGUJM92
VHwLB/iCuvQQCTFhzbG4LL6xblQSukooJX5ZxEoTN20EDviy/LAcFlHkO6mtGOr4
uXI6g2EN8+nSVuls+OsLsRVOE3A3JTK0eaGl3+lYBeCcsX1olfjd1mQjgAnip1R4
+7cgKglkUjHMlePGKPfQVtFNEwdflIN41r4WJDZFI9aNk3SVkQMg5xeM+E07qLpF
PmKZlLf+bG2UxPpWuaITunsmFy3G8miW67M1BQ1MakWt9WacDCSTYl9OZ06N5by3
FqXvbfSQw8zs
=aQui
-----END PGP SIGNATURE-----

--=-1jgRiBRurwXLIHbok1uY--
