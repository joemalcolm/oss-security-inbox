X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/30/18
Message-ID: <CAMufup5aPhEb19OJ=x9boWS+X8hxPVZrBSWsGCg_msGvNch+vQ@mail.gmail.com>
Date: Thu, 30 Jul 2026 14:14:53 +0200
From: Juan Pablo Santos Rodríguez <juanpablo@...che.org>
To: dev@...wiki.apache.org, user@...wiki.apache.org,  Apache Security Team <security@...che.org>, announce@...che.org, oss-security@...ts.openwall.com,  Justin Ng <fishp0rridg3@...mail.com>
Subject: CVE-2026-48910: Apache JSPWiki: Markdown parser allows XSS injection in Markdown error processing
Content-Type: text/plain; charset=utf-8

Severity
Moderate

Vendor
The Apache Software Foundation

Versions Affected
Apache JSPWiki up to 2.12.3

Description
A carefully crafted editing request could trigger an XSS vulnerability
on Apache JSPWiki when parsing errors on the markdown renderer, which
could allow the attacker to execute javascript in the victim's browser
and get some sensitive information about the victim.

Mitigation
Apache JSPWiki users should upgrade to 2.12.4 or later.

Credit
The issue was discovered by Justin Ng from Cyver Security Agency of
Singapore / Inland Reveue Authority of Singapore

References
https://jspwiki-wiki.apache.org/Wiki.jsp?page=CVE-2026-48910
https://www.cve.org/CVERecord?id=CVE-2026-48910
