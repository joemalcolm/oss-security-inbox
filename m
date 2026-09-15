X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/15/9
Message-ID: <93099201-4f6a-23b3-3b25-9ed031094b04@apache.org>
Date: Tue, 15 Sep 2026 18:25:10 +0000
From: Vincent Beck <vincbeck@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-76187: Apache Airflow Keycloak provider: Any realm client's credentials mint an Airflow session JWT 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Airflow Keycloak provider (apache-airflow-providers-keycloak) before 0.10.0

Description:

Apache Airflow Keycloak provider: the unauthenticated token endpoint accepts a client-credentials grant for any confidential client registered in the Keycloak realm, not only the client configured for Airflow. No allowlist restricts which client ids may authenticate, so the credentials of an unrelated application that happens to share the realm are valid Airflow login credentials, and Airflow mints a signed session token for that application's service account. The endpoint also answers unauthenticated credential guesses against Keycloak under Airflow's identity.

Affects deployments using the Keycloak auth manager whose realm is shared with other confidential clients. The attacker needs valid credentials for any one of those clients, not for Airflow. Resource authorization is still evaluated per subject, so the access gained is whatever that service account holds, plus any endpoint gated only on being authenticated.

Users of apache-airflow-providers-keycloak are recommended to upgrade to version 0.10.0 or later, which accepts only the configured client on that grant.

Credit:

Claude Security Scans (tool)
Jarek Potiuk (remediation developer)

References:

https://github.com/apache/airflow/pull/72205
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-76187

