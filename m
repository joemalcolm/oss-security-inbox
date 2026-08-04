X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/04/29
Message-ID: <cde9dccb-1412-3bfc-80ef-07a57f173627@apache.org>
Date: Tue, 04 Aug 2026 18:48:48 +0000
From: "Timothy A. Bish" <tabish@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-67590: Apache Qpid ProtonJ2: Unbounded type nesting can lead to pre-authentication stackoverflow 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Qpid ProtonJ2 (org.apache.qpid:protonj2) through 1.1.0

Description:

A pre-authentication attacker could leverage type nesting to cause a StackOverflowError potentially leading to denial of service.

This issue affects Apache Qpid ProtonJ2: through 1.1.0.

Users are recommended to upgrade to version 1.2.0, which fixes the issue.

References:

https://qpid.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-67590

