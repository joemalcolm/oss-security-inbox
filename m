X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/05/8
Message-ID: <CAAwz41Qr3NCNXJOjmwvsg9f0V2vtb7VCURE7Z62bRV0RGvo=xA@mail.gmail.com>
Date: Wed, 5 Aug 2026 16:01:51 +0200
From: Norbert Pócs <norbertp@...nssl.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-54876: OpenSSL: Client-Side Memory Leak in OCSP Response Checking
Content-Type: text/plain; charset=utf-8

OpenSSL Security Advisory [5th August 2026]
===========================================

Client-Side Memory Leak in OCSP Response Checking (CVE-2026-54876)
==================================================================

Severity: Low

Issue summary: A malicious TLS server can cause a memory leak in a TLS
client that has enabled OCSP response checking by sending an OCSP
response that contains no single response entries.

Impact summary: An attacker can leak an attacker-tunable amount of memory
per TLS handshake in a victim client application. A long-running client
that repeatedly connects to a malicious server can have its memory
exhausted, resulting in a Denial of Service.

CWE: CWE-401: Missing Release of Memory after Effective Lifetime

Description: The affected function is called during X.509 certificate
chain verification when OCSP response checking is enabled
with the X509_V_FLAG_OCSP_RESP_CHECK or X509_V_FLAG_OCSP_RESP_CHECK_ALL
verification flags, for example when a TLS client verifies an OCSP
response stapled into the TLS handshake by the server.

When the received BasicOCSPResponse contains an empty SEQUENCE OF
SingleResponse, which is permitted on the wire and accepted by the
OpenSSL decoder, the OCSP_BASICRESP structure allocated by
OCSP_response_get1_basic() was not freed because an early return
bypassed the cleanup code at the end of the function.

The amount of memory leaked per handshake can be amplified by the
attacker by padding the certs field of the BasicOCSPResponse with
bogus certificates, which are parsed and stored in the leaked
structure before the empty response check triggers the early return.
A long-running TLS client that repeatedly connects to a malicious
server can have its memory exhausted over time.

OCSP response checking is not enabled by default. Only client
applications that explicitly enable the OCSP response check
verification flags are affected.

FIPS impact: no

The FIPS modules in 4.0 and 3.6 are not affected by this issue as the
affected code is outside the OpenSSL FIPS module boundary.

OpenSSL 4.0 and 3.6 are vulnerable to this issue.

OpenSSL 3.5, 3.4, 3.0, 1.1.1, and 1.0.2 are not affected by this issue,
as the affected functionality does not exist in these releases.

OpenSSL 4.0 users should upgrade to OpenSSL 4.0.2 once it is released.
OpenSSL 3.6 users should upgrade to OpenSSL 3.6.4 once it is released.

Due to the low severity of this issue we are not issuing new releases of
OpenSSL at this time. The fix will be included in the next release of 4.0
and 3.6 branches, once it becomes available. The fix is also available in
commit
d8c5104 (for 4.0) and commit 155b5fe (for 3.6) in the OpenSSL git
repository.

This issue was reported on 15 June 2026 by Bhabani Sankar Das and
independently on 19 June 2026 by Zhenzhe Shao.
The fix has been developed by Mounir Idrassi.

General Advisory Notes
======================

URL for this Security Advisory:
https://openssl-library.org/news/secadv/20260805.txt

Note: the online version of the advisory may be updated with
additional details over time.

For details of OpenSSL severity classifications, please see:
https://openssl-library.org/policies/general/security-policy/

