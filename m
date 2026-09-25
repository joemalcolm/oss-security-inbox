X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/25/22
Message-ID: <ee13b8ee-3882-dfe5-a9b9-497daca6290b@apache.org>
Date: Fri, 25 Sep 2026 20:16:50 +0000
From: "David M. Johnson" <snoopdave@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-86507: Apache Roller: Stored XSS in comment moderation via comment author URL 
Content-Type: text/plain; charset=utf-8

Severity: Important 
    CVSS 3.1: 6.1 (medium) CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:C/C:L/I:L/A:N

Affected versions:

- Apache Roller 6.1.5

Description:

Improper neutralization of input in Apache Roller 6.1.5 allows an anonymous remote attacker to store a crafted comment-author URL that can execute script in the session of a weblog moderator or global administrator when the comment management page is viewed. This affects sites that permit comments on at least one weblog and whose moderator subsequently reviews the submitted comment; no non-default server setting is required. Users are recommended to upgrade to Apache Roller 6.1.6 or later.

Credit:

Ivan Iushkevich (Steph) (finder)

References:

https://github.com/apache/roller/pull/181
https://roller.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-86507

