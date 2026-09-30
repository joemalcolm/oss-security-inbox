X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/30/4
Message-ID: <810e1f38-7e5a-40a1-2248-5058cfa49b9f@apache.org>
Date: Wed, 30 Sep 2026 07:36:58 +0000
From: Christofer Dutz <cdutz@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-102508: Apache PLC4X: OPC UA secure channel: integrity bypass, unverifiable server certificate, and silent downgrade 
Content-Type: text/plain; charset=utf-8

Severity: 
    CVSS 4.0: 9.2 (critical) CVSS:4.0/AV:N/AC:L/AT:P/PR:N/UI:N/VC:H/VI:H/VA:H/SC:N/SI:N/SA:N

Affected versions:

- Apache PLC4X 0.9.0 before 1.0.0
- Apache PLC4X 1.0.0 unaffected

Description:

Improper Verification of Cryptographic Signature and Improper Certificate Validation in the OPC UA driver of Apache PLC4X (PLC4J) allows an attacker in a network position between client and server to impersonate the OPC UA server and to read, forge or modify secure-channel traffic, including user credential ssent by the client.

The defect manifests differently depending on the version:
- In 0.9.0 through 0.11.0 a failed message-signature check is only logged and never enforced, and there is no mechanism to verify the server certificate: it is taken from the unauthenticated GetEndpoints discovery response and used to encrypt the user's password.
- In 0.12.0 through 0.13.1 the signature check is inverted (valid signatures are rejected, invalid ones accepted), and server certificates are accepted without a trust anchor by default.
- In all affected versions the default security policy is None. Starting with 0.12.0 the driver additionally continues silently at a weaker security policy than the one configured, and starting with 0.13.0 endpoint selection prefers the weakest matching endpoint.

Users checking only for one of these mechanisms may wrongly conclude they are unaffected.

This issue affects Apache PLC4X: from 0.9.0 before 1.0.0.

Users are recommended to upgrade to version 1.0.0, which fixes the issue. Version 1.0.0 verifies message signatures correctly, refuses to connect unless the server certificate can be verified against a configured trust store or pinned certificate, defaults to Basic256Sha256 with SignAndEncrypt, and fails the
connection if the negotiated security policy is weaker than the configured one.

Credit:

Abhinav Agarwal (finder)

References:

https://plc4x.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-102508

Timeline:

2026-07-09: reported to the Apache Security Team
2026-07-10: fixed on develop (a2dbb6bfc0, 5a4d5bdb4c)
2026-09-07: Apache PLC4X 1.0.0 released with the fix

