X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/19/3
Message-ID: <36d8085b-a59f-6295-f6a9-d44c2f948b38@apache.org>
Date: Mon, 19 Oct 2026 15:47:28 +0000
From: Jarek Potiuk <potiuk@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-86467: Apache Airflow Amazon provider: AWS auth manager: SAML login CSRF logs users into the attacker's account 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Airflow Amazon provider before 9.38.0

Description:

Apache Airflow Amazon provider: the AWS auth manager's SAML login flow does not bind the authentication response to the browser that began it. The login handler discards the AuthnRequest ID and the callback validates the assertion without requiring a matching InResponseTo, so an unauthenticated attacker who can cause a victim to load a page can complete a SAML login in the victim's browser using the attacker's own assertion, silently logging the victim into the attacker's Airflow account. Subsequent work the victim performs lands in a session the attacker controls.

Affects deployments using the AWS auth manager with SAML authentication. The victim needs only to visit an attacker-controlled page; no Airflow account or credential is required of the attacker. This is the same login-CSRF class fixed in the Keycloak auth manager as CVE-2026-40948.

Users of apache-airflow-providers-amazon are recommended to upgrade to version 9.38.0, which fixes the issue.

Credit:

Andrew Rukin (Arenadata) (finder)
Jarek Potiuk (remediation developer)

References:

https://github.com/apache/airflow/pull/73698
https://www.cve.org/CVERecord?id=CVE-2026-40948
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-86467

