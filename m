X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/24/37
Message-ID: <d2db8fa9-78de-81b1-784d-87a6ac97c54e@apache.org>
Date: Fri, 24 Jul 2026 21:42:50 +0000
From: Jens Geyer <jensg@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-48586: Apache Thrift: TZlibTransport Decompression Size Limit 
Content-Type: text/plain; charset=utf-8

Severity: 

Affected versions:

- Apache Thrift (thrift) before 0.24.0
- Apache Thrift (github.com/apache/thrift) before 0.24.0
- Apache Thrift (c_glib) before 0.24.0
- Apache Thrift (org.apache.thrift:libthrift) before 0.24.0
- Apache Thrift (thrift) before 0.24.0
- Apache Thrift (D language) before 0.24.0

Description:

Improper Handling of Highly Compressed Data (Data Amplification) vulnerability in Apache Thrift C++, Java, Python, Go, D, C/GLib bindings.

This issue affects Apache Thrift: before 0.24.0.

Users are recommended to upgrade to version 0.24.0, which fixes the issue.

References:

https://thrift.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-48586

