X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/23/11
Message-ID: <b2d3bc66-0276-1cc8-5805-51791c229def@apache.org>
Date: Wed, 23 Sep 2026 09:28:42 +0000
From: Calvin Kirs <kirs@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-96443: Apache Doris: JDBC driver URL validation bypass leads to remote code execution 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Doris 2.0.5 through 4.1.3

Description:

Insufficient validation of the JDBC driver URL in Apache Doris allows a privileged user to achieve remote code execution on the FE.

Credit:

zhaoyudi (nebula LAB) (finder)

References:

https://doris.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-96443

