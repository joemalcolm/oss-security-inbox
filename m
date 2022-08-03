X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/08/03/6
Message-ID: <00fa1dc6-2c61-66b7-1611-8158642e233b@apache.org>
Date: Wed, 03 Aug 2022 20:46:24 +0000
From: Juan Pablo Santos Rodríguez <juanpablo@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2022-34158: Apache JSPWiki: User Group Privilege Escalation 
Content-Type: text/plain; charset=utf-8

Severity: critical

Description:

A carefully crafted invocation on the Image plugin could trigger an CSRF vulnerability on Apache JSPWiki, which could allow a group privilege escalation of the attacker's account. Further examination of this issue established that it could also be used to modify the email associated with the attacked account, and then a reset password request from the login page. 

Mitigation:

Apache JSPWiki users should upgrade to 2.11.3 or later. 

Credit:

This issue was discovered by Huiseong Seo (t0rchwo0d), <awdr1624AT gmail DOT com>

References:

https://jspwiki-wiki.apache.org/Wiki.jsp?page=CVE-2022-34158

