X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/24/15
Message-ID: <f10e9149-20ff-cc03-260a-398272ab986c@apache.org>
Date: Thu, 24 Sep 2026 22:22:29 +0000
From: Daniil Kirilyuk <dakirily@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-92573: Apache Qpid Broker-J: Uncontrolled resource consumption during AMQP delivery decompression, message conversion and HTTP management JSON rendering 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Qpid Broker-J (org.apache.qpid:qpid-broker-core) through 10.1.0

Description:

Improper handling of compressed data in the shared GZIP decompressor used for AMQP 0-8/0-9/0-9-1 and AMQP 0-10 message delivery, message conversion and HTTP management JSON rendering allows authenticated message producers to exhaust memory and disrupt broker availability via processing without a decompressed-output limit.

This issue affects Apache Qpid Broker-J: through 10.1.0.

Users are recommended to upgrade to version 10.1.1, which fixes the issue.

Credit:

Khaled Suliman of AISLE Research (finder)
n0mi1k (reporter)

References:

https://qpid.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-92573

