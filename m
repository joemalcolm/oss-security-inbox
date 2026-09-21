X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/21/5
Message-ID: <ae4a55d7-dab0-2725-6738-4b6cf145009a@apache.org>
Date: Mon, 21 Sep 2026 13:23:02 +0000
From: Rahul Vats <rahulvats@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-86473: Apache Airflow: Logout ignores a presented Authorization bearer token, leaving it revocable only by expiry 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache Airflow 3.0.0 before 3.3.2

Description:

Apache Airflow: the Core API logout endpoint revokes only a session token presented as the _token cookie. When a client logs out presenting its credential as an Authorization bearer header instead, the endpoint returns its normal logout response but revokes nothing, so the token remains valid until it expires. An attacker who already holds a copy of that token keeps the victim's access after the victim has logged out and believes the session ended; the default token lifetime is 24 hours and is configurable.

Affects API clients that authenticate with a bearer token rather than the browser session cookie. The attacker must already possess a copy of a valid token; obtaining one is outside the scope of this issue, and no privileges beyond the victim's own are gained.

Users of apache-airflow are recommended to upgrade to apache-airflow version 3.3.2 or later, which fixes the issue.

Credit:

OpenSec Intelligence (finder)
Jarek Potiuk (remediation developer)

References:

https://github.com/apache/airflow/pull/72649
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-86473

