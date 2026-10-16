X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/16/4
Message-ID: <20a3f692-914c-eda7-3e72-a7aeaa14c620@apache.org>
Date: Fri, 16 Oct 2026 02:33:15 +0000
From: Li Yang <liyang@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-64959: Apache Kylin: Missing authentication on certain cache API endpoints 
Content-Type: text/plain; charset=utf-8

Severity: critical 

Affected versions:

- Apache Kylin 5.0.0 through 5.0.4

Description:

Improper Neutralization of Special Elements used in an SQL Command ('SQL Injection'), Missing Authentication for Critical Function vulnerability in Apache Kylin. Impact most to the kylin services that are directly exposed to public network, which is not common. In-house kylin deployments are mostly not impacted.



This issue affects Apache Kylin: from 5 through 5.0.4. Certain backend cache API misses required authentication and can cause execution of injected SQL.



Users are recommended to upgrade to version 5.0.5, which fixes the issue.

Credit:

zx (Jace) <g.mygenie@...il.com> (finder)
baozongwi <baozongwi@...com> (finder)
chennbnbnb (finder)

References:

https://kylin.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-64959

