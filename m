X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/23/10
Message-ID: <014ef7d8-25f5-ad20-2cdb-8a163abbdbfb@apache.org>
Date: Wed, 23 Sep 2026 08:43:48 +0000
From: Calvin Kirs <kirs@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-31377: Apache Doris: Improper Authentication Allows Unauthorized Access to FE Meta Service 
Content-Type: text/plain; charset=utf-8

Severity: important 
    CVSS 3.1: 7.5 (high) CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:N/A:N

Affected versions:

- Apache Doris 2.0.0 before 4.0.8
- Apache Doris 4.1.0 before 4.1.4
- Apache Doris before 2.0.0 unaffected
- Apache Doris 4.0.8 before 4.1.0 unaffected
- Apache Doris 4.1.4 or later unaffected

Description:

An Improper Authentication vulnerability in the Apache Doris Frontend (FE) meta service allows an unauthenticated remote attacker to access internal metadata service endpoints.



The affected endpoints relied on client-supplied node information for authentication without providing sufficient authentication of the requesting party. Under certain network configurations, a remote attacker may be able to bypass the intended access control and access internal FE metadata interfaces, potentially exposing sensitive cluster information.



This issue affects Apache Doris: from 2.0.0 through 2.0.*, from 2.1.0 through 2.1.*, from 3.0.0 through 3.0.*, from 3.1.0 through 3.1.*, from 4.0.0 before 4.0.8, and from 4.1.0 before 4.1.4. Versions 1.2.x and earlier are not affected by this header-trust vulnerability.




Users are recommended to upgrade to a fixed release (4.0.8 or 4.1.4), which fixes the issue.

Credit:

Mapta / BugBunny_ai (reporter)
Calvin Kirs, Security Researcher at SelectDB (reporter)
Vlary (Huntree Security Team) (reporter)
Vladimir Tokarev (g1nd1l4) (reporter)
lalalala5678 (reporter)
4ra2n (A code security AI agent) (reporter)
Fakile Emmanuel (reporter)
Fried Chicken (reporter)

References:

https://doris.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-31377

