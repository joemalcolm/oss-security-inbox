X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/01/4
Message-ID: <c4e49725-716f-3b8e-37d0-4a8908d997b4@apache.org>
Date: Wed, 01 Jul 2026 13:12:32 +0000
From: Oleg Kalnichevski <olegk@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-54399: Apache HttpComponents Core: Unbounded HTTP Header/Line Length in Default Configuration 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache HttpComponents Core (org.apache.httpcomponents.core5:httpcore5) 5.5-beta1
- Apache HttpComponents Core (org.apache.httpcomponents.core5:httpcore5) 5.4.2

Description:

Uncontrolled Resource Consumption vulnerability in the HTTP/1.1 message parser in Apache HttpComponents Core (5.4.2 and earlier, 5.5-beta1 and earlier) allows an remote attacker to cause a denial of service through memory exhaustion by sending messages with excessive number of headers / excessive header length

Credit:

Henry Huang <zhuang3@...pal.com> (finder)

References:

https://hc.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-54399

