X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/10/4
Message-ID: <a5d2a115-cdf4-9165-add9-e77583c4f279@apache.org>
Date: Mon, 10 Aug 2026 16:03:48 +0000
From: Jarek Potiuk <potiuk@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-68870: Apache Airflow Microsoft Azure provider: microsoft.azure Key Vault backend: team-scope guard bypass resolves another team's Connection or Variable 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Airflow Microsoft Azure provider (apache-airflow-providers-microsoft-azure) before 14.1.0

Description:

The Azure Key Vault secrets backend in Apache Airflow's Microsoft Azure provider resolved a team-scoped Connection or Variable id through the team-agnostic lookup when the team-scoped lookup missed. In a deployment running multi-team mode with this backend, a caller in one team could resolve a secret belonging to another team by supplying an id that spells out that team's namespace, obtaining its credentials in full. No unusual configuration is required beyond enabling multi-team mode and using this backend. Users are advised to upgrade to apache-airflow-providers-microsoft-azure 14.1.0 or later, which refuses the team-agnostic fall-through for an id that could name a team namespace.

Credit:

Apache Airflow security team (finder)
Jarek Potiuk (remediation developer)

References:

https://github.com/apache/airflow/pull/70876
https://github.com/apache/airflow/pull/70899
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-68870

