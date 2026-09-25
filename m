X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/25/19
Message-ID: <83924768-faaf-d6e4-878d-e3cb2a00af34@apache.org>
Date: Fri, 25 Sep 2026 20:13:09 +0000
From: "David M. Johnson" <snoopdave@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-82386: Apache Roller: XML external entity processing in OPML bookmark import 
Content-Type: text/plain; charset=utf-8

Severity: Important 
    CVSS 3.1: 7.7 (high) CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:C/C:H/I:N/A:N

Affected versions:

- Apache Roller 6.1.5

Description:

Improper Restriction of XML External Entity Reference in Apache Roller 6.1.5 allows a weblog administrator to read files readable by the Roller process and reach internal network addresses by importing a crafted OPML document, because the bookmark import parser does not disable external entity resolution. No non-default configuration is required; the import is reached through the administrator bookmark-import action. Users are recommended to upgrade to Apache Roller 6.1.6 or later, which uses a hardened parser that disables external entities and document type declarations.

Credit:

n0mi1k (finder)

References:

https://github.com/apache/roller/pull/173
https://roller.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-82386

