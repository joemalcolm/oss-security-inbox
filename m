X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/15/13
Message-ID: <c5fc73b4-82b3-fae2-c86f-11dacd85f650@apache.org>
Date: Tue, 15 Sep 2026 18:23:24 +0000
From: Vincent Beck <vincbeck@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-86466: Apache Airflow FAB provider: FAB Authentik provider: id_token issuer/audience not validated 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Airflow FAB provider (apache-airflow-providers-fab) before 3.9.0

Description:

Apache Airflow FAB provider: the Authentik OAuth path in the FAB auth manager does not validate the issuer or audience claims of the id_token it accepts. An attacker holding a token that the same Authentik identity provider minted for a different client application can present it to Airflow and be authenticated as the user it names, because the audience claim is never checked. Affects deployments using the FAB auth manager with Authentik OAuth where the same Authentik instance also serves other applications; the attacker needs a valid token for any of those other applications, not for Airflow.

CVE-2026-75156 corrected the same missing validation on the Azure AD path in this file; the Authentik path was left unchanged and is fixed here. Deployments that applied the CVE-2026-75156 fix and use Authentik must also upgrade for this one.

Users of apache-airflow-providers-fab are recommended to upgrade to version 3.9.0 or later, which fixes the issue.

Credit:

Ritik Chaddha & NEO by ProjectDiscovery (finder)
Jarek Potiuk (remediation developer)

References:

https://github.com/apache/airflow/pull/72645
https://www.cve.org/CVERecord?id=CVE-2026-75156
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-86466

