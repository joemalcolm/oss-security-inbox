X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/15/12
Message-ID: <71a939d7-4faf-9471-f05e-a40def5e650e@apache.org>
Date: Thu, 15 Oct 2026 21:08:30 +0000
From: Jarek Potiuk <potiuk@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-96806: Apache Airflow Keycloak provider: Keycloak auth manager: logout does not invalidate the session — JWTMiddleware mints an unrevoked replacement token 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Airflow Keycloak provider before 0.11.1

Description:

The Apache Airflow Keycloak auth manager did not end the session on logout: the logout route revoked the presented token, but `KeycloakJWTMiddleware` then issued a new, unrevoked token on the same response, so the user stayed logged in. Deployments using the Keycloak auth manager are affected: after a user logs out, anyone with later access to the same browser (for example on a shared workstation) can continue to act as that user.

Users of apache-airflow-providers-keycloak are recommended to upgrade to apache-airflow-providers-keycloak 0.11.1 or later.

Credit:

JelyFishhhhhh (finder)
Jarek Potiuk (remediation developer)

References:

https://github.com/apache/airflow/pull/73695
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-96806

