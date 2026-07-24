X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/24/33
Message-ID: <8348ba12-be42-5a59-acc9-7ff08fbb4fb7@apache.org>
Date: Fri, 24 Jul 2026 21:42:03 +0000
From: Jens Geyer <jensg@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-43871: Apache Thrift: TCompactProtocol varint byte-count limit 
Content-Type: text/plain; charset=utf-8

Severity: 

Affected versions:

- Apache Thrift (thrift) before 0.24.0
- Apache Thrift (github.com/apache/thrift) before 0.24.0
- Apache Thrift (apache/thrift) before 0.24.0
- Apache Thrift (org.apache.thrift:libthrift) before 0.24.0

Description:

Loop with Unreachable Exit Condition ('Infinite Loop') vulnerability in Apache Thrift Python, Go, PHP and Java bindings.This issue affects Apache Thrift: before 0.24.0.

Users are recommended to upgrade to version 0.24.0, which fixes the issue.

Credit:

Yu Bao - yubao@...pal.com, who works for paypal.com (finder)

References:

https://thrift.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-43871

