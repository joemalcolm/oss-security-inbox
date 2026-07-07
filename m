X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/07/6
Message-ID: <6a09320d-8df1-3874-5c03-513724b87229@apache.org>
Date: Tue, 07 Jul 2026 08:25:46 +0000
From: Rahul Vats <rahulvats@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-49487: Apache Airflow: Task-instance API exposes secrets in deferred trigger kwargs 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Airflow (apache-airflow) before 3.3.0

Description:

In Apache Airflow before 3.3.0, the REST API task-instance detail and list
endpoints returned a deferred task's trigger kwargs without masking. When a
deferred operator passed a secret (for example a provider API key) into its
trigger, any authenticated user with DAG-scoped task-instance read access for
that DAG could read that secret in clear text while the task was deferred.
Users should upgrade to apache-airflow 3.3.0 or later, which masks sensitive
values in trigger kwargs returned by the API.

Credit:

Andrew Rukin (Arenadata) (finder)
Jarek Potiuk (@potiuk) (remediation developer)

References:

https://github.com/apache/airflow/pull/67868
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-49487

