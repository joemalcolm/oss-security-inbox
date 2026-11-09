X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/09/7
Message-ID: <eca91284-2736-e142-5e65-c3e28e2731c9@apache.org>
Date: Mon, 09 Nov 2026 06:00:08 +0000
From: Rahul Vats <rahulvats@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-82337: Apache Airflow: DeadlineAlert fields bypass plugin-registration gate for scheduler-side deserialization 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Airflow before 3.4.0

Description:

Apache Airflow rebuilt deadline alert fields through generic deserialization, which imports and instantiates the class named in the serialized Dag, in the scheduler and API server. A Dag author could cause classes within Airflow's deserialization allow list to be constructed in those processes with arguments they control. Deployments whose Dags use deadline alerts are affected.

This is an incomplete fix of CVE-2026-45360, which only hardened the `reference` field; deployments that applied that fix remain affected through the `callback` and `interval` fields.

Users of apache-airflow are recommended to upgrade to 3.4.0 or later.

Credit:

Claude Security Scans (tool)
Jarek Potiuk (remediation developer)

References:

https://github.com/apache/airflow/pull/72651
https://github.com/apache/airflow/pull/74830
https://www.cve.org/CVERecord?id=CVE-2026-45360
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-82337

