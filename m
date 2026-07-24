X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/24/41
Message-ID: <815b0aa4-aca3-4573-6567-e290a2fb61f3@apache.org>
Date: Fri, 24 Jul 2026 21:43:22 +0000
From: Jens Geyer <jensg@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-55970: Apache Thrift: C++ heap out-of-bounds read in THeaderTransport::readHeaderFormat() 
Content-Type: text/plain; charset=utf-8

Severity: 

Affected versions:

- Apache Thrift (thrift) before 0.24.0

Description:

Buffer Over-read vulnerability in Apache Thrift C++ bindings.

This issue affects Apache Thrift: before 0.24.0.

Users are recommended to upgrade to version 0.24.0, which fixes the issue.

Credit:

Ghaith Abdulreda (finder)

References:

https://thrift.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-55970

