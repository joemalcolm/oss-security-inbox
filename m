X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/07/4
Message-ID: <f4ac6989-8200-3cee-606c-c535052574c4@apache.org>
Date: Tue, 07 Jul 2026 08:31:23 +0000
From: Rahul Vats <rahulvats@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-48892: Apache Airflow: Config API leaks per-key secrets backend kwargs - masker bypass on synthetic options 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Airflow (apache-airflow) before 3.3.0

Description:

The Config API in Apache Airflow surfaced per-key secrets-backend overrides (environment variables like `AIRFLOW__SECRETS__BACKEND_KWARG__SECRET_ID` and `AIRFLOW__WORKERS__SECRETS_BACKEND_KWARG__SECRET_ID`) as synthetic config options whose option names were not in `sensitive_config_values`, so the masker did not redact them. An authenticated UI/API user with Config read permission could retrieve plaintext secrets-backend credentials (Vault `role_id` / `secret_id`, etc.) from the Config API output. Affects deployments that configure secrets backends via per-key environment overrides. Users are advised to upgrade to `apache-airflow` 3.3.0 or later.

Credit:

Omkhar Arasaratnam (@omkhar) (finder)
Jarek Potiuk (remediation developer)

References:

https://github.com/apache/airflow/pull/67622
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-48892

