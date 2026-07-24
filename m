X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/24/40
Message-ID: <950878cc-9965-b455-62f3-d13706fa9491@apache.org>
Date: Fri, 24 Jul 2026 21:43:14 +0000
From: Jens Geyer <jensg@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-55969: Apache Thrift: integer overflow in TProtocol::checkReadBytesAvailable() 
Content-Type: text/plain; charset=utf-8

Severity: 

Affected versions:

- Apache Thrift (thrift) before 0.24.0
- Apache Thrift (c_glib language bindings) before 0.24.0

Description:

Integer Overflow or Wraparound vulnerability in Apache Thrift C++ and c_glib bindings.

This issue affects Apache Thrift: before 0.24.0.

Users are recommended to upgrade to version 0.24.0, which fixes the issue.

Credit:

Ghaith Abdulreda (finder)
Javid Khan (finder)

References:

https://thrift.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-55969

