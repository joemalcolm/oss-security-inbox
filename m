X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/09/20
Message-ID: <6e197391-a0ee-ad00-a7c3-f9cd33d175c2@apache.org>
Date: Mon, 09 Nov 2026 06:04:38 +0000
From: Rahul Vats <rahulvats@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-113508: Apache Airflow: Logout token revocation fails open; errors silently swallowed 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache Airflow before 3.4.0

Description:

Apache Airflow's logout endpoint attempted to revoke the presented token on the server, but any failure during revocation was silently ignored and logout still reported success. When the auth manager redirects logout to an external logout URL (for example the FAB or Keycloak auth managers), server-side revocation is the only thing that invalidates the Airflow token; it failed on database errors and, reliably, for tokens from an external issuer accepted via `[api_auth] trusted_jwks_url` whose token identifier is longer than 32 characters. Anyone holding a copy of a user's token from before logout could keep using it against the Airflow API until it expired. Users are advised to upgrade to apache-airflow 3.4.0 or later.

Credit:

Claude Security Scans (tool)
Pierre Jeambrun (remediation developer)
Jarek Potiuk (remediation developer)

References:

https://github.com/apache/airflow/pull/73562
https://github.com/apache/airflow/pull/73788
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-113508

