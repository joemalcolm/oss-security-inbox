X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/10/1
Message-ID: <72314712-979f-fd2e-38f2-c160361925ff@apache.org>
Date: Wed, 09 Sep 2026 20:22:07 +0000
From: Clebert Suconic <clebertsuconic@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-49362: Apache Artemis, Apache ActiveMQ Artemis: Missing Authentication in CORE Protocol Handler Allows Unauthorized Queue Creation 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Artemis (org.apache.artemis:artemis-server) 2.50.0 through 2.56.0
- Apache ActiveMQ Artemis (org.apache.activemq:artemis-server) 1.0.0 through 2.44.0

Description:

An unauthenticated remote attacker can create arbitrary durable queues via the CORE protocol, leading to unauthorized broker state manipulation and potential denial of service.

This issue affects Apache Artemis: from 2.50.0 through 2.56.0; Apache ActiveMQ Artemis: from 1.0.0 through 2.44.0.



Users are recommended to upgrade to version 2.57.0, which fixes the issue.

Credit:

Domenico Francesco Bruscino (finder)
Fedrick Sequeira (reporter)
Mike Read (reporter)

References:

https://artemis.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-49362

