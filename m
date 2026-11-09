X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/09/12
Message-ID: <472479ff-4d48-5bac-8ce2-e25d2c5ae2a6@apache.org>
Date: Mon, 09 Nov 2026 06:06:50 +0000
From: Rahul Vats <rahulvats@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-107474: Apache Airflow: Connections API: apprise connection "config" extra returned in cleartext 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Airflow before 3.4.0

Description:

The Apache Airflow connections API did not mask the apprise provider's `config` connection extra, which can embed notification-service credentials. A user with permission to read connections could retrieve it in cleartext, although Airflow 3 treats connection credentials as write-only.

Users are advised to upgrade to apache-airflow 3.4.0 or later.

Credit:

JelyFishhhhhh (finder)
Jarek Potiuk (remediation developer)

References:

https://github.com/apache/airflow/pull/73794
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-107474

