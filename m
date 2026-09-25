X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/25/14
Message-ID: <c7899a5d-aa4d-1e90-18e0-a0651e7aa40e@apache.org>
Date: Fri, 25 Sep 2026 20:11:40 +0000
From: "David M. Johnson" <snoopdave@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-82381: Apache Roller: Stored cross-site scripting in the authoring UI 
Content-Type: text/plain; charset=utf-8

Severity: Important 
    CVSS 3.1: 5.4 (medium) CVSS:3.1/AV:N/AC:L/PR:L/UI:R/S:C/C:L/I:L/A:N

Affected versions:

- Apache Roller 6.1.5

Description:

Improper Neutralization of Input During Web Page Generation ('Cross-site Scripting') in Apache Roller 6.1.5 allows a user with authoring rights on a weblog to store crafted content that is later written into the authoring UI's JavaScript string literals and markup sinks without proper encoding, causing the stored script to execute in another author's or administrator's browser. No optional feature or non-default configuration is required; this affects weblogs with multiple authors or administrators who are not mutually trusted. Users are recommended to upgrade to Apache Roller 6.1.6 or later, which moves those values out of JavaScript literals and writes them as text.

Credit:

meifukun (finder)

References:

https://github.com/apache/roller/pull/168
https://roller.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-82381

