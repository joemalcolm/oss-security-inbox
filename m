X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/30/6
Message-ID: <e08eb00f-b26d-baa9-0688-40938fc6f846@apache.org>
Date: Thu, 30 Jul 2026 09:16:47 +0000
From: Daniel Gaspar <dpgaspar@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-23981: Apache Superset: Improper Authorization in Chart Update allowing Dashboard Modification 
Content-Type: text/plain; charset=utf-8

Severity: 

Affected versions:

- Apache Superset 0.0.0 before 6.0.0

Description:

An Improper Authorization vulnerability exists in Apache Superset allowing an authenticated user with permissions to update charts to modify dashboards they do not own. When updating a chart's properties via the REST API, a user can provide a list of dashboard IDs (dashboards) to associate the chart with. The validation logic in the UpdateChartCommand failed to verify that the user had write permissions for the target dashboards specified in the request body. 

This issue affects Apache Superset: before 6.0.0.

Users are recommended to upgrade to version 6.0.0, which fixes the issue.

Credit:

Đỗ Thành Đạt (reporter)
Daniel Gaspar (remediation developer)

References:

https://superset.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-23981

