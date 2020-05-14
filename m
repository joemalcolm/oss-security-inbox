X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2020/05/14/1
Message-Id: <DC7932BA-215B-48C8-844E-5EFC06EE609C@nanthrax.net>
Date: Thu, 14 May 2020 07:25:05 +0200
From: Jean-Baptiste Onofre <jb@...thrax.net>
To: oss-security@...ts.openwall.com
Subject: [CVE-2020-1941] XSS in ActiveMQ WebConsole
Content-Type: text/plain; charset=utf-8

CVE-2020-1941 - XSS in WebConsole

Severity: Medium

Vendor:
The Apache Software Foundation

Versions Affected:
Apache ActiveMQ 5.0.0 - 5.15.11

Description:
The webconsole admin GUI is open to XSS, in the view that lists the contents of a queue.

Mitigation:
Upgrade to Apache ActiveMQ 5.15.12. 

Credit:
This issue was discovered by:

* PrzemysĹ‚aw Kowalski <przemyslawk@...solutions.pl>


