X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/10/4
Message-ID: <98c14965-67ce-b04b-327e-5145adeec9a1@apache.org>
Date: Wed, 09 Sep 2026 20:25:17 +0000
From: Clebert Suconic <clebertsuconic@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-57822: Apache Artemis, Apache ActiveMQ Artemis: Message-based management parameter deserialization may lead to denial of service 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Artemis (org.apache.artemis:artemis-core-client) 2.50.0 through 2.56.0
- Apache ActiveMQ Artemis (org.apache.activemq:artemis-core-client) 1.3.0 through 2.44.0

Description:

When the broker is processing message-based management requests, sent by an authenticated messaging client that is authorized with MANAGE permission to perform management-via-messaging, the parameter processing can trigger Java deserialization of certain method parameters that the broker will not utilise. The permitted types allow to craft a payload causing excessive computation and pinning the processing thread, leading to denial of service.




This issue affects Apache Artemis: from 2.50.0 through 2.56.0; Apache ActiveMQ Artemis: from 1.3.0 through 2.44.0.



Users are recommended to upgrade to version 2.57.0, which fixes the issue.

Credit:

Clebert Suconic (finder)
Mike Read (reporter)

References:

https://artemis.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-57822

