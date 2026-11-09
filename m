X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/09/15
Message-ID: <3a514622-99c9-b93d-ca2d-7cc8f29b5353@apache.org>
Date: Mon, 09 Nov 2026 06:10:37 +0000
From: Rahul Vats <rahulvats@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-111452: Apache Airflow: Secrets masker: camelCase key names (privateKey, connectionString, webhookUrl) not matched against the sensitive-field list 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache Airflow before 3.4.0

Description:

Apache Airflow's secrets masker matched sensitive key names only in their snake_case form, so values stored under camelCase keys such as `privateKey`, `connectionString`, `webhookUrl` or `accessKey` — for example in a Connection's extra or a Variable — were not redacted in task logs, rendered template fields or API responses. A user who can read task logs or rendered templates, but is not meant to see those credentials, could read them in cleartext. Users are advised to upgrade to apache-airflow 3.4.0 or later.

Credit:

Anass Bali / 0xbaas (finder)
Jarek Potiuk (remediation developer)

References:

https://github.com/apache/airflow/pull/74840
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-111452

