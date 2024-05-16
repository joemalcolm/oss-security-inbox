Received: (qmail 12214 invoked by uid 550); 16 May 2024 16:11:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30318 invoked from network); 16 May 2024 16:02:30 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=openssl.org; s=dkim-2020-2;
	t=1715875341; h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type; bh=Y2riKiuVDMx8ws1TWNKzyvSzN4RhhkBqYt+g1cSWzC8=;
	b=tb7RpaDWvTDge70sd802hSF3X+2kivUJKY0eQGs8D41ndWObPW8KRwi8SEzjPGxaDxRmx6
	6iTiCJ84SHNK1biKvMekHjBGWaOiJEEVr5WP+u2a11qoXjgUE6rsq5SkDrdy8Ru/uNczIZ
	DXvpcZ5kQRIgdIZUeLT8V2PJUgms0cwp/acUpfSTilZuhst0V0ojevikQwXXr071jrpLCJ
	yVjcjr9ltmxjX+Y4RMaafVI1sm5Aj0fb7KWmg/geqmneBM3UgsqM9X+REaVIv9CkXkAqBV
	U+2Us9p/LWbbcgCD+bHegB2WUuIQdAoZg8p3sn/s6E5AgU+1oQ+BlSqiqBjdjg==
Date: Thu, 16 May 2024 16:02:21 +0000
From: Tomas Mraz <tomas@openssl.org>
To: oss-security@lists.openwall.com
Message-ID: <ZkYuDd4PG0e89Qfy@openssl.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [oss-security] OpenSSL Security Advisory [corrected CVE id]

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

OpenSSL Security Advisory [16th May 2024]
=========================================

Excessive time spent checking DSA keys and parameters (CVE-2024-4603)
=====================================================================

Severity: Low

Issue summary: Checking excessively long DSA keys or parameters may be very
slow.

Impact summary: Applications that use the functions EVP_PKEY_param_check()
or EVP_PKEY_public_check() to check a DSA public key or DSA parameters may
experience long delays. Where the key or parameters that are being checked
have been obtained from an untrusted source this may lead to a Denial of
Service.

The functions EVP_PKEY_param_check() or EVP_PKEY_public_check() perform
various checks on DSA parameters. Some of those computations take a long time
if the modulus ("p" parameter) is too large.

Trying to use a very large modulus is slow and OpenSSL will not allow using
public keys with a modulus which is over 10,000 bits in length for signature
verification. However the key and parameter check functions do not limit
the modulus size when performing the checks.

An application that calls EVP_PKEY_param_check() or EVP_PKEY_public_check()
and supplies a key or parameters obtained from an untrusted source could be
vulnerable to a Denial of Service attack.

These functions are not called by OpenSSL itself on untrusted DSA keys so
only applications that directly call these functions may be vulnerable.

Also vulnerable are the OpenSSL pkey and pkeyparam command line applications
when using the "-check" option.

The OpenSSL SSL/TLS implementation is not affected by this issue.

The OpenSSL 3.0 and 3.1 FIPS providers are affected by this issue.

OpenSSL 3.3, 3.2, 3.1 and 3.0 are vulnerable to this issue.

OpenSSL 1.1.1 and 1.0.2 are not affected by this issue.

Due to the low severity of this issue we are not issuing new releases of
OpenSSL at this time. The fix will be included in the next releases when they
become available. The fix is also available in commit 53ea0648 (for 3.3),
commit da343d06 (for 3.2), commit 9c39b385 (for 3.1) and commit 3559e868
(for 3.0) in the OpenSSL git repository.

OSSfuzz first detected and automatically reported this issue on 13th February
2024 using a fuzzer recently added to OpenSSL written by Kurt Roeckx. The fix
was developed by Tomas Mraz.

General Advisory Notes
======================

URL for this Security Advisory:
https://www.openssl.org/news/secadv/20240516.txt

Note: the online version of the advisory may be updated with additional details
over time.

For details of OpenSSL severity classifications please see:
https://www.openssl.org/policies/secpolicy.html
-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEE3HAyZir4heL0fyQ/UnRmohynnm0FAmZGLbUACgkQUnRmohyn
nm27iRAAkvc/HNdfAY3l6kBJ2GVUbvPLODxFhzpei5DW1JxUojQwPXe3cXZlBs9D
PDtw85WX4IPULvcrq7BeGxOs4hDR1xkUfzr/5b0t7a9olFy1oYE/and0qpQx3AzP
eS7O9b001ssXtAs43aO6S4H0L5+3lRXPnLhyDfeh4odty4fbSIP8apLXtmaTKt6P
hdm+JLJdrx92aKjraKBcc1YKl2HgCBNRsxBnimKJzZGZVokUZsF0mIZ/G1SZVs0J
W4usEF1JuRD2vAUWcSDU92tZd0Bkz55SjVC7NVPqvqSUAo04f3LhZj1c7rMjSD5p
zjbG6c4PiCC08LRCHRtZUu56Kp1tBYy+X7zZrzDiPF1R/TY9pYYA1JKS6EvbBb/d
8IB3cxeeTzW0StnuxKmOchrMsGJtizh9hGIhy7yzjbQ8oMkhcRsUlbZDQwiHvCUk
qgXP2v0pnqBmVEBfqCBvUOKAy19XMVOUH69JBsuMEPIKzx2k7Y5QvVKZNq3DtboA
lOc0zkfLbtXrNZFDUDqpq2megmVbVlTw619NQE51jN/LPzo7b+fdw1cHTTnQE2Gt
rSQYZnklb0fmfQQJOl4HpCK16SfVebPYU4hRDJ1Yqk6jcClFbit1F7Fz6Ypjv4nM
iTOJAAoat2jQhmqg2VTpuUQGjRMAADvKlpABL4dTYCvJv6RMXTk=
=Efz1
-----END PGP SIGNATURE-----
