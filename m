X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2019/09/20/6
Message-ID: <CAMufup6OGHYUE=ZuHys-9S0Lg+De7peWXm7dvAodCkE3EYc-wg@mail.gmail.com>
Date: Fri, 20 Sep 2019 15:34:01 +0200
From: Juan Pablo Santos Rodríguez <juanpablo@...che.org>
To: oss-security@...ts.openwall.com
Subject: [CVE-2019-12407] Apache JSPWiki Cross-site scripting vulnerability related to the remember parameter
Content-Type: text/plain; charset=utf-8

 Severity
Medium

Vendor
The Apache Software Foundation

Versions Affected
Apache JSPWiki up to 2.11.0.M4

Description
A carefully crafted plugin link invocation could trigger an XSS
vulnerability on Apache JSPWiki, related to the remember parameter on some
of the JSPs, which could allow the attacker to execute javascript in the
victim's browser and get some sensitive information about the victim.

Mitigation
Apache JSPWiki users should upgrade to 2.11.0.M5 or later.

Credit
This issue was discovered by ADLab of VenusTech.

ref: https://jspwiki-wiki.apache.org/Wiki.jsp?page=CVE-2019-12407

