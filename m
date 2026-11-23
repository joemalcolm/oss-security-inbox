X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/23/13
Message-ID: <72267327-4352-4bf6-fe14-7a8cfa4fbc1e@apache.org>
Date: Mon, 23 Nov 2026 07:34:53 +0000
From: Haonan Hou <haonan@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-60079: Apache IoTDB: Authenticated REST clients can insert large payload to trigger heap-exhaustion DoS 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache IoTDB 0.13.0 through 2.0.11

Description:

Allocation of resources without limits or throttling vulnerability in Apache IoTDB. Authenticated REST clients can insert large payload to trigger heap-exhaustion DoS.



This issue affects Apache IoTDB: from 0.13.0 through 2.0.11.



Users are recommended to upgrade to version 2.0.12, which fixes the issue.

Credit:

Ho1aAs (GitHub: @HolaAsuka) (finder)
movonow (GitHub: @movonow) (finder)
zhid889773 (GitHub: @zhid889773) (finder)
WA-888 (GitHub: @WA-888) (finder)
binghuangczc (Email: 572929574@...com) (finder)
errors11 (Github: @errors11) (finder)
Phoexina (Github: @Phoexina) (finder)
skydiver-jay (Github: @skydiver-jay) (finder)
V9d0g (Github: @V9d0g) (finder)
FlyFish (Email: 2811469022@...com) (finder)

References:

https://iotdb.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-60079

