X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/03/19
Message-ID: <aee9187b-f87a-a7cf-b945-468fbf08b50c@apache.org>
Date: Tue, 03 Nov 2026 14:28:49 +0000
From: "Christopher L. Shannon" <cshannon@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-111821: Apache ActiveMQ, Apache ActiveMQ KahaDB: Oversized client identifier strings poison the KahaDB journal 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache ActiveMQ 6.0.0 before 6.3.3
- Apache ActiveMQ before 5.19.12
- Apache ActiveMQ KahaDB 6.0.0 before 6.3.3
- Apache ActiveMQ KahaDB before 5.19.12

Description:

Improper input validation vulnerability in Apache ActiveMQ, Apache ActiveMQ KahaDB.



A user can create a durable subscription with a clientId and subscription name that have a combined length > 65,535 (while separately being shorter) on a broker using KahaDB which can cause the broker to shutdown and be unrecoverable. 



This issue affects Apache ActiveMQ: from 6.0.0 before 6.3.3, before 5.19.12; Apache ActiveMQ KahaDB: from 6.0.0 before 6.3.3, before 5.19.12.



Users are recommended to upgrade to version 6.4.0, 6.3.3 or 5.19.12, which fixes the issue.

References:

https://activemq.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-111821

