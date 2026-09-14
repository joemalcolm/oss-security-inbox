X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/14/5
Message-ID: <2af0eb38-33b2-90d3-0337-1462e43582d5@apache.org>
Date: Mon, 14 Sep 2026 08:15:40 +0000
From: Francesco Chicchiriccò <ilgrosso@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-73191: Apache Syncope: CAS service URL injection via Forwarded HTTP headers 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Syncope (org.apache.syncope:syncope-sra) 3.0.0-M0 through 3.0.16
- Apache Syncope (org.apache.syncope:syncope-sra) 4.0.0-M0 through 4.0.7
- Apache Syncope (org.apache.syncope:syncope-sra) 4.1.0-M0 through 4.1.2

Description:

URL Redirection to Untrusted Site ('Open Redirect') vulnerability in Apache Syncope.





When the Syncope SRA is configured for CAS authentication, the target Apereo CAS instance's URL is calculated by unconditionally looking at client-supplied forwarded HTTP headers.

This issue affects Apache Syncope: from 3.0.0-M0 through 3.0.16, from 4.0.0-M0 Through 4.0.7, from 4.1.0-M0 through 4.1.2.

Users are recommended to upgrade to version 4.0.8 / 4.1.3, which fix this issue.

Credit:

meifukun (finder)

References:

https://syncope.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-73191

