X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/23/35
Message-ID: <e66cffc6-ec43-d919-5222-4c65bf6fb1c3@apache.org>
Date: Mon, 23 Nov 2026 22:06:53 +0000
From: Andy Seaborne <andy@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-103333: Apache Jena: Improper input validation in SPARQL expressions can lead to excessive CPU/memory usage 
Content-Type: text/plain; charset=utf-8

Severity: important 
    CVSS 4.0: 7.7 (high) CVSS:4.0/AV:N/AC:L/AT:N/PR:N/UI:N/VC:N/VI:N/VA:H/SC:N/SI:N/SA:H/E:U/S:N/AU:Y/R:U/V:D/RE:L/U:Red

Affected versions:

- Apache Jena through 6.2.0

Description:

Improper input validation in some SPARQL functions available in Apache Jena ARQ allows users to submit SPARQL queries that cause excessive CPU and/or memory usage.  This may be the result of intentionally malicious inputs in the query itself, or an expression applied over data that has been insufficiently validated/sanitised

Users are recommended to upgrade to version 6.3.0, which fixes this issue.

Credit:

The ASF (reporter)

References:

https://jena.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-103333

