X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/07/22
Message-ID: <0aab5697-0850-d932-a226-d666c1de940f@apache.org>
Date: Tue, 06 Oct 2026 22:05:32 +0000
From: Michael Smith <michaelsmith@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-97720: Apache Impala: Impala Executor Webserver Auth Bypass 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache Impala 4.1.0 through 4.5.2

Description:

Incorrect implementation of JWT/OAuth authentication in Impala executors in Apache Impala versions up to and including 4.5.2 which allows attacked to access resources served by the executor's webserver when that webserver is configured to accept JWT/OAuth tokens.  Bearer token (JWT) signatures are not validated resulting in the webserver accepting any valid JWT.
Users are recommended to either disable JWT/OAuth auth for Impala executors or upgrade to version 4.5.3, which fixes this issue.

Credit:

Andrew Rukin (Arenadata) (finder)

References:

https://impala.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-97720

