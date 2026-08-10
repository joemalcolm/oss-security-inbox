X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/10/5
Message-ID: <e1a30d3e-b20c-def2-eaf3-bd91c4495405@apache.org>
Date: Mon, 10 Aug 2026 16:01:36 +0000
From: Jarek Potiuk <potiuk@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-68871: Apache Airflow Yandex provider: yandex Lockbox backend: team-scope guard bypass resolves another team's Connection or Variable 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Airflow Yandex provider (apache-airflow-providers-yandex) before 4.5.1

Description:

The Yandex Lockbox secrets backend in Apache Airflow's Yandex provider resolved a team-scoped Connection or Variable id through the team-agnostic lookup when the team-scoped lookup missed. In a deployment running multi-team mode with this backend, a caller in one team could resolve a secret belonging to another team by supplying an id that spells out that team's namespace, obtaining its credentials in full. No unusual configuration is required beyond enabling multi-team mode and using this backend. Users are advised to upgrade to apache-airflow-providers-yandex 4.5.1 or later, which refuses the team-agnostic fall-through for an id that could name a team namespace.

Credit:

Apache Airflow security team (finder)
Jarek Potiuk (remediation developer)

References:

https://github.com/apache/airflow/pull/70877
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-68871

