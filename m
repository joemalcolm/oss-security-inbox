X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/03/18
Message-ID: <4378d812-a6a4-3557-769d-697367be0b31@apache.org>
Date: Tue, 03 Nov 2026 14:28:41 +0000
From: "Christopher L. Shannon" <cshannon@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-108949: Apache ActiveMQ, ActiveMQ Broker: Repeated rejected temporary destination consumer requests can lead to broker OOM 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache ActiveMQ 6.0.0 before 6.3.3
- Apache ActiveMQ before 5.19.12
- ActiveMQ Broker 6.0.0 before 6.3.3
- ActiveMQ Broker before 5.19.12

Description:

Denial of Service via OOM vulnerability in Apache ActiveMQ, ActiveMQ Broker.



An authenticated OpenWire client that sends a ConsumerInfo for a temporary queue/topic owned by another connection is rejected with InvalidDestinationException, but the rejected Subscription is left behind in the region's subscriptions map. Repeating the request leaks broker heap until OOM because the broker does not clean up the rejected subscriptions in the map.



This issue affects Apache ActiveMQ: from 6.0.0 before 6.3.3, before 5.19.12; ActiveMQ Broker: from 6.0.0 before 6.3.3, before 5.19.12.



Users are recommended to upgrade to version 6.4.0, 6.3.3, or 5.19.12, which fixes the issue.

References:

https://activemq.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-108949

