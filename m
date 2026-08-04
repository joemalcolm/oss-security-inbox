X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/04/18
Message-ID: <511a4d62-b218-859c-2624-df522c73f443@apache.org>
Date: Tue, 04 Aug 2026 18:15:18 +0000
From: Daniil Kirilyuk <dakirily@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-68077: Apache Qpid Broker-J: Unbounded disposition range handling can lead to denial of service 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Qpid Broker-J (org.apache.qpid:qpid-broker-plugins-amqp-1-0-protocol) through 10.0.1

Description:

An authenticated attacker can craft a disposition frame with large or illegal ranges causing excessive CPU usage due to naive range handling, leading to denial of service.

This issue affects Apache Qpid Broker-J: through 10.0.1.

Users are recommended to upgrade to version 10.1.0, which fixes the issue.

References:

https://qpid.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-68077

