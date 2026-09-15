X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/15/14
Message-ID: <1694828e-a226-4419-a9bd-7c21e8b126e3@apache.org>
Date: Tue, 15 Sep 2026 18:31:06 +0000
From: Vincent Beck <vincbeck@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-86465: Apache Airflow Akeyless provider: Akeyless secrets backend: team-scope guard bypass via user-controlled key 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Airflow Akeyless provider (apache-airflow-providers-akeyless) before 0.3.1

Description:

Apache Airflow Akeyless provider: the Akeyless secrets backend's team-scope guard can be bypassed with a user-controlled key. In a multi-team deployment, a Dag author scoped to one team can supply a Variable key containing a path separator that causes the backend to resolve a secret belonging to a different team, because the lookup path is concatenated from an unvalidated key after the team-scoped lookup misses. The Execution API Variables route accepts a path-shaped key, so this is reachable from ordinary Dag code.

Affects multi-team deployments using the Akeyless secrets backend. Single-team deployments are not affected, as there is no cross-team boundary to cross. This is the same class as CVE-2026-68870, CVE-2026-68871 and CVE-2026-68872 in the Azure Key Vault, Yandex Lockbox and Amazon secrets backends.

Users of apache-airflow-providers-akeyless are recommended to upgrade to version 0.3.1 or later, which fixes the issue.

Credit:

ReturnZero (finder)
Jarek Potiuk (remediation developer)

References:

https://github.com/apache/airflow/pull/72646
https://www.cve.org/CVERecord?id=CVE-2026-68870
https://www.cve.org/CVERecord?id=CVE-2026-68871
https://www.cve.org/CVERecord?id=CVE-2026-68872
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-86465

