X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/12/8
Message-ID: <afd58d09-e638-3d80-b122-e3918c643c02@apache.org>
Date: Wed, 12 Aug 2026 13:48:27 +0000
From: Rahul Vats <rahulvats@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-65017: Apache Airflow: Config API: team-scoped Celery broker secret disclosed to a Viewer (multi-team masking bypass) 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Airflow (apache-airflow) 3.3.0 before 3.3.1

Description:

Apache Airflow's Config API did not mask team-scoped sensitive configuration values in multi-team deployments. When an administrator has enabled multi-team mode and exposed the Config API, an authenticated Viewer holding only configuration-read access — with no prior access to the secret — could read a team-scoped Celery broker URL, including its embedded credentials, in cleartext, while the equivalent global option was correctly masked. The secrets masker matched only base section and option names and did not normalize team-prefixed sections before the sensitivity check (CWE-200). This is a distinct masker bypass from CVE-2026-48828 and CVE-2026-48892: deployments that upgraded to apache-airflow 3.3.0 to address those issues remain affected by this team-scoped variant. Users are advised to upgrade to apache-airflow 3.3.1 or later, which normalizes team-scoped sections before masking.

Credit:

Andrew Rukin (Arenadata) (finder)
Jarek Potiuk (remediation developer)

References:

https://github.com/apache/airflow/pull/70755
https://www.cve.org/CVERecord?id=CVE-2026-48828
https://www.cve.org/CVERecord?id=CVE-2026-48892
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-65017

