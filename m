X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/12/13
Message-ID: <e1c5b5a1-1383-ad2b-cf66-e748d96b667d@apache.org>
Date: Wed, 12 Aug 2026 13:51:41 +0000
From: Rahul Vats <rahulvats@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-68969: Apache Airflow: Bulk Variable and Connection endpoints record secret values in the audit log in cleartext 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Airflow (apache-airflow) before 3.3.1

Description:

Apache Airflow wrote Variable values and Connection `extra` contents to the audit log in cleartext when they were submitted through the bulk endpoints (`PATCH /api/v2/variables` and `PATCH /api/v2/connections`). The audit-log masking recognised only top-level request fields, and a bulk request nests its entities two levels below, so no masking was applied to them. Any authenticated user with audit-log read access -- who need not hold Variables or Connections read at all -- could recover those secrets verbatim, and the Connection `extra` copy is stored unencrypted in the log while the connection table encrypts it. The Airflow UI's *Import Variables* action posts to this endpoint, so an ordinary operator import wrote every secret in the file to the log. This is a different code path from CVE-2026-50204: that fix shipped in 3.3.0 and covers the single-entity endpoints only, so deployments that upgraded in response to that advisory remain affected and must upgrade again. Users are advised to upgrade to apache-airflow 3.3.1 or later.

Credit:

Jarek Potiuk (remediation developer)

References:

https://github.com/apache/airflow/pull/70890
https://www.cve.org/CVERecord?id=CVE-2026-50204
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-68969

