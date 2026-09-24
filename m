X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/24/14
Message-ID: <600caf68-d01a-21e9-73da-33b196443da3@apache.org>
Date: Thu, 24 Sep 2026 22:21:07 +0000
From: Daniil Kirilyuk <dakirily@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-92564: Apache Qpid Broker-J: Unbounded type nesting can lead to stack overflow pre-authentication in AMQP 0-8/0-9/0-9-1 field-table processing 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Qpid Broker-J (org.apache.qpid:qpid-broker-plugins-amqp-0-8-protocol) through 10.1.0

Description:

A pre-authentication attacker could leverage type nesting to cause a StackOverflowError potentially leading to denial of service.

This issue affects Apache Qpid Broker-J: through 10.1.0.

Users are recommended to upgrade to version 10.1.1, which fixes the issue.

Credit:

n0mi1k (reporter)

References:

https://qpid.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-92564

