X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/03/10
Message-ID: <99a6356f-6823-9241-799a-306f52ef3b40@apache.org>
Date: Tue, 03 Nov 2026 16:41:07 +0000
From: Andor Molnar <andor@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-100252: Apache ZooKeeper: SASL authorization bypass on the client port through a client-supplied authorization ID 
Content-Type: text/plain; charset=utf-8

Severity: important 
    CVSS 4.0: 8.6 (high) CVSS:4.0/AV:N/AC:L/AT:N/PR:L/UI:N/VC:H/VI:H/VA:N/SC:N/SI:N/SA:N

Affected versions:

- Apache ZooKeeper 3.9.0 through 3.9.6
- Apache ZooKeeper 3.8.0 through 3.8.7

Description:

Improper Authorization vulnerability in Apache ZooKeeper.

When SASL authentication is enabled on the client port, the server's SASL callback handler grants every authorization identity (authzid) that a client requests, without checking it against the principal the client authenticated as. The server then tries to replace the requested identity with a canonical form of the authenticated principal, derived from the zookeeper.security.auth_to_local rules. If no rule applies to the principal, canonicalization fails and the error is only logged. The client-requested authzid then becomes the session's SASL identity for all ACL checks.

An authenticated client whose principal is not covered by the auth_to_local rules can therefore claim any SASL identity. With the default rules, this includes any Kerberos principal from a realm other than the server's default realm, such as a principal from a cross-realm trusted realm. The client then gets the permissions granted to that identity in sasl ACLs. If the requested identity matches a configured zookeeper.superUser, it gets superuser access to the whole data tree.

Users are recommended to upgrade to version 3.8.8 or 3.9.7, which fixes the issue.

Credit:

cunyi li <xiaoheihei1107@...il.com> (reporter)
Prasath Jayasundar & PayPal Cyber Security Team (reporter)

References:

https://zookeeper.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-100252

