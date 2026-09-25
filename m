X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/25/7
Message-ID: <3d4f22eb-ee9c-1457-f6ec-42800cfc4bee@apache.org>
Date: Fri, 25 Sep 2026 20:16:37 +0000
From: "David M. Johnson" <snoopdave@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-82348: Apache Roller: Cross-weblog resource tampering via unscoped authoring lookups 
Content-Type: text/plain; charset=utf-8

Severity: Important 
    CVSS 3.1: 7.7 (high) CVSS:3.1/AV:N/AC:H/PR:L/UI:N/S:C/C:L/I:H/A:L

Affected versions:

- Apache Roller 6.1.5

Description:

Authorization Bypass Through User-Controlled Key in Apache Roller 6.1.5 allows an authenticated user with authoring rights on one weblog to read, modify, or delete resources belonging to another weblog through unscoped identifier-based lookups. This affects multi-user installations where users are intended to be isolated between weblogs; no optional feature or non-default configuration is required. A user with administrator rights on their weblog can also overwrite another weblog's Velocity template, whose content is evaluated when the victim weblog renders. Users are recommended to upgrade to Apache Roller 6.1.6 or later, which scopes authoring resource lookups to the acting weblog.

Credit:

meifukun (finder)
n0mi1k (finder)
Ivan Iushkevich (Steph) (finder)

References:

https://github.com/apache/roller/pull/162
https://roller.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-82348

