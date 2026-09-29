X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/29/13
Message-ID: <60d0a35b-4c29-2048-5cfc-c0cabfc05469@apache.org>
Date: Tue, 29 Sep 2026 08:49:33 +0000
From: Shahar Epstein <shahar@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-81914: Apache Airflow Google provider: Google Drive query injection via unescaped file and folder names 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache Airflow Google provider before 22.6.0

Description:

Apache Airflow's Google provider built Google Drive search expressions by interpolating file and folder names directly into single-quoted string literals, without escaping the quote character that delimits them. A name containing an apostrophe therefore terminated the literal early and appended clauses of the attacker's choosing to the query.

The names are frequently not written by the Dag author. In a wildcard `gcs_to_gdrive` transfer they come from the source bucket listing, so anyone able to create objects in that bucket controls them — typically an external data producer or an ingest-only service account, a different trust principal from the Dag author. An injected clause can broaden the match and so steer which file or folder the hook resolves: an upload can be directed into a folder the attacker named, and, because downloads select the most recently modified match, a download can return a file they placed rather than the one the Dag asked for.

Affects deployments passing externally-sourced names to the Google Drive hook, including wildcard `gcs_to_gdrive` transfers from buckets writable by less-trusted principals. Users are advised to upgrade to `apache-airflow-providers-google` `22.6.0` or later, which escapes quote and backslash characters in every value interpolated into a Drive query.

Credit:

Claude Security Scans (tool)
Jarek Potiuk (remediation developer)

References:

https://github.com/apache/airflow/pull/72166
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-81914

