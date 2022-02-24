X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/02/25/1
Message-ID: <CAMufup4RPMw8n=oq0apLMBStng9gEm+3yVs6P15-fA394WM3tQ@mail.gmail.com>
Date: Fri, 25 Feb 2022 00:18:19 +0100
From: Juan Pablo Santos Rodríguez <juanpablo@...che.org>
To: announce@...che.org, user@...wiki.apache.org, dev@...wiki.apache.org,  Paulos Yibelo <habte.yibelo@...il.com>, Apache Security Team <security@...che.org>,  oss-security@...ts.openwall.com
Subject: [CVE-2022-24947] Apache JSPWiki CSRF Account Takeover
Content-Type: text/plain; charset=utf-8

Severity
Critical

Vendor
The Apache Software Foundation

Versions Affected
Apache JSPWiki up to 2.11.1

Description
Apache JSPWiki user preferences form is vulnerable to CSRF attacks,
which can lead to account takeover.

Mitigation
Apache JSPWiki users should upgrade to 2.11.2 or later. Installations
>= 2.7.0 can also enable user management workflows' manual approval to
mitigate the issue.

Credit
This issue was discovered initially by Cristian Borlovan from Ounce
Labs Security (ref. JSPWIKI-79), and later on and independently from
this by Paulos Yibelo, from Octagon Networks.
