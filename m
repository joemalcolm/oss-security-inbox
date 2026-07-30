X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/30/17
Message-ID: <CAMufup7XQaHdpJbpsnx=noKA+VFus8Z_nV7p9LVbhmENUXGMBQ@mail.gmail.com>
Date: Thu, 30 Jul 2026 14:14:47 +0200
From: Juan Pablo Santos Rodríguez <juanpablo@...che.org>
To: dev@...wiki.apache.org, user@...wiki.apache.org,  Apache Security Team <security@...che.org>, announce@...che.org, oss-security@...ts.openwall.com,  Miguel Regala <miguel@...ala.im>
Subject: CVE-2026-28814: Apache JSPWiki: Arbitrary Wiki Markup rendering due to lack of authentication
Content-Type: text/plain; charset=utf-8

Severity
Critical

Vendor
The Apache Software Foundation

Versions Affected
Apache JSPWiki up to 2.12.3

Description
Arbitrary Wiki Markup rendering due to lack of authentication in
Apache JSPWiki allows attacker to obtain sensitive data stored in
JSPWiki variables.

Mitigation
Apache JSPWiki users should upgrade to 2.12.4 or later.

Credit
The issue was discovered by Miguel Regala (Fisher) - Hadrian.io


References
https://jspwiki-wiki.apache.org/Wiki.jsp?page=CVE-2026-28814
https://www.cve.org/CVERecord?id=CVE-2026-28814
