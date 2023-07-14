Received: (qmail 25639 invoked by uid 550); 15 Jul 2023 10:31:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30377 invoked from network); 14 Jul 2023 22:00:29 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=openssl.org; s=dkim-2020-2;
	t=1689372017; h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type; bh=5umyb/8cbAie0J4muDQ0FrIpwiPMOf2xevxjvNr2yg8=;
	b=ZoA0/VTKkxLRGVlHikq/yR+REoKW2zjPCea/A3kAbR4xjL7yPwaotWjFbu4FkmUYJGaCZt
	8ywMs4NfiMEn1pavEw8036RVQGZdJp0xVR6GHc2aQ/pw/sPnBeKk7r9L62WWr+09wbXlIc
	0h9nTgMr77sSXGe2rQSnZdodG5ZFXyIu6L6HwfYv1dFjo6vFXeH4/jq5u/xxvdE07GZGdA
	H1oTddLFu7y5/TmKnqw3fSPU1v5zA8SNxhVSQ2R2rVO90vH04ICl2f0NakCmQCgP7eQu1S
	t3u6pADjn0yZaZd/pj7o0As7P/MsUSKkocjb5FmFUu5RCRk7RAYnYao4cmJWsQ==
Date: Fri, 14 Jul 2023 22:00:17 +0000
From: Tomas Mraz <tomas@openssl.org>
To: oss-security@lists.openwall.com
Message-ID: <ZLHFcUb95IUuBQ6p@openssl.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [oss-security] OpenSSL Security Advisory

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

OpenSSL Security Advisory [14th July 2023]
==========================================

AES-SIV implementation ignores empty associated data entries (CVE-2023-2975)
============================================================================

Severity: Low

Issue summary: The AES-SIV cipher implementation contains a bug that causes
it to ignore empty associated data entries which are unauthenticated as
a consequence.

Impact summary: Applications that use the AES-SIV algorithm and want to
authenticate empty data entries as associated data can be misled by removing,
adding or reordering such empty entries as these are ignored by the OpenSSL
implementation. We are currently unaware of any such applications.

The AES-SIV algorithm allows for authentication of multiple associated
data entries along with the encryption. To authenticate empty data the
application has to call EVP_EncryptUpdate() (or EVP_CipherUpdate()) with
NULL pointer as the output buffer and 0 as the input buffer length.
The AES-SIV implementation in OpenSSL just returns success for such a call
instead of performing the associated data authentication operation.
The empty data thus will not be authenticated.

As this issue does not affect non-empty associated data authentication and
we expect it to be rare for an application to use empty associated data
entries this is qualified as Low severity issue.

OpenSSL versions 3.0.0 to 3.0.9, and 3.1.0 to 3.1.1 are vulnerable to this
issue. The FIPS provider is not affected as the AES-SIV algorithm is not
FIPS approved and FIPS provider does not implement it.

OpenSSL versions 1.1.1 and 1.0.2 are not affected by this issue.

Due to the low severity of this issue we are not issuing new releases of
OpenSSL at this time. The fix will be included in the next releases when they
become available. The fix is also available in commit 6a83f0c9 (for 3.1) and
commit 00e2f5ee (for 3.0) in the OpenSSL git repository.

This issue was reported on 16th May 2023 by Juerg Wullschleger (Google).
The fix was developed by Tomas Mraz.

General Advisory Notes
======================

URL for this Security Advisory:
https://www.openssl.org/news/secadv/20230714.txt

Note: the online version of the advisory may be updated with additional details
over time.

For details of OpenSSL severity classifications please see:
https://www.openssl.org/policies/secpolicy.html

OpenSSL 1.1.1 will reach end-of-life on 2023-09-11. After that date security
fixes for 1.1.1 will only be available to premium support customers.
-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEE3HAyZir4heL0fyQ/UnRmohynnm0FAmSxxSgACgkQUnRmohyn
nm3ogw//Zqnff7kHNFaqXQB7plwif+utEBi6/siMNC+/bTn8RSRWsuIJp0vgGTB/
EEkiD2vK5Twrf1mYpKgOiCdQq2AaneHbjqcLtkmBS2apeXcGsBB6ZQgJKe1kRhaL
nC87QJKuUdlQojS4+SBD+MIz/ET1uQNsjjvKfANpKK0L4TgUs2tHNskZG3H6p4az
Kt0uhKaAFBp7jGb+wt3zYIgoyLvnZvx51mIwrf/vv3VAJl8OgEgG+hIk+8AtAVEa
ZCWmkDRuuJxEHuwCjX0iSncwqIViph1JnpqnrXARNcdfZCMdAIfEmVdSTfXmmlQr
TmQPDiBDIlk5ZjHlOGbVCEkUnPQAwiKEQ5bi0x4zI1e/yN64RTARjjaXn5nQsyTf
XHHqFQNSCZ9Fpc4JVuJsSzzxnALKuzIC6uUwzPZxfDQ844e7EBim/V42kcbKizbZ
N073hrxkm54nGRdfXkDguGPGK82GwHJnxPo7COBiBnROswWK++o2eW9PJwD2Vkt3
dQ7t58YXDc+76+yE+L4mYuF6ml6wmUPx9kBzhzBxjgINZod5O8YyuTRrqnRbtsFU
yasNBspjAaVdS5zRFewn4ghQTKIv6OfBn2fTIUNVCfXeAR9Dzd5Ts5zAcYJTaT3o
NNLUBwvP+Fcm2rE2RZ3p6n6YmQLiY8URjtxGGPxJsLDaCTw6IiY=
=eZhV
-----END PGP SIGNATURE-----
