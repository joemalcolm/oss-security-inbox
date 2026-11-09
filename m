X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/09/16
Message-ID: <ad46eaed-8187-400b-12fa-ba767b5300db@apache.org>
Date: Mon, 09 Nov 2026 06:10:57 +0000
From: Rahul Vats <rahulvats@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-111453: Apache Airflow: API: asset queuedEvents DELETE checks Dag edit on a ?dag_id query value but deletes rows for every readable Dag 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache Airflow 3.3.2 before 3.4.0

Description:

Apache Airflow's API endpoint for deleting an asset's queued events checked Dag edit permission against the `dag_id` query parameter, but deleted the queued events of every Dag the caller could read. An authenticated user with edit permission on one Dag and read access to others could suppress asset-triggered runs of Dags they cannot edit. This is an incomplete fix for CVE-2026-75157: users who upgraded to apache-airflow 3.3.2 for that fix are still affected and should upgrade to apache-airflow 3.4.0 or later.

Credit:

hataehoon (finder)
Jarek Potiuk (remediation developer)

References:

https://github.com/apache/airflow/pull/74839
https://www.cve.org/CVERecord?id=CVE-2026-75157
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-111453

