X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/15/12
Message-ID: <b4d27648-de42-66ba-a833-e4cd36e9c789@apache.org>
Date: Tue, 15 Sep 2026 18:29:07 +0000
From: Vincent Beck <vincbeck@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-86462: Apache Airflow FAB provider: FAB Admin password PATCH does not invalidate database-backed sessions 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Airflow FAB provider (apache-airflow-providers-fab) 3.2.0 before 3.9.0

Description:

Apache Airflow FAB provider: changing a user's password through the Admin user-edit PATCH endpoint does not invalidate that user's existing database-backed sessions. An attacker who already holds a copy of the victim's session cookie keeps full access as that user after the password change, so the password reset does not evict them. Affects deployments using the FAB auth manager with database-backed sessions; an administrator (or the user themselves) performing a routine password change is the trigger, and no attacker interaction with the endpoint is needed.

This is a second, independent route to the outcome addressed by CVE-2026-82311, which corrected an identifier comparison in the session-invalidation helper. That fix does not repair this endpoint, because the PATCH path never calls the helper at all. Deployments that applied the CVE-2026-82311 fix must also upgrade for this one.

Users of apache-airflow-providers-fab are recommended to upgrade to version 3.9.0 or later, which fixes the issue.

Credit:

OpenSec Intelligence (finder)
Jarek Potiuk (remediation developer)

References:

https://github.com/apache/airflow/pull/72657
https://www.cve.org/CVERecord?id=CVE-2026-82311
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-86462

