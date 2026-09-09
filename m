X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/10/7
Message-ID: <04c4fd67-5bd8-0c58-65fe-bc3a8c0f7dcc@apache.org>
Date: Wed, 09 Sep 2026 20:27:11 +0000
From: Clebert Suconic <clebertsuconic@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-75880: Apache Artemis, Apache ActiveMQ Artemis: Message selector wildcard handling could lead to denial of service 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Artemis (org.apache.artemis:artemis-selector) 2.50.0 through 2.56.0
- Apache ActiveMQ Artemis (org.apache.activemq:artemis-selector) 1.0.0 through 2.44.0

Description:

An authenticated client could attach a consumer with a selector containing crafted wildcard usage that results in excessive evaluation during message delivery attempts, occupying a shared broker thread and leading to denial of service.

This issue affects Apache Artemis: from 2.50.0 through 2.56.0; Apache ActiveMQ Artemis: from 1.0.0 through 2.44.0.


Users are recommended to upgrade to version 2.57.0, which fixes this issue.

Credit:

Mike Read (finder)

References:

https://artemis.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-75880

