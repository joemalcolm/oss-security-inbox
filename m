X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/09/18
Message-ID: <fe1ff02c-c7cc-4e2b-fb52-8d2d0b601fbb@apache.org>
Date: Mon, 09 Nov 2026 06:12:16 +0000
From: Rahul Vats <rahulvats@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-111455: Apache Airflow: Connections API: async connection test authorizes create at enqueue but overwrites a later-created connection at commit 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache Airflow 3.3.0 before 3.4.0

Description:

Apache Airflow's asynchronous connection test checked permissions when the test was queued — only create permission when the connection ID did not exist yet — but, when the test completed with `commit_on_success`, wrote the tested connection under that ID. A user allowed to create but not edit connections could overwrite a connection someone else had created in the meantime. Only deployments that enable the non-default `[core] test_connection` setting are affected. Users are advised to upgrade to apache-airflow 3.4.0 or later.

Credit:

Evan Ricafort (@evanricafort) of Invalid Web Security (finder)
Jarek Potiuk (remediation developer)

References:

https://github.com/apache/airflow/pull/74837
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-111455

