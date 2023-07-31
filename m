Received: (qmail 11469 invoked by uid 550); 31 Jul 2023 15:40:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9703 invoked from network); 31 Jul 2023 15:38:21 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=openssl.org; s=dkim-2020-2;
	t=1690817882; h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type; bh=/5ubbJjo+y3e2TPqF0LkBDRIa+0MLLqF+Ix3q/9q1q8=;
	b=QhQX36s/yExIxE3jQRcUGakUt9by44W4XdbPUYbZGoAqA2z60AcGmTcRU/6E7esJKrAsZM
	Eq8fUZioXIcPUYLC2alLjnXccpZpkoBqvaIj7Qv3GJMEBHHnmeHo7IOgxyzHgGI+DvyqBA
	jzVtTpdHAiGzWuJq9OkI9+Nqx9M+njRkgfcKUvqxwYT/YWYztoChHjy4HunRCcRhZS0SPo
	3K+osdm4JkMNk6fPN+a72vkYvrqqGAMN1/8tDJl3Y3ZvQkqP2Z2ycGFxNNNvt5hhOq5pzt
	7ChPIXMGz4v4CL9LWNnTszAwQE+nYintQ7JIUXONi+59SMh4erWIO6GbaJirfQ==
Date: Mon, 31 Jul 2023 15:38:01 +0000
From: Matt Caswell <matt@openssl.org>
To: oss-security@lists.openwall.com
Message-ID: <ZMfVWXnJDgDYcnPe@openssl.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [oss-security] OpenSSL Security Advisory

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

OpenSSL Security Advisory [31st July 2023]
==========================================

Excessive time spent checking DH q parameter value (CVE-2023-3817)
==================================================================

Severity: Low

Issue summary: Checking excessively long DH keys or parameters may be very slow.

Impact summary: Applications that use the functions DH_check(), DH_check_ex()
or EVP_PKEY_param_check() to check a DH key or DH parameters may experience long
delays. Where the key or parameters that are being checked have been obtained
from an untrusted source this may lead to a Denial of Service.

The function DH_check() performs various checks on DH parameters. After fixing
CVE-2023-3446 it was discovered that a large q parameter value can also trigger
an overly long computation during some of these checks. A correct q value,
if present, cannot be larger than the modulus p parameter, thus it is
unnecessary to perform these checks if q is larger than p.

An application that calls DH_check() and supplies a key or parameters obtained
from an untrusted source could be vulnerable to a Denial of Service attack.

The function DH_check() is itself called by a number of other OpenSSL functions.
An application calling any of those other functions may similarly be affected.
The other functions affected by this are DH_check_ex() and
EVP_PKEY_param_check().

Also vulnerable are the OpenSSL dhparam and pkeyparam command line applications
when using the "-check" option.

The OpenSSL SSL/TLS implementation is not affected by this issue.

The OpenSSL 3.0 and 3.1 FIPS providers are not affected by this issue.

OpenSSL 3.1, 3.0, 1.1.1 and 1.0.2 are vulnerable to this issue.

Due to the low severity of this issue we are not issuing new releases of
OpenSSL at this time. The fix will be included in the next releases when they
become available. The fix is also available in commit 6a1eb62c2 (for 3.1),
commit 9002fd073 (for 3.0) and commit 91ddeba0f (for 1.1.1) in the OpenSSL git
repository. It is available to premium support customer in commit 869ad69a (for
1.0.2).

This issue was reported on 20th July 2023 by Bernd Edlinger. The fix was
developed by Tomas Mraz.

General Advisory Notes
======================

URL for this Security Advisory:
https://www.openssl.org/news/secadv/20230731.txt

Note: the online version of the advisory may be updated with additional details
over time.

For details of OpenSSL severity classifications please see:
https://www.openssl.org/policies/secpolicy.html

OpenSSL 1.1.1 will reach end-of-life on 2023-09-11. After that date security
fixes for 1.1.1 will only be available to premium support customers.
-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEhlersmDwVrHlGQg52cTSbQ5gRJEFAmTH1M4ACgkQ2cTSbQ5g
RJGhtAf9E3HklBKezKOXvAbsPmCqcjySMVTV/JrBjrDn14UIRjZmhVoHd5QGusN2
ReRtA3bRL41UQYdLKDkdYjp9XmlDDFb5hKO3G7P0ldtDaw21TkIQeI/90OKjgsQu
A+vpf/TcE1a1Pbz8cIRKYBjIaS3z9yIDW4eB0gytWxsqMxze+9IOYNuAbDa0KsqO
PFTUiHr5xu01wsdVdHeUMpZ01E8tGbVwgyY7tvCUAUJcjjLcTb9+gXQLn6cmVRJt
6kU8jsamkiYpL1MoKI5yQvYx0nXZUxXbH1ICPltytC4pBsMEypCCnJTkcJKhRRNt
76Z4/x3XDqMzapYMPimIRifdzPV9FQ==
=Ve/V
-----END PGP SIGNATURE-----
