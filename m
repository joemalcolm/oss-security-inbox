X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/09/5
Message-ID: <45f3b5d8-5166-d1a4-50d3-97916ee85aee@apache.org>
Date: Mon, 09 Nov 2026 05:54:42 +0000
From: Rahul Vats <rahulvats@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-68982: Apache Airflow: CeleryExecutor: forged callback workloads run on Celery workers without workload-token validation 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Airflow before 3.4.0

Description:

Apache Airflow's CeleryExecutor ran callback workloads (`ExecuteCallback`, used for deadline-alert callbacks) without validating the workload's authentication token. Anyone able to write to the Celery broker could enqueue a forged callback and execute arbitrary code on every CeleryExecutor worker, without Airflow credentials. Deployments using the CeleryExecutor are affected.

Users are advised to upgrade to apache-airflow 3.4.0 or later, in which the worker claims the callback through the Execution API, validating the token, before running it.

Credit:

Or Sahar (Reflectiz) (finder)
Sean Ghaeli (remediation developer)

References:

https://github.com/apache/airflow/pull/71192
https://www.cve.org/CVERecord?id=CVE-2020-11981
https://github.com/apache/airflow/pull/70927
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-68982

