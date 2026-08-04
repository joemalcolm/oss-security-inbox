X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/04/16
Message-ID: <0e885715-2b58-e79f-689e-de4cf68090c1@apache.org>
Date: Tue, 04 Aug 2026 18:14:24 +0000
From: Daniil Kirilyuk <dakirily@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-68074: Apache Qpid Broker-J: Unbounded symbol value caching can lead to pre-authentication resource exhaustion 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Qpid Broker-J (org.apache.qpid:qpid-broker-plugins-amqp-1-0-protocol) through 10.0.1

Description:

A pre-authentication attacker could leverage unbounded symbol value caching to cause resource exhaustion leading to denial of service.

This issue affects Apache Qpid Broker-J: through 10.0.1.

Users are recommended to upgrade to version 10.1.0, which fixes the issue.

References:

https://qpid.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-68074

