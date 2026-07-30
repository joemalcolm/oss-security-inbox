X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/30/16
Message-ID: <CAMufup4V7eVRGezMLOZeU+2+jrYEzg1f2Bp_CTO+BQzpt4CSEA@mail.gmail.com>
Date: Thu, 30 Jul 2026 14:14:38 +0200
From: Juan Pablo Santos Rodríguez <juanpablo@...che.org>
To: dev@...wiki.apache.org, user@...wiki.apache.org,  Apache Security Team <security@...che.org>, announce@...che.org, oss-security@...ts.openwall.com
Subject: CVE-2026-28813: Apache JSPWiki: JSON hijacking
Content-Type: text/plain; charset=utf-8

Severity
Moderate

Vendor
The Apache Software Foundation

Versions Affected
Apache JSPWiki up to 2.12.3

Description
Apache JSPWiki is vulnerable to JSON Hijacking, which leads to csrf
vulnerabilities.

Mitigation
Apache JSPWiki users should upgrade to 2.12.4 or later.

Credit
The issue was discovered by Janne Jalkannen from Apache JSPWiki


References
https://jspwiki-wiki.apache.org/Wiki.jsp?page=CVE-2026-28813
https://www.cve.org/CVERecord?id=CVE-2026-28813
