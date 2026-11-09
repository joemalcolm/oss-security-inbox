X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/09/9
Message-ID: <fc8cac2d-aded-1f28-ff7d-a38ab438c762@apache.org>
Date: Mon, 09 Nov 2026 05:57:58 +0000
From: Rahul Vats <rahulvats@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-86829: Apache Airflow: Deserialization of task-controlled XCom values in the Scheduler during dependency evaluation 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Airflow before 3.4.0

Description:

Apache Airflow's scheduler fully deserializes XCom values written by task code while evaluating task dependencies. A Dag author, who controls what a task writes to XCom, therefore controls data that is deserialized inside the scheduler process - a context the Airflow security model reserves for code installed by the Deployment Manager, above the worker-scoped execution capability a Dag author is documented to have. Deployments that treat Dag authors as less trusted than Deployment Managers are affected, and the scheduler must be evaluating a task dependency that reads a task-written XCom value. Users of apache-airflow are recommended to upgrade to version 3.4.0 or later, which restricts dependency evaluation to primitive XCom values.

Credit:

Claude Security Scans (tool)
Jarek Potiuk (remediation developer)

References:

https://github.com/apache/airflow/pull/72718
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-86829

