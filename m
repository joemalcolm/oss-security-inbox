Received: (qmail 26471 invoked by uid 550); 16 May 2024 15:32:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16048 invoked from network); 16 May 2024 15:25:49 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=openssl.org; s=dkim-2020-2;
	t=1715873141; h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type; bh=sldYJdI8lfUMnHOkqrESOmiDfgqwWyzyexamnr0J8T8=;
	b=K151Bh9EEGZN/33GlpjyL6EM518ThwHiZEZ3YqNlFcMiEifBnF1m054Vvm9uBRFXABgDJ2
	6YpQL+RYh033STIRlUm/aa4DGDBGTBIuEVA0DYF6hZcSMjBVZN1NHufQido13UtxsRrGX+
	Eb1DRmN7M4BOE5VskQO+2IHRW0jjasIyzjIsrJWSog95g7ZXSxRhogBiXUwjFm5IvXZo0W
	kVBE93c8SUfNjJHkU0+1YtFKt3mbiIGicyUBeargPb1Oq1y4ZtjXbc6R1oGoDpAehvntiE
	/Wu3G6OvDfxj8IeNdoIWrbayOTIX2FqSgYvn3oKjBLM+VfwLlFfcdX5keFm6nw==
Date: Thu, 16 May 2024 15:25:41 +0000
From: Tomas Mraz <tomas@openssl.org>
To: oss-security@lists.openwall.com
Message-ID: <ZkYldakjG1/RjmnQ@openssl.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [oss-security] OpenSSL Security Advisory

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

OpenSSL Security Advisory [16th May 2024]
=========================================

Excessive time spent checking DSA keys and parameters (CVE-2023-3446)
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

iQIzBAEBCAAdFiEE3HAyZir4heL0fyQ/UnRmohynnm0FAmZGJOMACgkQUnRmohyn
nm3/cg/+JJtAXf0cyAEoDbPX3mTygHN1U3dqpCVFPMwYi23Bqce33wqXrXZqBxsF
m9IM3KRFHsdoArt1q1WWPGpMGLVColq56JwkjGzpaKjooLrb0cEbt6vKp5oepUCW
cv1ieLF5Z5dvYrWfgiO1mu5r88SY6OLCmxJdPIWMgTrgd1+h7AtzGF+olTgLHovp
qEQUNhCYax6RLaFtqcPY6eHuxlH6ARuERPJaPxasv6bPi8VQfYQ349G7ks4adgw9
b0I0qt/wZuGa0p/rpZ99Ev1VAFo9iOxcB8Vftm4nQzBfjCsieKcX+cM7aTnLPUjR
RFr/KmAGY9RcRFOI6UT2xemLP5xb4A3/wgeLjdPbWDeZ5eBe2nvOE07ndHZYxQIC
AxTMVFlWgcVpu2bDEHuhiNvYMW+AZYAfsN2jEOBl13SjN4ty9uLt/KMtM0Dp7p0J
KiDTTaGgX3jlEUt6gy/X314rEeCn5rNrupOfeQNPKnzdlInjP0yKvxF/boXDfQa3
KM7Sp+eZb674n2c83CuUPVfdIF2jmzm6VdB8a4zIAYoiPyw0HljayzPhAuUBhgOO
Q9nrooNs3+aZm/UXEcs0V0X+LPz7+w22z3aQ220sRYuQuZYNkvEfRi+yRzkqqoPd
0Bs7VAdzs6WryLWabkRmfTFagQ9UT9LtXsR+7h6P0By3ps8MaaU=
=DJFm
-----END PGP SIGNATURE-----
