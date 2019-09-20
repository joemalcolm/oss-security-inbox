X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2019/09/20/2
Message-ID: <CAMufup7Dfr-=DBEKOHc=Fv4L2QhRV6JTH4xrZD21Z54sA=UpYA@mail.gmail.com>
Date: Fri, 20 Sep 2019 15:28:02 +0200
From: Juan Pablo Santos Rodríguez <juanpablo@...che.org>
To: oss-security@...ts.openwall.com
Subject: [CVE-2019-10087] Apache JSPWiki Cross-site scripting vulnerability in Page Revision History
Content-Type: text/plain; charset=utf-8

 Severity
Medium

Vendor
The Apache Software Foundation

Versions Affected
Apache JSPWiki up to 2.11.0.M4

Description
A carefully crafted plugin link invocation could trigger an XSS
vulnerability on Apache JSPWiki, related to the Page Revision History,
which could allow the attacker to execute javascript in the victim's
browser and get some sensitive information about the victim.

Mitigation
Apache JSPWiki users should upgrade to 2.11.0.M5 or later.

Credit
This issue was discovered by Jegatheesh A, from ZOHO-CRM Security team.

ref: https://jspwiki-wiki.apache.org/Wiki.jsp?page=CVE-2019-10087

