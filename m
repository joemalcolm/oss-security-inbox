X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/09/11
Message-ID: <68bc337d-9809-3527-a2b3-e56116019178@apache.org>
Date: Mon, 09 Nov 2026 06:05:41 +0000
From: Rahul Vats <rahulvats@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-101031: Apache Airflow: Shell command injection in the example_dag_decorator example Dag via an IPv6 zone identifier 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache Airflow 3.0.5 before 3.4.0

Description:

The `example_dag_decorator` example Dag shipped with Apache Airflow validated an IP address fetched over HTTP with Python's `ipaddress` module and then placed it into a shell command. `ipaddress` accepts IPv6 zone identifiers containing arbitrary characters, so when example Dags are loaded (`load_examples` enabled), a user who can trigger that Dag with a custom `url` parameter could point it at a server whose response injects shell commands run on the worker. This is an incomplete fix for CVE-2025-54941; users who upgraded for CVE-2025-54941 should upgrade again. Users are advised to upgrade to apache-airflow 3.4.0 or later, or to disable example Dags (`load_examples = False`), which is recommended for production.

Credit:

Andrew Rukin (Arenadata) (finder)
Jarek Potiuk (remediation developer)

References:

https://github.com/apache/airflow/pull/73787
https://www.cve.org/CVERecord?id=CVE-2025-54941
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-101031

