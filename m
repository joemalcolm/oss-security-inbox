X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/24/16
Message-ID: <a106cb59-0e7c-a5ec-6964-fe45d3c141da@apache.org>
Date: Thu, 24 Sep 2026 22:24:29 +0000
From: Daniil Kirilyuk <dakirily@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-92608: Apache Qpid Broker-J: Incomplete property conversion handling from AMQP 1.0 to AMQP 0-10 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Qpid Broker-J (org.apache.qpid:qpid-broker-plugins-amqp-msg-conv-0-10-to-1-0) through 10.1.0

Description:

Improper handling of property-encoding exceptions in AMQP 1.0-to-AMQP 0-10 message conversion allows authenticated message producers to disrupt delivery to AMQP 0-10 consumers via message properties that the target encoder does not handle correctly.

This issue affects Apache Qpid Broker-J: through 10.1.0.

Users are recommended to upgrade to version 10.1.1, which fixes the issue.

Credit:

n0mi1k (reporter)

References:

https://qpid.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-92608

