X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/25/9
Message-ID: <9a30e989-53f2-272b-1876-4bef3fa62001@apache.org>
Date: Fri, 25 Sep 2026 20:12:30 +0000
From: "David M. Johnson" <snoopdave@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-82376: Apache Roller: XML external entity processing in trackback response parser 
Content-Type: text/plain; charset=utf-8

Severity: Important 
    CVSS 3.1: 7.7 (high) CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:C/C:H/I:N/A:N

Affected versions:

- Apache Roller 6.1.5

Description:

Improper Restriction of XML External Entity Reference in Apache Roller 6.1.5 allows a user with entry-editing rights on a weblog to cause the server to parse an attacker-influenced trackback response with an XML parser that does not disable external entity resolution, leading to disclosure of files readable by the Roller process. The Trackback control is hidden in the standard UI, but its action remains directly reachable, and no non-default server configuration is required. Users are recommended to upgrade to Apache Roller 6.1.6 or later, which removes the outbound trackback response parser.

Credit:

meifukun (finder)

References:

https://github.com/apache/roller/pull/163
https://roller.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-82376

