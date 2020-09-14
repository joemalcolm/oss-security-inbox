X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2020/09/14/1
Message-ID: <5d3591e4-ce5b-77ca-eebe-69651d696f11@apache.org>
Date: Mon, 14 Sep 2020 12:33:10 +0200
From: Francesco Chicchiriccò <ilgrosso@...che.org>
To: oss-security@...ts.openwall.com
Subject: [CVE-2020-11977] Apache Syncope: Remote Code Execution via Flowable workflow definition
Content-Type: text/plain; charset=utf-8

Description:
When the Flowable extension is enabled, an administrator with workflow entitlements can use Shell Service Tasks to perform malicious operations, including but not limited to file read, file write, and code execution.

Severity: Low

Vendor: The Apache Software Foundation

Affects:
2.1.X releases prior to 2.1.7

Solution:
2.1.X users: upgrade to 2.1.7

Credit:
This issue was discovered by ch0wn of Orz Lab.


