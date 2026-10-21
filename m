X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/21/19
Message-ID: <1439770f-ec3c-59ba-a2e2-62ca9428d2f2@apache.org>
Date: Wed, 21 Oct 2026 10:55:10 +0000
From: Haonan Hou <haonan@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-41114: Apache IoTDB JDBC driver: Large-scale Memory Exhaustion via BigDecimal toPlainString in JDBC Driver 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache IoTDB JDBC driver (org.apache.iotdb:iotdb-jdbc) 1.3.3 before 2.0.11

Description:

Uncontrolled Resource Consumption vulnerability in Apache IoTDB JDBC driver.



This issue affects Apache IoTDB JDBC driver: from 1.3.3 before 2.0.11.



Users are recommended to upgrade to version 2.0.11, which fixes the issue.

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
https://www.cve.org/CVERecord?id=CVE-2026-41114

