Received: (qmail 17668 invoked by uid 550); 25 Jan 2024 18:44:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15508 invoked from network); 25 Jan 2024 18:42:58 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=openssl.org; s=dkim-2020-2;
	t=1706208299; h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type; bh=h/T4h7AjjPL2oNdmMHUJvWxBpidXkwZ2lNduIiRJimY=;
	b=Ydv/fQr+Ue57BTZJlW1le0AG6VEHwBoNbcA+OkNnmPU8sILd6oIssgTV4xLCkUFXmdsS8y
	FijbFv5ZmsynX4leh1lNfZNuS/HDy+R89zsFOutcJjdHUc0AbMyHg9c7YzKd3QhrDywE3B
	LsXQoxmIbzb7ePgut6Uz/5ULuc5WeLrMr9sYefUdCNodbnrEuoXd1pcCGtTNVmAy31CW92
	tfDAw4U93Xp3NujiCWjM9niiOzsC6oOLsmjCYofF4SPvOFy73/Mm41w/pddq6JjeNI8+rE
	oiFhBqdbaL35fz2zFlOjXMHCpvCI+pDqVlQCz3e/uELfvEJSfAwvKHLABmoPzg==
Date: Thu, 25 Jan 2024 18:44:59 +0000
From: Matt Caswell <matt@openssl.org>
To: oss-security@lists.openwall.com
Message-ID: <ZbKsK90vOQePnHQV@openssl.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [oss-security] OpenSSL Security Advisory

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

OpenSSL Security Advisory [25th January 2024]
=============================================

PKCS12 Decoding crashes (CVE-2024-0727)
=======================================

Severity: Low

Issue summary: Processing a maliciously formatted PKCS12 file may lead OpenSSL
to crash leading to a potential Denial of Service attack

Impact summary: Applications loading files in the PKCS12 format from untrusted
sources might terminate abruptly.

A file in PKCS12 format can contain certificates and keys and may come from an
untrusted source. The PKCS12 specification allows certain fields to be NULL, but
OpenSSL does not correctly check for this case. This can lead to a NULL pointer
dereference that results in OpenSSL crashing. If an application processes PKCS12
files from an untrusted source using the OpenSSL APIs then that application will
be vulnerable to this issue.

OpenSSL APIs that are vulnerable to this are: PKCS12_parse(),
PKCS12_unpack_p7data(), PKCS12_unpack_p7encdata(), PKCS12_unpack_authsafes()
and PKCS12_newpass().

We have also fixed a similar issue in SMIME_write_PKCS7(). However since this
function is related to writing data we do not consider it security significant.

The FIPS modules in 3.2, 3.1 and 3.0 are not affected by this issue.

OpenSSL 3.2, 3.1, 3.0, 1.1.1 and 1.0.2 are vulnerable to this issue.

OpenSSL 3.2 users should upgrade to OpenSSL 3.2.1 once it is released.

OpenSSL 3.1 users should upgrade to OpenSSL 3.1.5 once it is released.

OpenSSL 3.0 users should upgrade to OpenSSL 3.0.13 once it is released.

OpenSSL 1.1.1 users should upgrade to OpenSSL 1.1.1x once it is released
(premium support customers only).

OpenSSL 1.0.2 users should upgrade to OpenSSL 1.0.2zj once it is released
(premium support customers only).

Due to the low severity of this issue we are not issuing new releases of
OpenSSL at this time. The fix will be included in the next releases when they
become available. The fix is also available in commit x (for 3.2),
commit x (for 3.1) and commit x (for 3.0) in the OpenSSL git
repository. It is available to premium support customers in commit
x (for 1.1.1) and in commit
x (for 1.0.2).

This issue was reported on 23rd November 2023 by Bahaa Naamneh (Crosspoint
Labs). The fix was developed by Matt Caswell.

General Advisory Notes
======================

URL for this Security Advisory:
https://www.openssl.org/news/secadv/20240125.txt

Note: the online version of the advisory may be updated with additional details
over time.

For details of OpenSSL severity classifications please see:
https://www.openssl.org/policies/secpolicy.htm
-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEhlersmDwVrHlGQg52cTSbQ5gRJEFAmWyq2gACgkQ2cTSbQ5g
RJFubAf/QN+25L2Kmev6Lk9P1BK8E2jZG+l9sa2O82tJwOyjRIimPQ0BW7KXwnKx
M+oEr952wwiCu/1I7dECn3/BOtQ/TDBVaELvS2W40RVyn4gGd2jD3igkrMsNb+Xu
U5oAu+kwfHp+PHhhCBxiGHVxj9cea17H3qH5DQZ4YK/X0ygdq16vvOBjNwkP8WTV
adfnWr107NvqUGCxhCDexyx1+YUWAdKuVfaKjkw6jBfR/MUPwH6qqBttfpqPUr1Z
o6bptN12iCuK9pQxFrUypL1OjsV83IMuxsBr0SOkrOH8+J7E9n33/xJZ7USRGSDY
rTBsL12SFQ8nxODAzgJOVT5QOp5Ayg==
=BQuZ
-----END PGP SIGNATURE-----
