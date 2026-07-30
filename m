X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/30/15
Message-ID: <CAMufup4ejEg6X618p9MWAiNq8VPtQ+h=o4xiWiuCkF__0GeHHQ@mail.gmail.com>
Date: Thu, 30 Jul 2026 14:14:22 +0200
From: Juan Pablo Santos Rodríguez <juanpablo@...che.org>
To: dev@...wiki.apache.org, user@...wiki.apache.org,  Apache Security Team <security@...che.org>, announce@...che.org, oss-security@...ts.openwall.com
Subject: CVE-2026-28812: Apache JSPWiki: UserManager does not sanity-check user database at startup
Content-Type: text/plain; charset=utf-8

Severity
Moderate

Vendor
The Apache Software Foundation

Versions Affected
Apache JSPWiki up to 2.12.3

Description
UserManager lack of checks allows impersonation in Apache JSPWiki up
to 2.12.3 which may allow attackers to escalate privileges.

Mitigation
Apache JSPWiki users should upgrade to 2.12.4 or later.

Credit
The issue was discovered by Florian Holeczek from Apache JSPWiki


References
https://jspwiki-wiki.apache.org/Wiki.jsp?page=CVE-2026-28812
https://www.cve.org/CVERecord?id=CVE-2026-28812
