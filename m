X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/07/21
Message-ID: <421f7cfe-045d-c511-357c-db7873693af9@apache.org>
Date: Tue, 06 Oct 2026 22:08:17 +0000
From: Michael Smith <michaelsmith@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-93684: Apache Impala: Stored XSS in Impala query plans 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Impala 2.7.0 through 4.5.2

Description:

An SQL user using Impala up to and including version 4.5.2 with only SELECT permission can put JavaScript in a table alias and make it run in another user's browser when that user opens the query plan in Impala's Web UI. This is stored XSS (CWE-79). Users are recommended to upgrade to version 4.5.3.

Credit:

Andrew Rukin (Arenadata) (finder)

References:

https://impala.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-93684

