X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/29/11
Message-ID: <d6bfc3f1-60d4-1470-bd0d-23143043e3a9@apache.org>
Date: Tue, 29 Sep 2026 08:48:46 +0000
From: Shahar Epstein <shahar@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-81862: Apache Airflow Teradata provider: Teradata transfer operators embed cloud storage credentials in SQL text, task logs and Teradata query logs 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Airflow Teradata provider before 3.7.0

Description:

Apache Airflow's Teradata provider embedded cloud storage credentials directly into SQL statements. `S3ToTeradataOperator` and `AzureBlobStorageToTeradataOperator` interpolate the source bucket's credentials as plain string literals into the `CREATE MULTISET TABLE ... LOCATION` statement whenever the bucket is private and no `teradata_authorization_name` is configured — which is the default credential path for both operators. The statement is then logged and executed, so the credentials reach two places outside the operator's control.

The two operators expose different credentials through different channels, and deployments should check both. `S3ToTeradataOperator` takes its values from `s3_hook.get_credentials()`, which under an instance profile or IRSA returns runtime AWS credentials that were never registered with Airflow's secrets masker — and the STS session token is runtime-generated and therefore unmasked even when an AWS connection is configured. Those credentials appear **in the Airflow task log**, readable by any user with log-view permission on the Dag. `AzureBlobStorageToTeradataOperator` takes its storage account key from the connection, so the masker usually redacts the task-log copy; its exposure is the Teradata side. **Both** operators write the credentials into Teradata's DBQL query logs and live monitoring views, where Airflow's masking never applies and the values persist for that system's log retention period.

Affects deployments using either operator against a private bucket or container without a Teradata `AUTHORIZATION` object. Users are advised to upgrade to `apache-airflow-providers-teradata` `3.7.0` or later, which keeps the credential-bearing statement out of the Airflow task log. Upgrading does not remove the credentials from Teradata's query logs and monitoring views, which Airflow cannot redact: users should configure `teradata_authorization_name` with a Teradata `AUTHORIZATION` object so that credentials are never inlined, and should rotate any credentials previously used through the inline path.

Credit:

Claude Security Scans (tool)
Jarek Potiuk (remediation developer)

References:

https://github.com/apache/airflow/pull/72176
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-81862

