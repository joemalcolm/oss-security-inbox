X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/08/21
Message-ID: <c36a690e-a13a-bdc9-f738-21c92ff390fc@apache.org>
Date: Tue, 08 Sep 2026 20:45:15 +0000
From: Michael Smith <michaelsmith@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-54048: Apache Impala: Avro Schema URL Server-Side Request Forgery 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Impala 2.0.0 through 4.5.1

Description:

Specifying tblproperties('avro.schema.url'=' http://...' ) or with a 'file:///' URI on a table in Impala 2.0.0 to 4.5.1 on all platforms allows an attacker to trigger a GET request to internal endpoints they may not have access to but that Impala does and the response my be exposed via parsing error messages.
Users are recommended to upgrade to version 4.5.2, which fixes this issue.

Credit:

zhaokaifei ChinaTelecom (reporter)

References:

https://impala.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-54048

