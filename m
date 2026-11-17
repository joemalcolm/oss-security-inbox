X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/17/12
Message-ID: <CADk+mPDkmdYF=9-Dah3kCauSHbUNq7+J7BbYMLQtRMWN4eLUzw@mail.gmail.com>
Date: Tue, 17 Nov 2026 10:39:31 -0600
From: Rainer Gerhards <rgerhards@...scon.com>
To: oss-security@...ts.openwall.com
Subject: rsyslog imdtls listener stalls and permitted-peer bypass (GHSA-4chq-f2r9-5jp8)
Content-Type: text/plain; charset=utf-8

rsyslog imdtls listener stalls and permitted-peer bypass (GHSA-4chq-f2r9-5jp8)

One shared imdtls fix addresses three findings coordinated under
GHSA-4chq-f2r9-5jp8:

R1 — CVE-2026-129836: incomplete DTLS handshake stalls the shared
imdtls listener. After the DTLS cookie exchange, a remote client can
leave the handshake incomplete and block the listener in SSL_accept
before presenting a certificate.

R2 — CVE-2026-129835: an established idle DTLS client can leave the
single imdtls event loop waiting in blocking SSL_read for up to the
configured timeout (1800 seconds by default). At the default
tls.authmode, the client need not hold a trusted client certificate.

R3 — CVE-2026-129834: with tls.authmode=name or fingerprint and
tls.permittedpeer, a CA-signed but non-permitted client can pace the
final handshake flight so completion occurs during SSL_read and
application data is processed without the manual permitted-peer check.
A CA-signed but non-permitted client certificate is required.

The optional imdtls input must be configured and exposed. Affected
upstream versions: rsyslog >= 8.2402.0.

The combined advisory is rated High 7.5,
CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H, for the R1/R2
availability paths (CWE-400). R3 has a conditional Medium 4.3
integrity score, CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U/C:N/I:L/A:N
(CWE-295).

Fixed version: 2026-11-17 daily stable.

Advisory:
https://github.com/rsyslog/rsyslog/security/advisories/GHSA-4chq-f2r9-5jp8

Public fix PR:
https://github.com/rsyslog/rsyslog/pull/8022

The attached source-only patch is the common production fix for R1, R2
and R3. Apply it once. The source paths overlap; these are not three
independently composable patches.

Patch: GHSA-4chq-f2r9-5jp8-source-only.patch
SHA-256: 5978bdfc2a3bf4d9029cdb2412c7a294fb678d106972f0de013b526472b1262e

Restrict network access to exposed imdtls inputs and tightly control
client-certificate issuance until the fix is installed. Source merge,
tag and binary package availability must be checked separately.

We thank Fairuzan Roslan for responsibly reporting the findings.

Download attachment "GHSA-4chq-f2r9-5jp8-source-only.patch" of type "application/octet-stream" (13137 bytes)
