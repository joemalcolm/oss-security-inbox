X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/01/3
Message-ID: <cefb1b7f-6356-f024-fd88-3b3a81483d40@apache.org>
Date: Wed, 01 Jul 2026 13:11:07 +0000
From: Oleg Kalnichevski <olegk@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-54428: Apache HttpComponents Core: HPackDecoder Unlimited Header List Size Before SETTINGS ACK 
Content-Type: text/plain; charset=utf-8

Severity: Important 

Affected versions:

- Apache HttpComponents Core (org.apache.httpcomponents.core5:httpcore5-h2) 5.5-beta1
- Apache HttpComponents Core (org.apache.httpcomponents.core5:httpcore5-h2) 5.4.2

Description:

Allocation of resources without limits or throttling in the HTTP/2 HPACK decoder in Apache HttpComponents Core (5.4.2 and earlier, 5.5-beta1 and earlier) allows an remote attacker to cause a denial of service through memory exhaustion by sending oversized compressed header blocks before the HTTP/2 SETTINGS acknowledgement causes the configured header list size limit to be applied.

Credit:

Henry Huang <zhuang3@...pal.com> (finder)

References:

https://hc.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-54428

