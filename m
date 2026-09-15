X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/15/8
Message-ID: <f60350c5-4082-e0f8-a9e5-02181c3f05a7@apache.org>
Date: Tue, 15 Sep 2026 18:26:40 +0000
From: Vincent Beck <vincbeck@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-76186: Apache Airflow Keycloak provider: Keycloak token cookies not bound to Airflow session identity 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Airflow Keycloak provider (apache-airflow-providers-keycloak) before 0.10.0

Description:

Apache Airflow Keycloak provider: from Airflow 3.3 the Keycloak auth manager takes a user's identity from the signed Airflow session token but takes the Keycloak access and refresh tokens used for every authorization decision from separate, unauthenticated cookies, and never checks that the two describe the same subject. A user who holds any valid Airflow login of their own, together with another subject's Keycloak access or refresh token obtained out of band, can pair the two: Airflow then authorizes requests with the foreign token's privileges while the session identity, audit log and cache keys continue to name the attacker's own account. The refresh path re-issues an Airflow session token for the original identity carrying the foreign tokens, so the mismatched pairing survives across sessions.

Affects deployments running Airflow 3.3 or later with the Keycloak auth manager. Earlier versions carried the Keycloak tokens inside the signed session token, so the binding existed and was lost when they moved into separate cookies.

Users of apache-airflow-providers-keycloak are recommended to upgrade to version 0.10.0 or later, which binds the cookie-supplied tokens to the session identity.

Credit:

Claude Security Scans (tool)
Jarek Potiuk (remediation developer)

References:

https://github.com/apache/airflow/pull/72207
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-76186

