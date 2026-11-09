X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/09/3
Message-ID: <b5092432-5974-67ba-5e87-67edacedf8b2@apache.org>
Date: Mon, 09 Nov 2026 05:51:05 +0000
From: Rahul Vats <rahulvats@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-40913: Apache Airflow: Import Errors API Leaks Unauthorized DAG Stack Traces via Incomplete Per-File RBAC Enforcement 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache Airflow before 3.4.0

Description:

Apache Airflow's public Import Errors API returns the raw parse-failure stack trace to any user with the `ImportError.can_read` permission when the failing file has no registered DAG. This happens when a file fails to parse before any DAG is defined, or when all of its previously registered DAGs are removed but the parse error remains. Users who should not see that file's details can read stack traces that may expose file paths and code.

Users are advised to upgrade to Apache Airflow 3.4.0 or later, which restricts these stack traces to users with the new `IMPORT_ERRORS_ALL` permission.

Credit:

se1en (finder)
Jarek Potiuk (remediation developer)

References:

https://github.com/apache/airflow/pull/69790
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-40913

