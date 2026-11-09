X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/09/17
Message-ID: <97507d67-aabe-dc16-ce50-39297381dc6e@apache.org>
Date: Mon, 09 Nov 2026 06:11:29 +0000
From: Rahul Vats <rahulvats@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-111454: Apache Airflow: API: asset endpoints return scheduled/producing/consuming Dag IDs the caller cannot read 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache Airflow before 3.4.0

Description:

Apache Airflow's asset API endpoints returned the IDs of Dags that are scheduled on, produce, or consume an asset without checking whether the caller may read those Dags. An authenticated user with asset read access could learn the IDs of Dags they are not authorized to see. Users are advised to upgrade to apache-airflow 3.4.0 or later.

Credit:

Zhixi "Jace" Sun, independent security researcher (finder)
Jarek Potiuk (remediation developer)

References:

https://github.com/apache/airflow/pull/74836
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-111454

