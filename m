X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/24/45
Message-ID: <9e851346-b3a9-b9b6-d146-0cf0ab175ae8@apache.org>
Date: Fri, 24 Jul 2026 21:43:54 +0000
From: Jens Geyer <jensg@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-58662: Apache Thrift: C++ THeaderTransport::readString() info-header length bounds bypass 
Content-Type: text/plain; charset=utf-8

Severity: 

Affected versions:

- Apache Thrift (thrift) before 0.24.0

Description:

Improper Validation of Specified Quantity in Input, Out-of-bounds Read vulnerability in Apache Thrift C++ bindings.

This issue affects Apache Thrift: before 0.24.0.

Users are recommended to upgrade to version 0.24.0, which fixes the issue.

Credit:

Javid Khan <dxbjavid@...il.com> (finder)

References:

https://thrift.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-58662

