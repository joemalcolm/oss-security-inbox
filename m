X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/29/1
Message-ID: <94a907d3-1454-f353-f88b-24c2b5837a84@apache.org>
Date: Tue, 28 Jul 2026 17:24:58 +0000
From: Radhika Kundam <radhikakundam@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-50622: Apache Atlas: Missing Authorization on Admin Endpoints 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Atlas (org.apache.atlas:atlas-webapp) 0.8.0 through 2.5.0

Description:

Description:
Missing Authorization in Apache Atlas.
A missing authorization vulnerability in Apache Atlas's admin endpoints allows any authenticated user, regardless of their assigned role, to perform administrative operations.




Affect Version:
This issue affects Apache Atlas: from 0.8 through 2.5.0.


Mitigation:
Users are recommended to upgrade to version 2.6.0, which fixes the issue.

Credit:

Geo (finder)

References:

https://atlas.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-50622

