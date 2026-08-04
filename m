X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/04/15
Message-ID: <f15bfa0b-10dc-4ddd-d7e2-4928a41cb2ce@apache.org>
Date: Tue, 04 Aug 2026 18:13:57 +0000
From: Daniil Kirilyuk <dakirily@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-68073: Apache Qpid Broker-J: Unbounded type nesting can lead to pre-authentication stack overflow 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Qpid Broker-J (org.apache.qpid:qpid-broker-plugins-amqp-1-0-protocol) through 10.0.1

Description:

A pre-authentication attacker could leverage type nesting to cause a StackOverflowError potentially leading to denial of service.

This issue affects Apache Qpid Broker-J: through 10.0.1.

Users are recommended to upgrade to version 10.1.0, which fixes the issue.

References:

https://qpid.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-68073

