X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/10/6
Message-ID: <4dfd6b5e-97c0-687a-7018-9861c107e319@apache.org>
Date: Mon, 10 Aug 2026 16:01:09 +0000
From: Jarek Potiuk <potiuk@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-68872: Apache Airflow Amazon provider: amazon SSM / Secrets Manager backends: team-scope guard bypass resolves another team's Connection or Variable 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Airflow Amazon provider (apache-airflow-providers-amazon) before 9.34.0

Description:

The AWS Systems Manager Parameter Store and Secrets Manager backends in Apache Airflow's Amazon provider resolved a team-scoped Connection or Variable id through the team-agnostic lookup when the team-scoped lookup missed. In a deployment running multi-team mode with either backend, a caller in one team could resolve a secret belonging to another team by supplying an id that spells out that team's namespace, obtaining its credentials in full. No unusual configuration is required beyond enabling multi-team mode and using one of these backends. Users are advised to upgrade to apache-airflow-providers-amazon 9.34.0 or later, which refuses the team-agnostic fall-through for an id that could name a team namespace.

Credit:

Apache Airflow security team (finder)
Jarek Potiuk (remediation developer)

References:

https://github.com/apache/airflow/pull/70878
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-68872

