X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/26/7
Message-ID: <CADk+mPBobf-eL+ebfy-sDnvuywSZ84ND44ZfV-MH5hSpRf-Kqw@mail.gmail.com>
Date: Thu, 26 Nov 2026 08:54:03 -0800
From: rgerhards@...scon.com
To: oss-security@...ts.openwall.com
Subject: librelp: 2 security advisories published 2026-11-26
Content-Type: text/plain; charset=utf-8

Hello,

librelp has published the following security advisory(ies).

Fix: https://github.com/rsyslog/librelp/commit/87a447e3f656d3e4d6e5f9d1f0e72a16527d342d

GHSA-28c2-q5pf-2qm3 (CVE-2026-132888): GnuTLS certvalid authentication
mode accepts any certificate
Advisory: https://github.com/rsyslog/librelp/security/advisories/GHSA-28c2-q5pf-2qm3

### Summary
When librelp is built with GnuTLS and a RELP connection uses TLS with
the authentication mode `certvalid`, the peer certificate is not
validated at all. Any certificate is accepted, including self-signed
certificates and certificates from an unrelated CA.

### Impact
Affected are systems that use RELP over TLS with
`tls.authmode="certvalid"` and the GnuTLS driver (the default TLS
library of rsyslog's imrelp and omrelp).
- On a RELP server (rsyslog `imrelp`), any host that can reach the
listener can connect and inject log messages that look like they come
from a trusted sender.
- On a RELP client (rsyslog `omrelp`), an attacker who can intercept
the connection can pose as the log server and receive the forwarded
logs.

Configurations with `fingerprint` or `name` authentication, without
TLS, or with the OpenSSL driver are not affected. Affected versions:
1.2.18 up to and including 1.13.0.

### Patches
Fixed in librelp 1.14.0. Update librelp and restart rsyslog.

### Workarounds
- Switch to `tls.authmode="fingerprint"` or `tls.authmode="name"` with
permitted peers; both verify the certificate.
- Or use the OpenSSL driver (module parameter `tls.tlslib="openssl"`
of imrelp/omrelp).
- Restrict access to the RELP port (often 2514/tcp) with a firewall to
known senders. This does not stop spoofing from within the allowed
range.

### Credits
- s4cr00t (Alipay Security Team), finder (reported to Red Hat)
- Rainer Gerhards, remediation developer

### References
- https://access.redhat.com/security/cve/CVE-2026-132888
- Fix: rsyslog/librelp PR #306 and #308
- Release: https://github.com/rsyslog/librelp/releases/tag/v1.14.0

Affected: librelp >= 1.2.18, < 1.14.0
Severity: High, CVSS 3.1 7.5 (CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:H/A:N)

GHSA-v49f-8x9x-3gwh (CVE-2026-132889): Corrupted TLS record terminates
the host process (GnuTLS)
Advisory: https://github.com/rsyslog/librelp/security/advisories/GHSA-v49f-8x9x-3gwh

### Summary
With the GnuTLS driver, librelp terminated the whole process when
receiving a TLS record failed after the handshake, instead of closing
only the affected connection.

### Impact
A peer that completes the TLS handshake can stop rsyslog (and every
other application using librelp in the same process) by sending one
corrupted record. Log reception stops until the service is restarted.
Affected are librelp 1.4.0 to 1.10.0 built with GnuTLS and used with
RELP over TLS.

### Patches
Fixed in librelp 1.11.0 (released 2023-01-02). Current releases are
not affected.

### Workarounds
- Restrict access to the RELP port to trusted senders and require
certificate authentication (`fingerprint` or `name`), so only known
peers complete the handshake.
- Run rsyslog under a service manager that restarts it automatically.

### Credits
- s4cr00t (Alipay Security Team), finder (reported to Red Hat)
- Andre Lorbach, remediation developer

### References
- https://access.redhat.com/security/cve/CVE-2026-132889
- Fix: rsyslog/librelp commit cab8afd, issue #230

Affected: librelp >= 1.4.0, < 1.11.0
Severity: Medium, CVSS 3.1 6.5 (CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U/C:N/I:N/A:H)

Regards,
the rsyslog security team
(sent automatically by the rsyslog release system)
