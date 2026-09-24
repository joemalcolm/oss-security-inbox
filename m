X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/24/12
Message-ID: <7a61c205-d229-b504-1ed2-bb5a2113c9a8@apache.org>
Date: Thu, 24 Sep 2026 22:17:05 +0000
From: Daniil Kirilyuk <dakirily@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-92550: Apache Qpid Broker-J: Type size/count handling can lead to excessive allocation pre-authentication in the AMQP 0-8/0-9/0-9-1 decoder 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Qpid Broker-J (org.apache.qpid:qpid-broker-plugins-amqp-0-8-protocol) through 10.1.0

Description:

A pre-authentication attacker could leverage type size/count handling to cause excessive allocation leading to potential denial of service.

This issue affects Apache Qpid Broker-J: through 10.1.0.

Users are recommended to upgrade to version 10.1.1, which fixes the issue.

Credit:

Khaled Suliman of AISLE Research (finder)
n0mi1k (reporter)

References:

https://qpid.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-92550

