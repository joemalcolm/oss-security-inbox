X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/12/15
Message-ID: <3f858713-20d5-096e-9a43-c78b9d07ee08@apache.org>
Date: Wed, 12 Aug 2026 13:53:06 +0000
From: Rahul Vats <rahulvats@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-68971: Apache Airflow: Cross-team authorization bypass in the asset materialization and dag-run result endpoints 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Airflow (apache-airflow) before 3.3.1

Description:

Apache Airflow's asset materialization endpoint (`POST /api/v2/assets/{asset_id}/materialize`) and the XCom result check on `wait_dag_run_until_finished` authorized the target Dag without its team, unlike every other authorization site. A team-aware auth manager distinguishes a team-scoped Dag from a global one by that field -- the Keycloak auth manager, for example, checks the `DAG` resource instead of `DAG:<team>` -- so the team-scoped permission that should gate the request was never consulted. In a deployment running multi-team mode with a team-aware auth manager, an authenticated user in one team could trigger Dag runs belonging to another team, supplying their own `dag_run_id` and `conf`, and could read another team's XCom values. Deployments using the FAB auth manager are unaffected, as it has no multi-team support. Users are advised to upgrade to apache-airflow 3.3.1 or later, which resolves the Dag's team at both sites.

Credit:

@haoxucu (finder)
Jarek Potiuk (remediation developer)

References:

https://github.com/apache/airflow/pull/70893
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-68971

