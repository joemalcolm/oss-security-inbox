X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/09/13
Message-ID: <ebbb03b9-91e4-78f6-492b-b74986516762@apache.org>
Date: Mon, 09 Nov 2026 06:08:27 +0000
From: Rahul Vats <rahulvats@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-111395: Apache Airflow: Reserved serialization keys in Dag run conf crash the scheduler or are rebuilt as objects in the Triggerer via deadline callbacks 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Airflow 3.2.0 before 3.4.0

Description:

Apache Airflow did not reject reserved serialization keys inside a Dag run's `conf`. A user allowed to trigger a Dag that uses a deadline alert with an asynchronous callback could pass a `conf` that, once the deadline was missed, either crashed the scheduler repeatedly or was rebuilt into objects inside the Triggerer. Users are advised to upgrade to apache-airflow 3.4.0 or later.

Credit:

Jarek Potiuk (finder)
Jarek Potiuk (remediation developer)

References:

https://github.com/apache/airflow/pull/74834
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-111395

