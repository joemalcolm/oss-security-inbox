X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/24/44
Message-ID: <ca54db17-0e59-8f1e-e032-1668a46b43d4@apache.org>
Date: Fri, 24 Jul 2026 21:43:47 +0000
From: Jens Geyer <jensg@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-58389: Apache Thrift: Rust binary protocol non-strict path missing string size limit 
Content-Type: text/plain; charset=utf-8

Severity: 

Affected versions:

- Apache Thrift (thrift) before 0.24.0

Description:

Allocation of Resources Without Limits or Throttling vulnerability in Apache Thrift Rust bindings.

This issue affects Apache Thrift: before 0.24.0.

Users are recommended to upgrade to version 0.24.0, which fixes the issue.

Credit:

Javid Khan <dxbjavid@...il.com> (finder)

References:

https://thrift.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-58389

