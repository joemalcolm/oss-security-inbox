X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/16/16
Message-ID: <e1d44c65-ba42-81ca-28d4-a0cea92bc4bb@apache.org>
Date: Fri, 16 Oct 2026 03:05:10 +0000
From: Li Yang <liyang@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-108771: Apache Kylin: unauthenticated broadcast API and polymorphic deserialization 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Kylin 4.0.0 through 5.0.4

Description:

Missing authentication for in-house broadcast and polymorphic deserialization vulnerability in Apache Kylin. Impact most to the kylin services that are directly exposed to public network, which is not common. In-house kylin deployments are mostly not impacted.



This issue affects Apache Kylin: from 4.0.0 through 5.0.4.



Users are recommended to upgrade to version 5.0.5, which fixes the issue.

Credit:

MopMonk-AI (finder)
Wanxin Yin (finder)
Dilrevx (finder)

References:

https://kylin.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-108771

