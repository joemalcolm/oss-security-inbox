X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/24/34
Message-ID: <2db89cd9-7893-75bc-a67d-106368892a8e@apache.org>
Date: Fri, 24 Jul 2026 21:42:08 +0000
From: Jens Geyer <jensg@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-45112: Apache Thrift: Unbounded Read Leading to Denial of Service 
Content-Type: text/plain; charset=utf-8

Severity: 

Affected versions:

- Apache Thrift (org.apache.thrift:libthrift) 0.19.0 before 0.24.0

Description:

Allocation of Resources Without Limits or Throttling vulnerability in Apache Thrift Java bindings.

This issue affects Apache Thrift: from 0.19.0 before 0.24.0.

Users are recommended to upgrade to version 0.24.0, which fixes the issue.

Credit:

IcySun & Yashon (finder)

References:

https://thrift.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-45112

