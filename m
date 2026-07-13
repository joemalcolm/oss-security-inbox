X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/13/2
Message-ID: <f7e04c7b-c860-57cd-0adf-db3c469bec40@apache.org>
Date: Mon, 13 Jul 2026 02:17:45 +0000
From: Yu Qi <yuqi4733@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-49876: Apache Gravitino: Authenticated SSRF in Gravitino JobManager allows server-side HTTP requests to internal network and cloud metadata endpoints via unvalidated job template URIs 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Gravitino (org.apache.gravitino:gravitino-core) 1.0.0 through 1.2.1

Description:

Authenticated SSRF in Gravitino JobManager allows server-side HTTP requests to internal network and cloud metadata endpoints via unvalidated job template URIs. A vulnerability in Apache Gravitino.

This issue affects Apache Gravitino: from 1.0.0 through 1.2.1.

Users are recommended to upgrade to version 1.3.0, which fixes the issue.

References:

https://gravitino.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-49876

