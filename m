X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/10/6
Message-ID: <4ce2ba09-3768-65f0-9ffa-815b95e0d1b9@apache.org>
Date: Wed, 09 Sep 2026 20:26:32 +0000
From: Clebert Suconic <clebertsuconic@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-67593: Apache Artemis, Apache ActiveMQ Artemis: Pre-authentication Openwire protocol handling can result in queue deletion 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Artemis (org.apache.artemis:artemis-openwire-protocol) 2.50.0 through 2.56.0
- Apache Artemis (org.apache.artemis:artemis-jakarta-openwire-protocol) 2.50.0 through 2.56.0
- Apache ActiveMQ Artemis (org.apache.activemq:artemis-openwire-protocol) 1.0.0 through 2.44.0
- Apache ActiveMQ Artemis (org.apache.activemq:artemis-jakarta-openwire-protocol) 2.32.0 through 2.44.0

Description:

A remote attacker can craft an Openwire RemoveSubscriptionInfo command to cause the deletion of a queue on the Artemis broker before the connection authentication and authorization stage or at any time thereafter. 



This issue affects Apache Artemis: from 2.50.0 through 2.56.0; Apache ActiveMQ Artemis: from 1.0.0 through 2.44.0.



Users are recommended to upgrade to version 2.57.0, which fixes the issue.

Credit:

Daniel Birtwhistle (finder)
krsecurity(kongr) (reporter)
Dilrevx, NSSL, SJTU (reporter)

References:

https://artemis.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-67593

