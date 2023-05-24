X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/05/25/1
Message-ID: <CAMufup70iLuSiaCbJEajdridr0-v6suxjnCXuZYecbmvGFn2_A@mail.gmail.com>
Date: Wed, 24 May 2023 22:41:12 +0200
From: Juan Pablo Santos Rodríguez <juanpablo@...che.org>
To: announce@...che.org, Apache Security Team <security@...che.org>, dev@...wiki.apache.org,  user@...wiki.apache.org, oss-security@...ts.openwall.com,  "Eugene LIM (GOVTECH)" <Eugene_LIM@...h.gov.sg>,  "Jay Kai SNG from.TP (GOVTECH)" <Jay_Kai_SNG_from.TP@...h.gov.sg>
Subject: CVE-2022-46907: Apache JSPWiki Cross-site scripting on several plugins
Content-Type: text/plain; charset=utf-8

Severity: moderate

Description:
A carefully crafted request on several JSPWiki plugins could trigger
an XSS vulnerability on Apache JSPWiki, which could allow the attacker
to execute javascript in the victim's browser and get some sensitive
information about the victim.

Mitigation:
Apache JSPWiki users should upgrade to 2.12.0 or later.

Credit:
This issue was discovered by Eugene Lim and Sng Jay Kai from
Government Technology Agency of Singapore

References:
https://jspwiki-wiki.apache.org/Wiki.jsp?page=CVE-2022-46907
