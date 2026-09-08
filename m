X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/08/13
Message-ID: <311fe3a5-ef71-32ed-a994-3963bd69552e@apache.org>
Date: Tue, 08 Sep 2026 16:32:20 +0000
From: Niko Oliveira <onikolas@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-75156: Apache Airflow FAB provider: FAB Azure AD OAuth: id_token issuer/audience not validated — cross-tenant authentication bypass 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Airflow FAB provider (apache-airflow-providers-fab) 3.7.3 before 3.8.1

Description:

Apache Airflow FAB provider versions 3.7.3 through 3.8.0 do not validate the issuer or audience of Azure AD `id_token`s during OAuth login. Deployments are affected only when the FAB auth manager is configured with Azure AD as an OAuth provider. Because the signing keys are fetched from Microsoft's **multi-tenant** JWKS endpoint, an `id_token` minted in *any* Azure tenant — including one the attacker creates — passes signature verification, and the username and role assignments are then read from that attacker-controlled token. Anyone able to register an Azure tenant can therefore authenticate to the Airflow UI with no prior access to the deployment.

The fix for **CVE-2026-59243** was incomplete, and this advisory closes the remaining gap: that fix made the provider verify the `id_token` signature, but did not add issuer or audience checks. Operators who already applied the CVE-2026-59243 fix are **still affected and must upgrade again** — 3.7.3 is the release that shipped that fix, so every version containing it falls inside this affected range. Upgrade to apache-airflow-providers-fab `3.8.1` or later.

Credit:

Roberto Nunes (finder)
NEO AI Engineer (@neo-ai-engineer, ProjectDiscovery) (tool)
Jarek Potiuk (remediation developer)

References:

https://github.com/apache/airflow/pull/71735
https://www.cve.org/CVERecord?id=CVE-2026-59243
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-75156

