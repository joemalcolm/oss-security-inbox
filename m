X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/21/4
Message-ID: <585a9838-b86a-94c1-cae7-9a28a36cf271@apache.org>
Date: Mon, 21 Sep 2026 13:22:25 +0000
From: Rahul Vats <rahulvats@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-82355: Apache Airflow: Session cookie silently overrides explicit Authorization bearer header, enabling session fixation 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache Airflow 3.3.0 before 3.3.2

Description:

When a request to the Airflow core API carries both a session cookie and an explicit `Authorization: Bearer` token, Airflow resolves the caller from the cookie and ignores the bearer token, inverting the intended precedence of bearer over cookie. The request then executes -- and is recorded in the audit log -- as the cookie's principal rather than the identity the client explicitly presented.

Only Apache Airflow 3.3.0 and 3.3.1 are affected. Earlier releases do not contain the code path that caches the cookie-derived user, and are not vulnerable.

Exploiting this requires an attacker to first place a valid session cookie of their own into the victim's browser or client: for example by cookie tossing from a sibling subdomain, through cross-site scripting in a separate application sharing a parent domain, or via a shared workstation. Deployments that host the Airflow UI on a domain shared with other applications are therefore the most exposed; a deployment on a dedicated domain with no co-hosted applications is not reachable this way. The consequence is principal confusion and misattributed audit records rather than a direct privilege escalation.

Users of 3.3.0 or 3.3.1 should upgrade to Apache Airflow 3.3.2 or later, which resolves the caller from the explicitly supplied credential whenever one is present.

Credit:

Claude Security Scans (tool)
Jarek Potiuk (remediation developer)

References:

https://github.com/apache/airflow/pull/72225
https://github.com/apache/airflow/pull/72723
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-82355

