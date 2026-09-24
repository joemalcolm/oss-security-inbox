X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/24/7
Message-ID: <d3c30cf6-d703-95b2-dec6-a1e07d0b184d@apache.org>
Date: Thu, 24 Sep 2026 20:58:58 +0000
From: Jarek Potiuk <potiuk@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-97636: Apache Airflow HashiCorp provider: HashiCorp Vault secrets backend: team-scope guard bypass via user-controlled key 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Airflow HashiCorp provider 4.6.0 before 4.8.0

Description:

Apache Airflow HashiCorp provider: the HashiCorp Vault secrets backend's team-scope guard can be bypassed with a user-controlled key. In a multi-team deployment, a Dag author scoped to one team can supply a Variable key containing a path separator that causes the backend to resolve a secret belonging to a different team, because after the team-scoped lookup misses the backend falls back to a team-agnostic path concatenated from the unvalidated key. The Execution API Variables route accepts a path-shaped key, so this is reachable from ordinary Dag code.

Affects multi-team deployments using the HashiCorp Vault secrets backend. Single-team deployments are not affected, as there is no cross-team boundary to cross. This is the same class as CVE-2026-86465, CVE-2026-68870, CVE-2026-68871 and CVE-2026-68872 in the Akeyless, Azure Key Vault, Yandex Lockbox and Amazon secrets backends.

Users of apache-airflow-providers-hashicorp are recommended to upgrade to version 4.8.0 or later, which fixes the issue.

Credit:

ReturnZero (finder)
Bas Harenslak (remediation developer)

References:

https://github.com/apache/airflow/pull/70006
https://www.cve.org/CVERecord?id=CVE-2026-68870
https://www.cve.org/CVERecord?id=CVE-2026-68871
https://www.cve.org/CVERecord?id=CVE-2026-68872
https://www.cve.org/CVERecord?id=CVE-2026-86465
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-97636

