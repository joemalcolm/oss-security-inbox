X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/07/28
Message-ID: <0b021261-b726-082a-2644-0113c141de05@apache.org>
Date: Wed, 07 Oct 2026 15:08:27 +0000
From: Julian Reschke <reschke@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-92415: Apache Jackrabbit: DavEx client runs Class.forName + (String)-constructor on server-controlled error bodies 
Content-Type: text/plain; charset=utf-8

Severity: 
    CVSS 4.0: 6.9 (medium) CVSS:4.0/AV:N/AC:L/AT:N/PR:N/UI:N/VC:N/VI:L/VA:N/SC:N/SI:N/SA:N/S:N

Affected versions:

- Apache Jackrabbit 2.23.0 through 2.23.5
- Apache Jackrabbit 2.22.0 through 2.22.4
- Apache Jackrabbit 2.20.0 through 2.20.17

Description:

— Use of Externally-Controlled Input to Select Classes or Code vulnerability in Apache Jackrabbit's WebDAV/Davex client.

A malicious WebDAV/DavEx server, or an attacker able to intercept the connection, can cause the client to instantiate arbitrary classes from its classpath, which can lead to arbitrary file creation or truncation.

Only applications that use jackrabbit-spi2dav (directly or through jackrabbit-jcr2dav) to connect to a remote repository are affected. Jackrabbit servers are not affected.

Category: unsafe reflection on wire data (HIGH).



This issue affects Apache Jackrabbit: from 2.23.0 through 2.23.5, from 2.22.0 through 2.22.4, from 2.20.0 through 2.20.17.



Users are recommended to upgrade to versions 2.23.6, 2.22.5, or 2.20.18 which fix the issue.

Credit:

The Apache Software Foundation (finder)
Julian Reschke (analyst)
Claude Security (tool)

References:

https://jackrabbit.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-92415

