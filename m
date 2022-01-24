X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/01/24/3
Message-ID: <CABuuzNOonKYSY0afJ0BZyt8+fqY6LUKv8eU6F+t0BJJPTsvymw@mail.gmail.com>
Date: Mon, 24 Jan 2022 18:42:01 +0530
From: Mukul Gandhi <mukulg@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2022-23437: Infinite loop within Apache XercesJ xml parser
Content-Type: text/plain; charset=utf-8

To: oss-security@...ts.openwall.com
Reply-To: j-dev@...ces.apache.org
Subject: CVE-2022-23437: Infinite loop within Apache XercesJ xml parser

Severity: high

Description:

There's a vulnerability within the Apache Xerces Java (XercesJ) XML
parser when handling specially crafted XML document payloads. This
causes, the XercesJ XML parser to wait in an infinite loop, which may
sometimes consume system resources for prolonged duration. This
vulnerability is present within XercesJ version 2.12.1 and the
previous versions.

Mitigation:

Apache XercesJ users, should migrate to version 2.12.2

Credit:

This issue was discovered by Sergey Temnikov and Ziyi Luo, from Amazon
Corretto/JDK Team

References:
https://markmail.org/message/vcmhwbuorfgcdr6l


-- 
Regards,
Mukul Gandhi

