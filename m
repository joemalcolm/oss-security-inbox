X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/08/03/5
Message-ID: <de967f01-c64a-fcc6-231a-d454a1f7dcd5@apache.org>
Date: Wed, 03 Aug 2022 20:46:18 +0000
From: Juan Pablo Santos Rodríguez <juanpablo@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2022-28732: Apache JSPWiki Cross-site scripting vulnerability on WeblogPlugin 
Content-Type: text/plain; charset=utf-8

Severity: moderate

Description:

A carefully crafted request on WeblogPlugin could trigger an XSS vulnerability on Apache JSPWiki, which could allow the attacker to execute javascript in the victim's browser and get some sensitive information about the victim. 

Mitigation:

Apache JSPWiki users should upgrade to 2.11.3 or later. 

Credit:

This issue was discovered by Wang Ran, from JDArmy, @jd.com 

References:

https://jspwiki-wiki.apache.org/Wiki.jsp?page=CVE-2022-28732

