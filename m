X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/28/10
Message-ID: <c70732ce-2ebb-387b-40b2-2ac5d3c0b5c8@apache.org>
Date: Tue, 28 Jul 2026 10:24:07 +0000
From: Shahar Epstein <shahar@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-59243: Apache Airflow FAB provider: FAB auth manager: JWT signature verification disabled by default for Azure AD OAuth (`verify_signature` defaults to `False`) 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Airflow FAB provider (apache-airflow-providers-fab) before 3.7.3

Description:

The FAB auth manager's Azure AD OAuth login defaulted `verify_signature=False` when decoding the ID token, so an attacker able to present a forged or unsigned (`alg:none`) ID token to the OAuth callback could bypass authentication and log in as an arbitrary user, including one holding the Admin role (CWE-347). Deployments running the FAB auth manager with the Azure AD OAuth login path under its default configuration are affected; the Authentik path already defaulted to `True`. This issue affects `apache-airflow-providers-fab` before 3.7.3. Users are advised to upgrade to `apache-airflow-providers-fab` 3.7.3, which defaults `verify_signature=True`.

Credit:

MalHyuk (finder)
Jarek Potiuk (remediation developer)

References:

https://github.com/apache/airflow/pull/69374
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-59243

