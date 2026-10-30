X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/31/2
Message-ID: <76a9dd7e-7b19-fa3d-e838-ade13d9ea074@apache.org>
Date: Fri, 30 Oct 2026 23:13:23 +0000
From: Jens Geyer <jensg@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-120135: Apache Thrift: Java TProtocolUtil.skip() does not limit the recursion depth by default 
Content-Type: text/plain; charset=utf-8

Severity: important 
    CVSS 4.0: 8.2 (high) CVSS:4.0/AV:N/AC:L/AT:P/PR:N/UI:N/VC:N/VI:N/VA:H/SC:N/SI:N/SA:N

Affected versions:

- Apache Thrift (org.apache.thrift:libthrift) before 0.24.0

Description:

Uncontrolled Recursion vulnerability in Apache Thrift Java bindings.



This issue affects Apache Thrift: before 0.24.0.



Users are recommended to upgrade to version 0.24.0, which fixes the issue.

Credit:

Yu Bao – yubao@...pal.com, who works for paypal.com (finder)

References:

https://thrift.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-120135

