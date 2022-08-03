X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/08/03/2
Message-ID: <26cf4e70-ac27-10de-dde6-2358b99304a8@apache.org>
Date: Wed, 03 Aug 2022 20:45:35 +0000
From: Juan Pablo Santos Rodríguez <juanpablo@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2022-27166: Apache JSPWiki: XSS vulnerability on XHRHtml2Markup.jsp in JSPWiki 2.11.2 
Content-Type: text/plain; charset=utf-8

Severity: moderate

Description:

A carefully crafted request on XHRHtml2Markup.jsp could trigger an XSS vulnerability on Apache JSPWiki, which could allow the attacker to execute javascript in the victim's browser and get some sensitive information about the victim

Credit:

Issue was discovered by Salt, <saltnekoko AT gmail DOT com>

References:

https://jspwiki-wiki.apache.org/Wiki.jsp?page=CVE-2022-28732

