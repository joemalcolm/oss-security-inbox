X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/12/3
Message-ID: <65438175-14c5-8270-6d79-9764757ceb39@apache.org>
Date: Wed, 12 Aug 2026 08:26:47 +0000
From: Jarek Potiuk <potiuk@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-68868: Apache Airflow Google provider: google Secret Manager backend: team scope is never applied, exposing every team's Connections and Variables 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Airflow Google provider (apache-airflow-providers-google) before 22.3.0

Description:

The Google Cloud Secret Manager secrets backend in Apache Airflow's Google provider never applied the team scope when resolving Connections and Variables: the caller's `team_name` was accepted by the backend but dropped at the internal call boundary, so every lookup resolved against the team-agnostic secret name. In a deployment running multi-team mode with this backend, a task or Dag belonging to one team resolved another team's Connection or Variable, obtaining its credentials in full. No unusual configuration is required beyond enabling multi-team mode and using this backend. Users are advised to upgrade to apache-airflow-providers-google 22.3.0 or later, which builds and applies the team-scoped secret name.

Credit:

Apache Airflow security team (finder)
Jarek Potiuk (remediation developer)

References:

https://github.com/apache/airflow/pull/70869
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-68868

