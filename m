X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/03/20
Message-ID: <f4651e5c-2043-01b8-574a-213b0b036977@apache.org>
Date: Tue, 03 Nov 2026 14:28:55 +0000
From: "Christopher L. Shannon" <cshannon@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-111822: Apache ActiveMQ, Apache ActiveMQ Runtime Config: ActiveMQ retains write access after live ACL revocation 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache ActiveMQ 6.0.0 before 6.3.3
- Apache ActiveMQ before 5.19.12
- Apache ActiveMQ Runtime Config 6.0.0 before 6.3.3
- Apache ActiveMQ Runtime Config before 5.19.12

Description:

Improper invalidation of cached authorizations vulnerability in Apache ActiveMQ, Apache ActiveMQ Runtime Config.



After the runtime configuration plugin removes a principal's write grant on a destination, an authenticated connection opened before the change can keep sending to that destination, including through a new anonymous producer, while fresh connections and new explicit producers are denied.



This issue affects Apache ActiveMQ: from 6.0.0 before 6.3.3, before 5.19.12; Apache ActiveMQ Runtime Config: from 6.0.0 before 6.3.3, before 5.19.12.



Users are recommended to upgrade to version 6.4.0, 6.3.3 or 5.19.12, which fixes the issue.

Credit:

hataehoon (finder)

References:

https://activemq.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-111822

