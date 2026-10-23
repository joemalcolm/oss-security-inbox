X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/23/21
Message-ID: <5331b527-bb01-0239-c8c1-7f9c86aaebd2@apache.org>
Date: Fri, 23 Oct 2026 13:14:25 +0000
From: Thomas Wolf <twolf@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-115748: Apache Vysper: Authorization bypass 
Content-Type: text/plain; charset=utf-8

Severity: important 
    CVSS 3.1: 8.8 (high) CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U/C:H/I:H/A:H

Affected versions:

- Apache Vysper: all versions

Description:

**UNSUPPORTED WHEN ASSIGNED**  Authorization bypass in Apache Vysper, all versions.




Apache Vysper is an XMPP (Jabber) server library. Its XEP-0077 (In-Band Registration) implementation is missing an authentication check, allowing any authenticated user to compromise other accounts.




As this project is retired, we do not plan to release a version that fixes this issue. Users are recommended to find an alternative.

Credit:

Ho1aAs <xxy010605@...il.com> (finder)

References:

https://mina.apache.org/vysper-project/
https://mina.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-115748

