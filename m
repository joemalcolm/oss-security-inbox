X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/09/14
Message-ID: <3eb4b638-b3db-617c-aec2-a84ee222e0e0@apache.org>
Date: Mon, 09 Nov 2026 06:10:05 +0000
From: Rahul Vats <rahulvats@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-111421: Apache Airflow: Execution API: set_xcom skips the reserved-key check, so task-written XComs instantiate airflow.* classes on the API server 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Airflow 3.0.0 before 3.4.0

Description:

Apache Airflow's Task Execution API stored XCom values written by a task without the reserved-key check applied elsewhere, so a Dag author's task could write an XCom that, when a user later viewed it through the API with deserialization enabled, made the API server instantiate classes from the `airflow.*` namespace with arguments the Dag author chose. This is an incomplete fix for CVE-2026-59242: users who applied that fix in apache-airflow 3.3.1 remain affected through this route and should upgrade to apache-airflow 3.4.0 or later.

Credit:

Qi Qin of depthfirst (finder)
Hama1cco (finder)
Zhixi "Jace" Sun, independent security researcher (finder)
Michael Lip (theluckystrike) (finder)
Jarek Potiuk (remediation developer)

References:

https://github.com/apache/airflow/pull/72718
https://github.com/apache/airflow/pull/74829
https://www.cve.org/CVERecord?id=CVE-2026-59242
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-111421

