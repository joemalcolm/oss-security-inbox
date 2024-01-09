Received: (qmail 15900 invoked by uid 550); 9 Jan 2024 16:40:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11517 invoked from network); 9 Jan 2024 16:38:20 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=openssl.org; s=dkim-2020-2;
	t=1704818380; h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type; bh=UuikfIdknSIb7u7GRLh0jJBJP+BkYhtnXnjDlgCNW54=;
	b=m0xfPvRai1H6kZ2DMzlQf1aqo34nNvKE+K+/Ky4tP7CZ5Cp8aCXvutQPYE0kP4YUAAOPZi
	H/Tsyq+M4giyCiY8O2J7idSBDBEbcTOm9VExyOWFFbZDSDbSnRm/A3N4lCqGuev0lpOlZ8
	Lf3ScK3tKmS7h6Mp1Wppwv9cJ2G2PAOuFukqfx4uDK5qyY0Ai09lEg5tNPepHsIxtssi7O
	ZD1tjSoJGfeBzOKjPsmtjzHX1wFBbuXJ02015M/aRByodCsUWop6uhs+oKxPM0OpepogdK
	JJKGXZ1Lix252DXGNFVbyx8aw6STIiMtdO6GdjXpQ4giE3CVzijLw207mJLtUQ==
Date: Tue, 9 Jan 2024 16:39:40 +0000
From: Tomas Mraz <tomas@openssl.org>
To: oss-security@lists.openwall.com
Message-ID: <ZZ12zJ/s2udpuPw7@openssl.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [oss-security] OpenSSL Security Advisory

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

OpenSSL Security Advisory [9th January 2024]
============================================

POLY1305 MAC implementation corrupts vector registers on PowerPC (CVE-2023-6129)
================================================================================

Severity: Low

Issue summary: The POLY1305 MAC (message authentication code) implementation
contains a bug that might corrupt the internal state of applications running
on PowerPC CPU based platforms if the CPU provides vector instructions.

Impact summary: If an attacker can influence whether the POLY1305 MAC
algorithm is used, the application state might be corrupted with various
application dependent consequences.

The POLY1305 MAC (message authentication code) implementation in OpenSSL for
PowerPC CPUs restores the contents of vector registers in a different order
than they are saved. Thus the contents of some of these vector registers
are corrupted when returning to the caller. The vulnerable code is used only
on newer PowerPC processors supporting the PowerISA 2.07 instructions.

The consequences of this kind of internal application state corruption can
be various - from no consequences, if the calling application does not
depend on the contents of non-volatile XMM registers at all, to the worst
consequences, where the attacker could get complete control of the application
process. However unless the compiler uses the vector registers for storing
pointers, the most likely consequence, if any, would be an incorrect result
of some application dependent calculations or a crash leading to a denial of
service.

The POLY1305 MAC algorithm is most frequently used as part of the
CHACHA20-POLY1305 AEAD (authenticated encryption with associated data)
algorithm. The most common usage of this AEAD cipher is with TLS protocol
versions 1.2 and 1.3. If this cipher is enabled on the server a malicious
client can influence whether this AEAD cipher is used. This implies that
TLS server applications using OpenSSL can be potentially impacted. However
we are currently not aware of any concrete application that would be affected
by this issue therefore we consider this a Low severity security issue.

OpenSSL versions 3.0.0 to 3.0.12, 3.1.0 to 3.1.4 and 3.2.0 are vulnerable to
this issue. The FIPS provider is not affected because the POLY1305 MAC
algorithm is not FIPS approved and the FIPS provider does not implement it.

OpenSSL versions 1.1.1 and 1.0.2 are not affected by this issue.

Due to the low severity of this issue we are not issuing new releases of
OpenSSL at this time. The fix will be included in the next releases when they
become available. The fix is also available in commit 5b139f95 (for 3.2),
commit f3fc5808 (for 3.1) and commit 050d263 (for 3.0) in the OpenSSL git
repository.

This issue was reported on 9th October 2023 by Sverker Eriksson (Ericsson).
The fix was developed by Rohan McLure (IBM).

General Advisory Notes
======================

URL for this Security Advisory:
https://www.openssl.org/news/secadv/20240109.txt

Note: the online version of the advisory may be updated with additional details
over time.

For details of OpenSSL severity classifications please see:
https://www.openssl.org/policies/secpolicy.html
-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEE3HAyZir4heL0fyQ/UnRmohynnm0FAmWddmsACgkQUnRmohyn
nm3nyBAAokn+TaX6ctAfk5TddGFSLabmBWOieIt52qAEqVxOnOn3IK/Ezuv6x3Gk
SrXzuTY9w8mAezME2ZUrDULuixji0u/n84RRXCqJaAo0s4bPl5BY9munrG+2dBsh
rusDdd8bzYdeDtRLjVeYjqMreVrpDSVx8JKto/nKcxK1w/yrzCXwpTe+n6pDu8PI
OXQAcnDvFXWN7I7x23XQrv/Gx2crwNo3GuV1Seoih+595dAjjeyTsxChQCAwAooV
MoCrHjdur6l9ALlQBj3Y4zZkBcyuUV4ngiNiptBVcBQB+ktcaVzMp2C6AVz3xARJ
eiVXBAflL/UVkYcskgBeZfuDxS/NBcImpyKyjrfp5HQPh7ahqeyLdQraQBh82VjJ
ArpKzLP/Ngl6QsCikkJZKEGAP7hTlaXShmNyKy7qIGmMNadMV4epL+lNxEEXk9aP
f65obbiumGsBypY/4BzIEv2Kr9EXXeVJiHibscAaWch5e3q9e0eQuLXO/TOHpxLf
NEhOXVSpBt6sp4C6hgztRTIX3/2H/xTH4ZqVwJezhra2x9ytrIDhiQVzOvE5tDdH
Kzr+ydZhp7H/3NrhO2LgIHC67McU3MQNv44xUx9UTm1WaspZiZtqgP+vrgEfffs4
Vx9Uv06OxZmTD/X2OHzgNhkqN5FwHaRUhnWmRzt63XThHO1Rxm4=
=8de2
-----END PGP SIGNATURE-----
