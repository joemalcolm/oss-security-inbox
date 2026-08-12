X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/12/11
Message-ID: <1bd3834d-91da-f208-64d1-f0a57169ed32@apache.org>
Date: Wed, 12 Aug 2026 13:53:59 +0000
From: Rahul Vats <rahulvats@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-68076: Apache Airflow: Connections test API: team-scope guard bypass resolves another team's environment Connection 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Airflow (apache-airflow) before 3.3.1

Description:

Apache Airflow's environment-variable secrets backend resolved a team-scoped Connection or Variable from the wrong team's scope. The guard meant to prevent this only ran when no team scope was supplied, and its pattern could not match a team name containing an underscore, which team names are allowed to contain. When the guard did not apply, the lookup fell through to an unconditional global read that resolved the stored `AIRFLOW_CONN__<TEAM>___<ID>` variable regardless of which team asked. In multi-team mode an authenticated user of one team could therefore have `POST /api/v2/connections/test` resolve another team's Connection and authenticate outward with that team's credentials; the endpoint uses the credentials rather than returning them. Exploitation requires `[core] multi_team` enabled, `[core] test_connection` set to `Enabled` (it ships `Disabled`), team-scoped secrets provisioned as environment variables in the API-server process, and knowledge of the encoded identifier. Redirecting the test at an attacker-controlled host is separately blocked. Users are advised to upgrade to apache-airflow 3.3.1 or later.

Credit:

Andrew Rukin (Arenadata) (finder)
Jarek Potiuk (remediation developer)

References:

https://github.com/apache/airflow/pull/70736
https://github.com/apache/airflow/pull/70902
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-68076

