X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/24/13
Message-ID: <CADk+mPD=o5gW0mtK8fK-9M69UtG83r+fuVDSf_7v84-X1p0SMg@mail.gmail.com>
Date: Tue, 24 Nov 2026 08:37:15 -0800
From: rgerhards@...scon.com
To: oss-security@...ts.openwall.com
Subject: rsyslog: omdtls name/fingerprint modes do not verify DTLS server identity (CVE-2026-132145)
Content-Type: text/plain; charset=utf-8

Hello,

rsyslog has published GHSA-85fj-w7cw-38fv (CVE-2026-132145) for its
optional omdtls output module. It was pre-notified to the distros list
on 2026-11-22.

Advisory: https://github.com/rsyslog/rsyslog/security/advisories/GHSA-85fj-w7cw-38fv
Fix: https://github.com/rsyslog/rsyslog/pull/8065

Summary

omdtls offers tls.authmode="name" and tls.authmode="fingerprint" for
DTLS receiver authentication. In affected versions both modes validate
the receiver certificate chain but do not bind the certificate to the
expected receiver name or fingerprint. An attacker who can redirect
outbound DTLS traffic to a receiver with a different-identity
certificate accepted by the configured CA trust set may receive the
forwarded logs.

Preconditions

An operator must explicitly configure omdtls with one of these
authentication modes, and the attacker needs traffic redirection or
on-path control plus a certificate accepted by the configured or
inherited CA trust set. An untrusted certificate is rejected. This is
not a default-installation issue. tls.authmode="certvalid" is
chain-only by design and outside this finding.

Affected versions

The defect entered with omdtls. The first confirmed affected upstream
stable release is v8.2402.0; releases through v8.2610.0 are affected.
Fixed in: 2026-11-24 daily stable.

Fix

The fix keeps certificate-chain validation and adds receiver-identity
enforcement before logs are sent. In name mode the certificate is
compared with the configured target DNS name or IP address, or with an
explicit tls.permittedpeer value. Fingerprint mode requires a complete
SHA-256 certificate pin in tls.permittedpeer. A missing or malformed
pin fails at configuration load, and an identity or fingerprint
mismatch rejects the connection. Operators whose network target
differs from the certificate identity need to set tls.permittedpeer
explicitly after updating.

Workaround

Until a fixed build is deployed, restricting the CA trust set to the
intended receiver reduces the opportunity to present another trusted
certificate, but does not replace identity verification.

Severity

Medium, CVSS 3.1 5.9 (CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:H/I:N/A:N).

Credits

We thank Arthur Chan, David Korczynski and Adam Korcz (Ada Logics) for
reporting and helping analyze this issue.

Regards,
Rainer Gerhards
rsyslog project
