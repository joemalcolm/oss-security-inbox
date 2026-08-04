X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/04/14
Message-ID: <f055a013-dc50-6f8a-a3c4-7de2fb9eb70d@apache.org>
Date: Tue, 04 Aug 2026 18:12:16 +0000
From: Daniil Kirilyuk <dakirily@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-68060: Apache Qpid Broker-J: Type size/count handling can lead to excessive allocation pre-authentication 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Qpid Broker-J (org.apache.qpid:qpid-broker-plugins-amqp-1-0-protocol) through 10.0.1

Description:

A pre-authentication attacker could leverage type size/count handling to cause excessive allocation leading to potential denial of service.

This issue affects Apache Qpid Broker-J: through 10.0.1.

Users are recommended to upgrade to version 10.1.0, which fixes the issue.

References:

https://qpid.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-68060

