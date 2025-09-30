Received: (qmail 3170 invoked by uid 550); 30 Sep 2025 13:49:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3941 invoked from network); 30 Sep 2025 13:44:27 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=openssl.org; s=google; t=1759239857; x=1759844657; darn=lists.openwall.com;
        h=mime-version:user-agent:date:to:from:subject:message-id:from:to:cc
         :subject:date:message-id:reply-to;
        bh=L4sB1vJ5d1y0CESTuqdNl6ZvuL8kFFJ7BAxisdTz0iA=;
        b=ehYyLzkJLmwvSy/vdeT+sdZkifj8Si9N2F0KLxFezPFoZsBBJ3kykirFAcpgPJt936
         ctDaYXjdaJ3XGRD3kulaX6HQjjTX+dYG2TLDhi1DQu26iTGB1GX5STLwQwtDh4TNhHGk
         nNtxTQWKsTyRrWBFgU4gzK7ll6fn5eHs5LsOb2xLHt+vDlIJlpSxlo6ng5uklBip9kbK
         n1VdP4TbmvR97yxee67DjcRv4Madx7Y7HVrbxBoqNaNNu63gxTWkRDUjfOfniLW4Mzdw
         rajn/mzW6ClvY/RYVuRgaezV1RyyhvV5p2PXOPWb1Zswym64XNCRqxUZpD1UEAG/BaxN
         qqZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759239857; x=1759844657;
        h=mime-version:user-agent:date:to:from:subject:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=L4sB1vJ5d1y0CESTuqdNl6ZvuL8kFFJ7BAxisdTz0iA=;
        b=ctAJG/YsOBbWlQtMN/MYn8xitiA2zpPAT0XmCu8Sd2Jee0P9heYeKThU1XBtDCpEGA
         6DonvlPT8BC4H0oqjf46mHkVyKZpULOiuzfMMYneEvxD+HGAYt3qUbk4nUdUXEwHCZOz
         FIXlrRMhMPqUgHZDEP7Sb79zNkikLcibC9G+72l+pen+qedh3QPiGDPS6kU1pLEInCty
         0UwLtDTev0nZ2qY/z9k8NVh5MPkIv6DK/+QMpGj35yNwflQTZx4yBg194sXefWJuJcBC
         Se51JgYQqpoRgxCQFILkDX9OLEshzkeOWRcTuUSvwKziKupH+QheuntQjLGbakizEqcu
         XdfA==
X-Gm-Message-State: AOJu0Yxq5h7UzMZFeTkP2De5AbxZGdxAaJnKkbj7YDm5LWdeBNfgkjVK
	0EiTrFnknSf0gnbPRQaslRFpLoeE40Pxnb8+Ru//+moU9GZl0U2NY3i5uhVVYnTkFEnftGf4O+E
	b2RYGmPk=
X-Gm-Gg: ASbGncukRgSAjGJODJF1XDXhOywJbbQbJy1mCdLddiNH7Bi0bgoRF5vmLTJdgR69XWK
	0VGBMPjbopsxb9uEZHL/SDvS55aJodZAq8rkx7w7LYswU01rWdIPoL6buLQXDDJERKRXyf9t6Gs
	tMOZLR0n5tbAwb37pHNgydCLOET6LVxAtYwkzqL3I2e/OYHTw6R2zVYytN+2usfsAyDZNG+LSqb
	JC1juoXLGDAluzMrc6pz7uCGuPxidQgu1pfu9lySuDkK7eoQXCwqD249/0uAYDXVOAIq9Gy/7EE
	Nh7Dd20WeixlzglB7fQ1tl55r8lQ+NPVos4R2PKFS4d6jgSg1VLN2DT7tUgwtdlM6TXHrxMbiX5
	Q7VBCs6/OV7bKoZeteHj7fX0wSczw6hQ8fDolaLosCM6ixgPzVo4EIlrCG1Jy/w==
X-Google-Smtp-Source: AGHT+IE8vqdB3tLwaerFc6/wP5vtaIOvorTDs8ZqKcB1aWzSVU49CCF43+4QVkkKSV8tu3Jbv6WbyQ==
X-Received: by 2002:a05:6000:22c2:b0:3e7:ff32:1ab with SMTP id ffacd0b85a97d-40e4b294f33mr15320283f8f.50.1759239857258;
        Tue, 30 Sep 2025 06:44:17 -0700 (PDT)
Message-ID: <6fd3820db118fa0ea34e56e0aba6ad2ae5439488.camel@openssl.org>
From: Tomas Mraz <tomas@openssl.org>
To: oss-security@lists.openwall.com
Date: Tue, 30 Sep 2025 15:44:08 +0200
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-xgcGjsdmEzTzOxHmSd+E"
User-Agent: Evolution 3.54.3 (3.54.3-2.fc41) 
MIME-Version: 1.0
Subject: [oss-security] OpenSSL Security Advisory

--=-xgcGjsdmEzTzOxHmSd+E
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

OpenSSL Security Advisory [30th September 2025]
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Out-of-bounds read & write in RFC 3211 KEK Unwrap (CVE-2025-9230)
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Severity: Moderate

Issue summary: An application trying to decrypt CMS messages encrypted
using
password based encryption can trigger an out-of-bounds read and write.

Impact summary: This out-of-bounds read may trigger a crash which leads
to
Denial of Service for an application. The out-of-bounds write can cause
a memory corruption which can have various consequences including
a Denial of Service or Execution of attacker-supplied code.

Although the consequences of a successful exploit of this vulnerability
could be severe, the probability that the attacker would be able to
perform it is low. Besides, password based (PWRI) encryption support in
CMS
messages is very rarely used. For that reason the issue was assessed as
Moderate severity according to our Security Policy.

The FIPS modules in 3.5, 3.4, 3.3, 3.2, 3.1 and 3.0 are not affected by
this
issue, as the CMS implementation is outside the OpenSSL FIPS module
boundary.

OpenSSL 3.5, 3.4, 3.3, 3.2, 3.0, 1.1.1 and 1.0.2 are vulnerable to this
issue.

OpenSSL 3.5 users should upgrade to OpenSSL 3.5.4.

OpenSSL 3.4 users should upgrade to OpenSSL 3.4.3.

OpenSSL 3.3 users should upgrade to OpenSSL 3.3.5.

OpenSSL 3.2 users should upgrade to OpenSSL 3.2.6.

OpenSSL 3.0 users should upgrade to OpenSSL 3.0.18.

OpenSSL 1.1.1 users should upgrade to OpenSSL 1.1.1zd.
(premium support customers only)

OpenSSL 1.0.2 users should upgrade to OpenSSL 1.0.2zm.
(premium support customers only)

This issue was reported on 9th August 2025 by Stanislav Fort (Aisle
Research).
The fix was developed by Stanislav Fort (Aisle Research) and Viktor
Dukhovni.


Timing side-channel in SM2 algorithm on 64 bit ARM (CVE-2025-9231)=20
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Severity: Moderate

Issue summary: A timing side-channel which could potentially allow
remote
recovery of the private key exists in the SM2 algorithm implementation
on 64 bit
ARM platforms.

Impact summary: A timing side-channel in SM2 signature computations on
64 bit
ARM platforms could allow recovering the private key by an attacker.=20

While remote key recovery over a network was not attempted by the
reporter,
timing measurements revealed a timing signal which may allow such an
attack.

OpenSSL does not directly support certificates with SM2 keys in TLS,
and so
this CVE is not relevant in most TLS contexts.  However, given that it
is
possible to add support for such certificates via a custom provider,
coupled
with the fact that in such a custom provider context the private key
may be
recoverable via remote timing measurements, we consider this to be a
Moderate
severity issue.

The FIPS modules in 3.5, 3.4, 3.3, 3.2, 3.1 and 3.0 are not affected by
this
issue, as SM2 is not an approved algorithm.

OpenSSL 3.1, 3.0, 1.1.1 and 1.0.2 are not vulnerable to this issue.

OpenSSL 3.5, 3.4, 3.3, and 3.2 are vulnerable to this issue.

OpenSSL 3.5 users should upgrade to OpenSSL 3.5.4.

OpenSSL 3.4 users should upgrade to OpenSSL 3.4.3.

OpenSSL 3.3 users should upgrade to OpenSSL 3.3.5.

OpenSSL 3.2 users should upgrade to OpenSSL 3.2.6.

This issue was reported on 18th August 2025 by Stanislav Fort (Aisle
Research)
The fix was developed by Stanislav Fort.

Out-of-bounds read in HTTP client no_proxy handling (CVE-2025-9232)
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Severity: Low

Issue summary: An application using the OpenSSL HTTP client API
functions may
trigger an out-of-bounds read if the "no_proxy" environment variable is
set and
the host portion of the authority component of the HTTP URL is an IPv6
address.

Impact summary: An out-of-bounds read can trigger a crash which leads
to
Denial of Service for an application.

The OpenSSL HTTP client API functions can be used directly by
applications
but they are also used by the OCSP client functions and CMP
(Certificate
Management Protocol) client implementation in OpenSSL. However the URLs
used
by these implementations are unlikely to be controlled by an attacker.

In this vulnerable code the out of bounds read can only trigger a
crash.
Furthermore the vulnerability requires an attacker-controlled URL to be
passed from an application to the OpenSSL function and the user has to
have
a "no_proxy" environment variable set. For the aforementioned reasons
the
issue was assessed as Low severity.

The vulnerable code was introduced in the following patch releases:
3.0.16, 3.1.8, 3.2.4, 3.3.3, 3.4.0 and 3.5.0.

The FIPS modules in 3.5, 3.4, 3.3, 3.2, 3.1 and 3.0 are not affected by
this
issue, as the HTTP client implementation is outside the OpenSSL FIPS
module
boundary.

OpenSSL 3.5, 3.4, 3.3, 3.2 and 3.0 are vulnerable to this issue.

OpenSSL 1.1.1 and 1.0.2 are not affected by this issue.

OpenSSL 3.5 users should upgrade to OpenSSL 3.5.4.

OpenSSL 3.4 users should upgrade to OpenSSL 3.4.3.

OpenSSL 3.3 users should upgrade to OpenSSL 3.3.5.

OpenSSL 3.2 users should upgrade to OpenSSL 3.2.6.

OpenSSL 3.0 users should upgrade to OpenSSL 3.0.18.

This issue was reported on 16th August 2025 by Stanislav Fort (Aisle
Research).
The fix was developed by Stanislav Fort (Aisle Research).

General Advisory Notes
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

URL for this Security Advisory:
https://openssl-library.org/news/secadv/20250930.txt

Note: the online version of the advisory may be updated with additional
details
over time.

For details of OpenSSL severity classifications please see:
https://openssl-library.org/policies/general/security-policy/


--=-xgcGjsdmEzTzOxHmSd+E
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iQJGBAABCAAwFiEE3HAyZir4heL0fyQ/UnRmohynnm0FAmjb3qgSHHRvbWFzQG9w
ZW5zc2wub3JnAAoJEFJ0ZqIcp55tFzkQAJY7e3wPFMWzFKB/1mzHX9I11HGP5hSu
SpTf1oKB+Qqy4U3n/upq0+T6qRtu5c0y1EVr+zR4SAA9ZimLwPj3jvRJBHM+RXQD
3X/2pwzq9nOLuzMwaTye3GoKisuAP1Bisccer8rU3JI91rtLTSWeszk0PqicnxPQ
nrv10BQ16yQ4+W0uLGs+Cki0LOANu7KGe+Zh/I2QmO6A6O113M4VtjeYQTJLeEs+
Qn5We10fNO8v7ardWozNLyKYAeIUm6GcvfdHM+n8YgeS6Au3VdhEj9w9Rlw5JKEZ
U9JGAVycwtmchGBQ5TgMSnJHo1GVd6/4VtypvGzZ1INhkswLXLcpoMAwtoG+trit
ciyvCt7umsIXE4t94xK+SkyVXe6joAE+GG6BFhVmbF5m0saNabli/0bxCDtTTLQY
pPgbplP8YIGu+5juMo9xLbLlw9k7cFhJpAm2U/9mwXLE53tQGaXcudKxhvZ1Swgn
AyZUmBkUiqgWHEfNWg30vQ6JTyK27pyP9AfMyx1NSdA6SoL1cSkNg9giN0cq6YqI
h1FLgf5+djlG0dBgXEboR87pfiI9vTib4b1cMbR9fqjIfVLn+i27hWNLXh9XPKeL
IMB9H/f+EQxULB3HThkKR+aZX0V7EVZrNLW5+tlPLdPbFmIqZGbrReaikzELB/bH
Ubx4BZAwJ5fP
=8Fv5
-----END PGP SIGNATURE-----

--=-xgcGjsdmEzTzOxHmSd+E--
