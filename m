X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/17/30
Message-ID: <bde2660b-8569-4b82-893e-cebd27e42540@apache.org>
Date: Tue, 17 Nov 2026 21:41:08 +0000
From: Niko Oliveira <onikolas@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-129509: Apache Airflow Microsoft Azure provider: S3ToAzureBlobStorageOperator disables S3 TLS verification by default 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache Airflow Microsoft Azure provider 10.2.0 before 15.3.1

Description:

In the Apache Airflow Microsoft Azure provider 10.2.0 through 15.3.0, `S3ToAzureBlobStorageOperator` turned off TLS certificate verification for its connection to Amazon S3 by default (`s3_verify=False`), whatever the AWS connection's own verification settings were. An attacker positioned on the network between an Airflow worker and S3 could intercept that traffic, read the signed requests and alter the listed object keys and the copied file contents. Deployments are affected when a Dag uses `S3ToAzureBlobStorageOperator` without setting `s3_verify`. Users are advised to upgrade to apache-airflow-providers-microsoft-azure 15.3.1 or later, which uses the AWS connection's verification settings by default.

Credit:

Claude Security Scans (tool)
Jarek Potiuk (remediation developer)

References:

https://github.com/apache/airflow/pull/76222
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-129509

