X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/04/20
Message-ID: <93603426-b5fb-3650-cc44-28e0c6dc69bf@apache.org>
Date: Tue, 04 Aug 2026 18:15:44 +0000
From: Daniil Kirilyuk <dakirily@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-68080: Apache Qpid Broker-J: Unbounded echo flow responses can lead to denial of service 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Qpid Broker-J (org.apache.qpid:qpid-broker-plugins-amqp-1-0-protocol) through 10.0.1

Description:

It was not possible to govern the rate at which the broker would respond to an echo flow, enabling an authenticated attacker to cause excessive resource usage and potential denial of service.

This issue affects Apache Qpid Broker-J: through 10.0.1.

Users are recommended to upgrade to version 10.1.0, which fixes the issue.

References:

https://qpid.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-68080

