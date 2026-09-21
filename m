X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/21/3
Message-ID: <3f9a1e6e-0f2b-7520-36a3-d7abafd93e8e@apache.org>
Date: Mon, 21 Sep 2026 13:24:09 +0000
From: Rahul Vats <rahulvats@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-75158: Apache Airflow: Assets events API returns asset events for every Dag with no per-Dag authorization filter 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Airflow before 3.3.2

Description:

Apache Airflow's `/assets/events` API returned asset events for every Dag in the deployment, with no filter restricting them to the Dags the caller is authorized to read. Any authenticated user holding asset-read access could therefore enumerate asset events — including the source Dag ID, task ID, run ID and event timestamps — for Dags they have no permission to see. Because the filter was also absent from the count query, `total_entries` and pagination disclosed the existence of hidden Dags even without inspecting individual rows. Deployments are affected whenever per-Dag access control is used to separate teams or tenants; no special configuration is required. Upgrade to apache-airflow 3.3.2 or later.

Credit:

n0mi1k (finder)
Jarek Potiuk (remediation developer)

References:

https://github.com/apache/airflow/pull/71741
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-75158

