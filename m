X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/07/5
Message-ID: <2f22794d-cda0-088a-7016-24b88adc3f12@apache.org>
Date: Tue, 07 Jul 2026 08:28:19 +0000
From: Rahul Vats <rahulvats@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-49296: Apache Airflow: Per-DAG read bypass discloses co-located DAGs' source via GET /api/v2/dagSources/{dag_id} 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache Airflow (apache-airflow) 3.0.0 before 3.3.0

Description:

Before apache-airflow 3.3.0, a user authorized to read one Dag could disclose the source of other Dags co-located in the same source file. `GET /api/v2/dagSources/{dag_id}` — and the equivalent Dag-source view in the UI — returned the entire source file without redacting Dags the caller was not authorized to read, bypassing per-DAG read authorization. Deployments that co-locate multiple Dags in a single file and rely on per-DAG access control to limit source visibility are affected; single-Dag-per-file deployments are not. Upgrade to apache-airflow 3.3.0 or later.

Credit:

Matteo Panzeri (Università di Pavia), GitHub @matte1782 (finder)
Jarek Potiuk (remediation developer)

References:

https://github.com/apache/airflow/pull/67662
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-49296

