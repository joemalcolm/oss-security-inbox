X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/04/24/4
Message-ID: <ff08e4eb-e2c3-6f56-6156-09567fbf869c@apache.org>
Date: Fri, 24 Apr 2026 12:24:03 +0000
From: Rahul Vats <rahulvats@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-40690: Apache Airflow: Assets graph view bypasses DAG level access control displaying unrelated topologies and all DAGs names to unauthorized users 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache Airflow (apache-airflow) before 3.2.1

Description:

The asset dependency graph did not restrict nodes by the viewer's DAG read permissions: a user with read access to at least one DAG could browse the asset graph for any other asset in the deployment and learn the existence and names of DAGs and assets outside their authorized scope.

Users are recommended to upgrade to version 3.2.1, which fixes this issue.

Credit:

Saurabh (finder)
Jarek Potiuk (remediation developer)

References:

https://github.com/apache/airflow/pull/65273
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-40690

