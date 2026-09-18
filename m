X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/18/1
Message-ID: <0aece58f-4c1a-628e-d745-d7c2e0355240@apache.org>
Date: Fri, 18 Sep 2026 04:45:03 +0000
From: Rahul Vats <rahulvats@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-75157: Apache Airflow: Asset queued-events DELETE endpoints gated on Dag READ instead of Dag EDIT (asset-triggered scheduling suppression) 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache Airflow before 3.3.2

Description:

Apache Airflow's asset queued-events DELETE endpoints checked the caller's Dag-axis permission with `READ` instead of `EDIT`. Any authenticated user who could read a Dag could therefore delete that Dag's queued asset events, silently suppressing asset-triggered scheduling for it — a state-changing action gated on a read-only permission. Deployments are affected whenever asset-triggered scheduling is in use and Dag read access is granted more widely than Dag edit access, which is the normal RBAC arrangement; no special configuration is required. Upgrade to apache-airflow 3.3.2 or later.

Credit:

n0mi1k (finder)
Jarek Potiuk (remediation developer)

References:

https://github.com/apache/airflow/pull/71736
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-75157

