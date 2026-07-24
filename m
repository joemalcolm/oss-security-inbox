X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/24/36
Message-ID: <89ed5d16-65e5-c750-0a42-3c2396c0411b@apache.org>
Date: Fri, 24 Jul 2026 21:42:42 +0000
From: Jens Geyer <jensg@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-48145: Apache Thrift: C++ TSSLSocket matchName() RFC 6125 Wildcard Bypass 
Content-Type: text/plain; charset=utf-8

Severity: 

Affected versions:

- Apache Thrift (thrift) before 0.24.0

Description:

Improper Validation of Certificate with Host Mismatch vulnerability in Apache Thrift C++ bindings.

This issue affects Apache Thrift: before 0.24.0.

Users are recommended to upgrade to version 0.24.0, which fixes the issue.

References:

https://thrift.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-48145

