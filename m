X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/09/4
Message-ID: <70552d1d-808b-7489-86e9-a69e10fcf0fc@apache.org>
Date: Mon, 09 Nov 2026 05:54:27 +0000
From: Rahul Vats <rahulvats@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-50204: Apache Airflow: Audit-log secrets masker redacts by key name only, persisting connection and Variable secrets in cleartext 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Airflow before 3.4.0

Description:

Apache Airflow's audit log stored Connection and Variable secret values in cleartext in the `Log.extra` column because the secrets masker matched only on configured sensitive key names. An authenticated low-privilege user with read access to the event-log / audit API — with no prior access to the affected connection or variable — could read those rows and recover the credentials verbatim. Users should upgrade to apache-airflow 3.4.0 or later, which masks these values and restricts the affected audit rows to authorized users.

Credit:

Eunho Kim (finder)
Jarek Potiuk (remediation developer)

References:

https://github.com/apache/airflow/pull/68049
https://github.com/apache/airflow/pull/70759
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-50204

