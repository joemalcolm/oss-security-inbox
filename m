X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/25/16
Message-ID: <7a4e6a61-9c50-fc29-eafa-646f06720db2@apache.org>
Date: Fri, 25 Sep 2026 20:11:57 +0000
From: "David M. Johnson" <snoopdave@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-82383: Apache Roller: Anonymous setup action allows frontpage configuration tampering 
Content-Type: text/plain; charset=utf-8

Severity: Important 
    CVSS 3.1: 8.2 (high) CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:H/A:L

Affected versions:

- Apache Roller 6.1.5

Description:

Missing Authentication for Critical Function in Apache Roller 6.1.5 allows an unauthenticated remote attacker to persistently change a site-global configuration value (the frontpage weblog selection) on any installed instance, because the setup action remains anonymously reachable after installation and persists configuration without an authorization check. No optional feature or non-default configuration is required; the result can redirect or break the site's public frontpage, with administrative recovery available. Users are recommended to upgrade to Apache Roller 6.1.6 or later, which restricts the write to global administrators.

Credit:

meifukun (finder)

References:

https://github.com/apache/roller/pull/170
https://roller.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-82383

