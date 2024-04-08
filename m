Received: (qmail 5871 invoked by uid 550); 8 Apr 2024 14:00:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 4036 invoked from network); 8 Apr 2024 13:59:42 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=openssl.org; s=dkim-2020-2;
	t=1712584773; h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type; bh=NxtFnM1iMBlo1P1eM6aadTL4cZkTCUEWT+TX7jRgGes=;
	b=IcahakCCHIRs4PDtG8quaUA/7C8npdcF0pSlwkbpJjbW8WQSKnzISFYO6+j+xGhIS5R+wq
	7I120JflrADp0LgPvhMR9lxrTDg17dQrJFv4v61SFb2g/fQLNxqAuz84Egde6yPnnh8Z1z
	r+u2NjrwDE7wwbhYuE8o0d+PlAXJE+ItksMScoBVS2Rmacaw+fM1q6gRiIcY1MFJNM+O83
	J6mAny+oQVTqiRfej8dBBaFKTFOFZqC58+hizWAVBjoFbYCTzptGM0HuAZ9SvH6izDO+pp
	8aLlGaPX+BmqCn7CpCwzcmamIMQoO5te4I5w3CkqzGhWjBIi0to/oZmbKtXoug==
Date: Mon, 8 Apr 2024 13:59:33 +0000
From: Tomas Mraz <tomas@openssl.org>
To: oss-security@lists.openwall.com
Message-ID: <ZhP4RYYtFxkcbP+w@openssl.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [oss-security] OpenSSL Security Advisory

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

OpenSSL Security Advisory [8th April 2024]
==========================================

Unbounded memory growth with session handling in TLSv1.3 (CVE-2024-2511)
========================================================================

Severity: Low

Issue summary: Some non-default TLS server configurations can cause unbounded
memory growth when processing TLSv1.3 sessions

Impact summary: An attacker may exploit certain server configurations to trigger
unbounded memory growth that would lead to a Denial of Service

This problem can occur in TLSv1.3 if the non-default SSL_OP_NO_TICKET option is
being used (but not if early_data support is also configured and the default
anti-replay protection is in use). In this case, under certain conditions, the
session cache can get into an incorrect state and it will fail to flush properly
as it fills. The session cache will continue to grow in an unbounded manner. A
malicious client could deliberately create the scenario for this failure to
force a Denial of Service. It may also happen by accident in normal operation.

This issue only affects TLS servers supporting TLSv1.3. It does not affect TLS
clients.

The FIPS modules in 3.2, 3.1 and 3.0 are not affected by this issue. OpenSSL
1.0.2 is also not affected by this issue.

OpenSSL 3.2, 3.1, 3.0, 1.1.1 are vulnerable to this issue.

OpenSSL 3.2 users should upgrade to OpenSSL 3.2.2 once it is released.

OpenSSL 3.1 users should upgrade to OpenSSL 3.1.6 once it is released.

OpenSSL 3.0 users should upgrade to OpenSSL 3.0.14 once it is released.

OpenSSL 1.1.1 users should upgrade to OpenSSL 1.1.1y once it is released
(premium support customers only).

Due to the low severity of this issue we are not issuing new releases of
OpenSSL at this time. The fix will be included in the next releases when they
become available. The fix is also available in commit e9d7083e (for 3.2),
commit 7e4d731b (for 3.1) and commit b52867a9 (for 3.0) in the OpenSSL git
repository. It is available to premium support customers in commit
5f8d2577 (for 1.1.1).

This issue was reported on 27th February 2024 by Manish Patidar (Hewlett Packard
Enterprise). The fix was developed by Matt Caswell.

General Advisory Notes
======================

URL for this Security Advisory:
https://www.openssl.org/news/secadv/20240408.txt

Note: the online version of the advisory may be updated with additional details
over time.

For details of OpenSSL severity classifications please see:
https://www.openssl.org/policies/secpolicy.html
-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEE3HAyZir4heL0fyQ/UnRmohynnm0FAmYT9+oACgkQUnRmohyn
nm1jPRAAlvRaeTjSlW7PULpYxAfCrCfLlMzdC15ybP1mO12ixsbdBN4qRxcXWGFP
TMqseW1pTCvcfQzEjSzswkio6kjBCh8iN3jSEPCJSIW7FWsZBpIZLwdqytp1pMaL
D8Pe1B542dztrCQy+1pobHpxH8EbFVLX8X9VR0nbH2xx6a3cspGc+JwS7RRQzvK3
a27fW+KM/dyjRE8SGbFzxcgparZTcKDhB2WsjW4Hm0Z62J4v/mkxeC30SOrgH4j2
PBsjJW0XqxOdwM40aKqRPXfjnFwDWOaXVZDjARzT9+olnt01WJiXTpnuKKYQ9y1C
4rmUJo+qbxDnsTg+cjBiZGgsEGqH6Fu/VCw6cJF4Wj0+dZDpvludwTtLh4IRaeCp
FqO6HWkdPg+qe9yKBvvqvf84i2kOvmSu4bVrJ5Zh524G3tYj43Uq76IiTSoLxM61
xmSVG3n0ri8H7aiavIjuq8U75uPhqmylwAIbL5wjEuIJayuprCINyBLAcV5VAprs
avXD6D2XBXLFFDLZ4GEDuNIOWVxO3mGGxZ0kulpGWhESIGJaZk7Rvd+xr3jLtxwT
dWdakCmOFtFIAcAdyYow4D5vCJr1p4iaLD3RCvle5bu3KIcThzWHo0ZnTygjyWt6
EgE0LExGT/1RTdtsXQaFQxzKd+gy4gdGfgl0u8ycYbMENKJ/tpE=
=rMVW
-----END PGP SIGNATURE-----
