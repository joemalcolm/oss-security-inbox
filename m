X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/04/17
Message-ID: <85b5f1de-4a79-f0c4-80ee-2370cd67ffa2@apache.org>
Date: Tue, 04 Aug 2026 18:14:49 +0000
From: Daniil Kirilyuk <dakirily@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-68075: Apache Qpid Broker-J: Incoming session flow control window can be exceeded 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Qpid Broker-J (org.apache.qpid:qpid-broker-plugins-amqp-1-0-protocol) through 10.0.1

Description:

An authenticated attacker could exceed the session flow control incoming window potentially leading to denial of service.

This issue affects Apache Qpid Broker-J: through 10.0.1.

Users are recommended to upgrade to version 10.1.0, which fixes the issue.

References:

https://qpid.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-68075

