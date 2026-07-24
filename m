X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/24/46
Message-ID: <440e1a86-61be-5ce7-60a8-5a6dfde571b6@apache.org>
Date: Fri, 24 Jul 2026 21:44:01 +0000
From: Jens Geyer <jensg@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-66053: Apache Thrift: Python TSSLSocket Hostname Matcher Import 
Content-Type: text/plain; charset=utf-8

Severity: 

Affected versions:

- Apache Thrift (thrift) before 0.24.0

Description:

Improper Validation of Certificate with Host Mismatch vulnerability in Apache Thrift Python bindings.

This issue affects Apache Thrift: before 0.24.0.

Users are recommended to upgrade to version 0.24.0, which fixes the issue.

This replaces CVE-2026-41603

Credit:

Yu Bao – yubao@...pal.com, who works for paypal.com (finder)

References:

https://thrift.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-66053

