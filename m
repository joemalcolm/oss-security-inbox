X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/30/4
Message-ID: <613be1da-2e8d-e5d9-037e-983f8719f4d2@apache.org>
Date: Fri, 30 Oct 2026 01:39:58 +0000
From: Terence Monteiro <terencemo@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-64618: Apache Fineract: SQL injection vulnerability in Search API 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Fineract through 1.15.0

Description:

Improper Neutralization of Special Elements used in an SQL Command ("SQL Injection") vulnerability exists in Apache Fineract (through version 1.15.0). The vulnerability affects the outStandingAmountPercentageCondition parameter of the /fineract-provider/api/v1/search/advance HTTP API endpoint, allowing SQL injection due to insufficient input neutralization. Users are recommended to upgrade to version 1.16.1, which will fix the issue.

Credit:

thiscodecc of MoyunSec Vlab and Bing (finder)
Adam Saghy (@adamsaghy) (remediation developer)

References:

https://github.com/apache/fineract/pull/6153
https://fineract.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-64618

