X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/30/5
Message-ID: <3c3aa81f-e99a-b977-0e61-de5219766cf7@apache.org>
Date: Fri, 30 Oct 2026 01:45:10 +0000
From: Terence Monteiro <terencemo@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-65874: Apache Fineract: SQL injection via ORDER BY parameters in the Center and datatables endpoints 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Fineract through 1.15.0

Description:

This issue affects Apache Fineract versions up to and including 1.15.0. The Center read endpoint (GET /api/v1/centers) and the datatable entry read endpoints (GET /api/v1/datatables/{datatable}/{apptableId} and GET /api/v1/datatables/{datatable}/{apptableId}/{datatableId}) concatenate caller-supplied ordering parameters (orderBy, sortOrder, order) directly into the SQL ORDER BY clause. The existing regex-based input validation can be bypassed, allowing time-based blind SQL injection by any authenticated user with read access to centers or to the targeted datatable.

Users are recommended to upgrade to 1.16.1 which fixes the issue.

Credit:

Abdullah Kareem @cyberkareem (finder)
Louis Van der Walt of Lateran Technologies @SuperUserDone (reporter)
Terence Monteiro @terencemo (remediation developer)
Victor Romero @iohacker (remediation reviewer)

References:

https://github.com/apache/fineract/pull/6230
https://github.com/apache/fineract/pull/6277
https://fineract.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-65874

