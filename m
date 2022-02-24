X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/02/25/2
Message-ID: <CAMufup7EzAAJ6QMk7C7mPutijDzFN5sG9xu1B4d2TSWF1h0eyQ@mail.gmail.com>
Date: Fri, 25 Feb 2022 00:20:02 +0100
From: Juan Pablo Santos Rodríguez <juanpablo@...che.org>
To: announce@...che.org, dev@...wiki.apache.org, user@...wiki.apache.org,  Apache Security Team <security@...che.org>, Paulos Yibelo <habte.yibelo@...il.com>,  oss-security@...ts.openwall.com
Subject: [CVE-2022-24948] Apache JSPWiki Cross-site scripting vulnerability on User Preferences screen
Content-Type: text/plain; charset=utf-8

Severity
Medium

Vendor
The Apache Software Foundation

Versions Affected
Apache JSPWiki up to 2.11.1

Description
A carefully crafted user preferences for submission could trigger an
XSS vulnerability on Apache JSPWiki, related to the user preferences
screen, which could allow the attacker to execute javascript in the
victim's browser and get some sensitive information about the victim.

Mitigation
Apache JSPWiki users should upgrade to 2.11.2 or later.

Credit
This issue was discovered by Paulos Yibelo, from Octagon Networks.
