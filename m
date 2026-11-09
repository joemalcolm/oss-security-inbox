X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/09/10
Message-ID: <ae682bb5-d063-7a11-30f3-3763207ee6a2@apache.org>
Date: Mon, 09 Nov 2026 06:03:39 +0000
From: Rahul Vats <rahulvats@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-96285: Apache Airflow: Scheduler: next_kwargs deserialized before the dict check, so resume data still invokes constructors 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Airflow 3.3.0 before 3.4.0

Description:

Apache Airflow 3.3.1 shipped a fix for CVE-2026-67260 that checks the scheduler's decoded `next_kwargs` value is a dictionary, but performs that check only after deserializing the whole stored payload. Deserialization reconstructs nested objects of classes permitted by the deserialization allow-list — which by default includes Airflow's own classes — and runs their constructors inside the scheduler process before the check can reject the value. A Dag author, who controls a task's `next_kwargs` through the task execution API, can therefore still trigger constructor execution in the scheduler when the `awaiting_input` timeout sweep processes the task, and in the API server when the task instance is served to a worker using an older Execution API version; no non-default configuration is required. Versions before 3.3.0 are not affected. This is an incomplete fix for CVE-2026-67260: deployments that upgraded to 3.3.1 for that issue must also upgrade to apache-airflow 3.4.0 or later.

Credit:

Andrew Rukin (Arenadata) (finder)
Jarek Potiuk (remediation developer)

References:

https://github.com/apache/airflow/pull/73576
https://github.com/apache/airflow/pull/73577
https://www.cve.org/CVERecord?id=CVE-2026-67260
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-96285

