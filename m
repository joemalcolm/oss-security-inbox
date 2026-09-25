X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/25/8
Message-ID: <57032a90-19ae-1334-f979-2379dfa90091@apache.org>
Date: Fri, 25 Sep 2026 20:12:25 +0000
From: "David M. Johnson" <snoopdave@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-82375: Apache Roller: Server-side request forgery via entry trackback and enclosure URLs 
Content-Type: text/plain; charset=utf-8

Severity: Moderate 
    CVSS 3.1: 7.4 (high) CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:C/C:L/I:L/A:L

Affected versions:

- Apache Roller 6.1.5

Description:

Server-Side Request Forgery (SSRF) in Apache Roller 6.1.5 allows an authenticated user with entry-editing rights on a weblog to cause outbound HTTP requests to attacker-chosen destinations through legacy outbound Trackback and entry enclosure handling. The Trackback control is hidden in the standard UI, but its action remains directly reachable; the enclosure path is relevant only when an author supplies an enclosure URL. No non-default server configuration is required, and the default empty Trackback allow-list permits all destinations. Requests can reach loopback and private-network addresses, while enclosure handling exposes response status, content type, and length. Users are recommended to upgrade to Apache Roller 6.1.6 or later, which removes the outbound trackback action and stops dereferencing enclosure URLs.

Credit:

meifukun (finder)
n0mi1k (finder)

References:

https://github.com/apache/roller/pull/175
https://github.com/apache/roller/pull/163
https://roller.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-82375

