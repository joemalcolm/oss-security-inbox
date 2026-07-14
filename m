X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/14/3
Message-ID: <88bc7a9e-25da-3579-2e79-266007db73be@apache.org>
Date: Tue, 14 Jul 2026 01:29:59 +0000
From: Mingyu Chen <morningman@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-58319: Apache Doris: Improper Authentication in Frontend HTTP API 
Content-Type: text/plain; charset=utf-8

Severity: critical 

Affected versions:

- Apache Doris 2.1.0 before 3.1.0

Description:

Certain Apache Doris FE HTTP REST administrative APIs were accessible without proper authentication. An unauthenticated attacker with network access to the FE HTTP service could perform unauthorized administrative operations, potentially affecting cluster integrity and availability and leading to cluster instability or denial of service. 

This issue affects Apache Doris versions prior to 3.1.0. Users are advised to upgrade to Apache Doris 3.1.0 or later.

Credit:

Calvin Kirs, Security Researcher at SelectDB (finder)

References:

https://doris.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-58319

