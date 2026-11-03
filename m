X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/03/17
Message-ID: <a49b1e1a-c09b-3768-a010-647449014b0e@apache.org>
Date: Tue, 03 Nov 2026 14:30:54 +0000
From: "Christopher L. Shannon" <cshannon@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-108946: Apache ActiveMQ, ActiveMQ Broker: The broker does not verify user provided connection id matches connection 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache ActiveMQ 6.0.0 before 6.3.3
- Apache ActiveMQ before 5.19.12
- ActiveMQ Broker 6.0.0 before 6.3.3
- ActiveMQ Broker before 5.19.12

Description:

Improper input validation vulnerability in Apache ActiveMQ, Apache ActiveMQ KahaDB.



The ActiveMQ broker resolves connection, session and consumer state from ids that are user provided and in some scenarios does not validate that they ids are bound to that user. This allows an authenticated client to spoof another user's ids. This allows:





  *   an authenticated client consumes from another connection's temporary queue/topic by putting the victim's connection id in its own ConsumerId, bypassing the broker-side ownership check. 
  *  a duplicate ConsumerId registration is only logged, after which the attacker's RemoveInfo or disconnect tears down the victim's live subscription
  *  a forged MessageAck for the victim's ConsumerId permanently deletes an in-flight, unacknowledged message.








This issue affects Apache ActiveMQ: from 6.0.0 before 6.3.3, before 5.19.12; Apache ActiveMQ KahaDB: from 6.0.0 before 6.3.3, before 5.19.12.



Users are recommended to upgrade to version 6.4.0, 6.3.3, or 5.19.12, which fixes the issue.

Credit:

zerovuln labs <zerovulnlabs@...look.com> (finder)

References:

https://activemq.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-108946

