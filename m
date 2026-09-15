X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/15/11
Message-ID: <e400d4b0-508a-2c75-b9f0-172208d29ddc@apache.org>
Date: Tue, 15 Sep 2026 18:30:28 +0000
From: Vincent Beck <vincbeck@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-82311: Apache Airflow FAB provider: FAB password reset never invalidates sessions: string/int _user_id comparison is always false 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Airflow FAB provider (apache-airflow-providers-fab) 2.4.2 before 3.9.0

Description:

Apache Airflow FAB provider: resetting a user's password does not delete that user's existing database-backed sessions, despite documented behaviour that it does. The cleanup compares the string identifier Flask-Login stores in the session against the user's integer database identifier, so the comparison never matches and no session is removed. An attacker who already holds a copy of the victim's session cookie keeps access as that user after the password change, so the reset does not evict them.

Affects deployments using the FAB auth manager with `[fab] session_backend=database`. The trigger is an administrator (or the user) running the supported password-reset command as a containment action after a session cookie has been compromised; the secure-cookie backend is out of scope, as it documents that it cannot centrally delete sessions.

apache-airflow-providers-fab 3.9.0 also fixes CVE-2026-86462, a second, independent route to the same outcome via the Admin user-edit endpoint; a single upgrade closes both.

Users of apache-airflow-providers-fab are recommended to upgrade to version 3.9.0 or later, which compares the identifiers consistently.

Credit:

Mayank Jangid (OpenSec) (finder)
Jarek Potiuk (remediation developer)

References:

https://github.com/apache/airflow/pull/72198
https://www.cve.org/CVERecord?id=CVE-2026-86462
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-82311

