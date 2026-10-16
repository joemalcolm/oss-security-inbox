X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/16/5
Message-ID: <38ca6bc1-7074-fb16-8dd2-6a6346edd214@apache.org>
Date: Fri, 16 Oct 2026 02:34:34 +0000
From: Li Yang <liyang@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-68571: Apache Kylin: JDBC URL Whitelist Verification Bypass 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Kylin 4.0.0 through 5.0.4

Description:

Improper Control of Generation of Code ('Code Injection') vulnerability in Apache Kylin. Special parameter in JDBC URL can lead to code injection. 
Impact most to the kylin services that are directly exposed to public network, which is not common. In-house kylin deployments are mostly not impacted.





This issue affects Apache Kylin: from 4 through 5.0.4.



Users are recommended to upgrade to version 5.0.5, which fixes the issue.

Credit:

Fushuling, RacerZ, yulate (finder)

References:

https://kylin.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-68571

