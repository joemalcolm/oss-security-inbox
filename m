X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/29/19
Message-ID: <aa8f9e16-6dbf-21e5-4772-67d0b76abee3@apache.org>
Date: Tue, 29 Sep 2026 11:25:42 +0000
From: Wenjun Ruan <wenjun@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-66083: Apache DolphinScheduler: Unauthorized Disclosure of Data Source Information via /datasources/unauth-datasource 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache DolphinScheduler before 3.4.3

Description:

The /datasources/unauth-datasource endpoint does not properly enforce data source authorization. An authenticated user can invoke this endpoint to obtain information about data sources they are not authorized to access. This may expose data source configuration and other sensitive metadata, depending on the fields returned by the endpoint.



This issue affects Apache DolphinScheduler: before 3.4.3.



Users are recommended to upgrade to version 3.4.3, which fixes the issue.

Credit:

n0mi1k (finder)
meifukun (finder)
Mingsheng Lin (finder)
Thành Nguyễn (finder)
Raphael Zanarelli (finder)
geo-chen (finder)

References:

https://dolphinscheduler.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-66083

