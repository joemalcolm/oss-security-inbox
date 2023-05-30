Received: (qmail 1893 invoked by uid 550); 30 May 2023 13:53:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30676 invoked from network); 30 May 2023 13:49:45 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=openssl.org; s=dkim-2020-2;
	t=1685454574; h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type; bh=/d2HjdZhdpv6iNJtjHmi3uEjCeoaSK32eHkC59UsfZw=;
	b=jFyPhEGQSE3+Yg2VKclc5k91ecKsjNlvqOGxyteeJnXPx5IIjNfMZAeCx3JOCe8FO6ksUJ
	c4YRESdA+KHea+v22+4nG6hX1oIwqb8Q39t8tx4pzUav35bbJVCxbMh8cj9spEzrNk3szP
	aAwWSQVQoszEZQ9Hg0BzwjeNhMe511z7hdo/fmgIdJHQsAR/8rGPz9tsE6sxee6RFPRJvU
	koF5DEmX25QIcHBUN1tLCqohlf8zVwv2rFheugt6midLfP0SshXFEMP9ahBYwu4EyK/d9A
	68Vp+ljZq1hAGqQ1VHD+UMHYUw8QCz0Y3L2+sT4H3WQ/rC3VOtpf/ij5fi0A+Q==
Date: Tue, 30 May 2023 13:49:33 +0000
From: Tomas Mraz <tomas@openssl.org>
To: oss-security@lists.openwall.com
Message-ID: <ZHX+7edYF+NnmMvY@openssl.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [oss-security] OpenSSL Security Advisory

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

OpenSSL Security Advisory [30th May 2023]
=========================================

Possible DoS translating ASN.1 object identifiers (CVE-2023-2650)
=================================================================

Severity: Moderate

Issue summary: Processing some specially crafted ASN.1 object identifiers or
data containing them may be very slow.

Impact summary: Applications that use OBJ_obj2txt() directly, or use any of
the OpenSSL subsystems OCSP, PKCS7/SMIME, CMS, CMP/CRMF or TS with no message
size limit may experience notable to very long delays when processing those
messages, which may lead to a Denial of Service.

An OBJECT IDENTIFIER is composed of a series of numbers - sub-identifiers -
most of which have no size limit.  OBJ_obj2txt() may be used to translate
an ASN.1 OBJECT IDENTIFIER given in DER encoding form (using the OpenSSL
type ASN1_OBJECT) to its canonical numeric text form, which are the
sub-identifiers of the OBJECT IDENTIFIER in decimal form, separated by
periods.

When one of the sub-identifiers in the OBJECT IDENTIFIER is very large
(these are sizes that are seen as absurdly large, taking up tens or hundreds
of KiBs), the translation to a decimal number in text may take a very long
time.  The time complexity is O(n^2) with 'n' being the size of the
sub-identifiers in bytes (*).

With OpenSSL 3.0, support to fetch cryptographic algorithms using names /
identifiers in string form was introduced.  This includes using OBJECT
IDENTIFIERs in canonical numeric text form as identifiers for fetching
algorithms.

Such OBJECT IDENTIFIERs may be received through the ASN.1 structure
AlgorithmIdentifier, which is commonly used in multiple protocols to specify
what cryptographic algorithm should be used to sign or verify, encrypt or
decrypt, or digest passed data.

Applications that call OBJ_obj2txt() directly with untrusted data are
affected, with any version of OpenSSL.  If the use is for the mere purpose
of display, the severity is considered low.

In OpenSSL 3.0 and newer, this affects the subsystems OCSP, PKCS7/SMIME,
CMS, CMP/CRMF or TS.  It also impacts anything that processes X.509
certificates, including simple things like verifying its signature.

The impact on TLS is relatively low, because all versions of OpenSSL have a
100KiB limit on the peer's certificate chain.  Additionally, this only
impacts clients, or servers that have explicitly enabled client
authentication.

In OpenSSL 1.1.1 and 1.0.2, this only affects displaying diverse objects,
such as X.509 certificates.  This is assumed to not happen in such a way
that it would cause a Denial of Service, so these versions are considered
not affected by this issue in such a way that it would be cause for concern,
and the severity is therefore considered low.

No version of the FIPS provider is affected by this issue.

OpenSSL 3.0.x and 3.1.x are vulnerable to this issue.
OpenSSL 1.1.1 and 1.0.2 users may be affected by this issue when calling
OBJ_obj2txt() directly.

OpenSSL 3.0 users should upgrade to OpenSSL 3.0.9.
OpenSSL 3.1 users should upgrade to OpenSSL 3.1.1.
OpenSSL 1.1.1 users should upgrade to OpenSSL 1.1.1u.
OpenSSL 1.0.2 users should upgrade to OpenSSL 1.0.2zh (premium support
customers only).

OSSfuzz first detected and automatically reported this issue on 16th January
2020. At that time OpenSSL 3.0 was still in early development and it was not
identified as a security concern at that time. On 23rd April 2023 the issue
was reexamined and identified as a security issue by Matt Caswell.
The fix was developed by Richard Levitte.

(*) A measurement showed about 2 seconds for 100KiB and a minute for 500KiB.
This measurement wasn't made to demonstrate exact time ranges, but rather to
demonstrate the quadratic nature of the issue.

General Advisory Notes
======================

URL for this Security Advisory:
https://www.openssl.org/news/secadv/20230530.txt

Note: the online version of the advisory may be updated with additional details
over time.

For details of OpenSSL severity classifications please see:
https://www.openssl.org/policies/general/security-policy.html

OpenSSL 1.1.1 will reach end-of-life on 2023-09-11. After that date security
fixes for 1.1.1 will only be available to premium support customers.
-----BEGIN PGP SIGNATURE-----

iQJGBAEBCAAwFiEE3HAyZir4heL0fyQ/UnRmohynnm0FAmR1/kQSHHRvbWFzQG9w
ZW5zc2wub3JnAAoJEFJ0ZqIcp55tXS0QAJpUoGfoirteiNuvdRy4PP72E0ZHVsll
2PlsArtQwogpEJD5Z4Escq+Cb7ZPl7uqBdfosJTX31Kr3e/ri6HY3Bzjxa1xOKUo
GHC/RADZqGWemBiabr9BDtJAaadQDS3a8tGSklgab0ueHtCX9zX0ptWE3lW8NGp5
DXQ4pBVzGHpldHgN8OLhpreshbw9RJNvdAXrl445MtUNXy4rJYRTqlHCqwH6qjCM
a/a6sFaIevgspm85L30YWtx38T+vqfNFhl9RZuKbQB9PlL1g3UWpsnvVUCSrXytH
ehlNhyfCX03vNn4Ym/Gp9cj5/1EM0wsF6EVuXGBe6+D/vwh5eLTPgndLr8KKo12C
ysJF4dGdLSKg3KaL6xV4Km+XXv8S4s4MF9FOYqachF6hnBWyTdwkVcTNWBYPmexS
Kw/MpXku65hWrjZT9FGfoFsl3RBYOde9E31ubd6/gUANkzF8jqaMfn966oCmoz2O
uQb29gjEKUQWZD8Es23Yub3Jj0wTvN1i03fIhrzzbgoIR/RGOX/4yTKvsoYk2ddG
+30PPLKXrckQ+n4GT8eq1Fdr6ReKjuMpH3b85Ki2pSuwRY666P+pqWwuV9BGT1QP
uKiSvF4nxdLs4VExQ9XN42zPC6rKKu5t9XxC5xdYEGUKlTxFshDL4dHn93tpl0T3
vuVUvn6INUsN
=xLMN
-----END PGP SIGNATURE-----
