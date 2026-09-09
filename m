X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/10/5
Message-ID: <1d369500-fd59-e64a-e438-a34e790d207f@apache.org>
Date: Wed, 09 Sep 2026 20:25:55 +0000
From: Clebert Suconic <clebertsuconic@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-57967: Apache Artemis, Apache ActiveMQ Artemis: Missing authentication on CORE protocol session reattachment 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Artemis (org.apache.artemis:artemis-server) 2.50.0 through 2.56.0
- Apache ActiveMQ Artemis (org.apache.activemq:artemis-server) 1.0.0 through 2.44.0

Description:

An unauthenticated remote attacker can craft a CORE protocol SESSION_REATTACH packet to steal an existing session and assume ongoing execution of the previously authenticated session.



This issue affects Apache Artemis: from 2.50.0 through 2.56.0; Apache ActiveMQ Artemis: from 1.0.0 through 2.44.0.



Users are recommended to upgrade to version 2.57.0, which fixes the issue.

Credit:

Domenico Francesco Bruscino (finder)
Fedrick Sequeira (reporter)

References:

https://artemis.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-57967

