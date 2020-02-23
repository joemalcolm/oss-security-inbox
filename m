X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2020/02/23/1
Message-ID: <CANUbERwKhzhZnUWrxqBB6tjYqz0yAWTrRbH9j+WhFc9wGwtsMQ@mail.gmail.com>
Date: Sun, 23 Feb 2020 15:00:27 +0800
From: George Ni <nic@...che.org>
To: user <user@...in.apache.org>, dev <dev@...in.apache.org>, announce@...che.org,  Jonathan Leitschuh <jonathan.leitschuh@...il.com>, Apache Security Team <security@...che.org>,  oss-security@...ts.openwall.com
Subject: [CVE-2020-1937] Apache Kylin SQL injection vulnerability
Content-Type: text/plain; charset=utf-8

Severity: Important

Vendor:
The Apache Software Foundation

Versions Affected:
Kylin 2.3.0 to 2.3.2
Kylin 2.4.0 to 2.4.1
Kylin 2.5.0 to 2.5.2
Kylin 2.6.0 to 2.6.4
Kylin 3.0.0-alpha, Kylin 3.0.0-alpha2, Kylin 3.0.0-beta, Kylin 3.0.0

Description:
Kylin has some restful apis which will concatenate SQLs with the user input
string, a user is likely to be able to run malicious database queries.

Mitigation:
Users should upgrade to 3.0.1 or 2.6.5

Credit:
This issue was discovered by ﻿Jonathan Leitschuh

References:
https://kylin.apache.org/docs/security.html


---------------------

Best regards,



Ni Chunen / George

