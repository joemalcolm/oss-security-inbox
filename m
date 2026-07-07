X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/07/2
Message-ID: <85ce3262-1dc8-2cb7-7497-8ae99eda0b89@apache.org>
Date: Tue, 07 Jul 2026 08:26:54 +0000
From: Rahul Vats <rahulvats@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-48828: Apache Airflow: Bulk JSON Variables bypass should_hide_value_for_key - redact() called without the key 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Airflow (apache-airflow) before 3.3.0

Description:

The Bulk Variables API in Apache Airflow called the redactor without passing the variable's key, so the key-based `should_hide_value_for_key` check (which triggers on secret-suffixed key names like `*_password` / `*_token` / `*_secret`) could not fire for JSON-decodable variable values. An authenticated UI/API user with bulk Variable read permission could retrieve plaintext values from JSON variables whose key would otherwise trigger redaction. Affects deployments that store sensitive values in JSON-typed Airflow Variables under secret-suffixed key names. Users are advised to upgrade to `apache-airflow` 3.3.0 or later (the fix landed on `main` after 3.2.2; no 3.2.x backport).

Credit:

Omkhar Arasaratnam (@omkhar) (finder)
Shubham Raj (@shubhamraj-git) (remediation developer)

References:

https://github.com/apache/airflow/pull/67495
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-48828

