X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/15/10
Message-ID: <53e7ccbd-73bd-5470-bcd8-58189725ae3b@apache.org>
Date: Tue, 15 Sep 2026 18:27:24 +0000
From: Vincent Beck <vincbeck@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-82310: Apache Airflow FAB provider: FAB auth manager: deactivated users retain and renew Core API JWT access 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Airflow FAB provider (apache-airflow-providers-fab) 2.0.0 before 3.9.0

Description:

Apache Airflow FAB provider: deactivating a user account does not stop tokens issued to that account before deactivation. Password authentication correctly rejects the disabled account, but the Core API continues to accept an existing, unexpired token naming it, and lets that token mint a replacement — so the account keeps its role-scoped access indefinitely after an administrator has disabled it. The user replays their own legitimate credential; no signature forgery or privilege escalation is involved, and the access stays within the roles the account already held.

Affects deployments using Airflow 3 with the FAB auth manager and Core API token authentication, where an administrator deactivates an account whose row remains in the database and whose previously issued token has not expired. The trigger is administrative deactivation as a containment action, which silently fails to contain.

Users of apache-airflow-providers-fab are recommended to upgrade to version 3.9.0 or later, which rejects tokens naming a deactivated account.

Credit:

Mayank Jangid (OpenSec) (finder)
Jarek Potiuk (remediation developer)

References:

https://github.com/apache/airflow/pull/72199
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-82310

