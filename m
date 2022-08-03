X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/08/03/3
Message-ID: <cb402038-6b4f-e640-467d-652b8ca7cc26@apache.org>
Date: Wed, 03 Aug 2022 20:45:51 +0000
From: Juan Pablo Santos Rodríguez <juanpablo@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2022-28730: Apache JSPWiki Cross-site scripting vulnerability on AJAXPreview.jsp 
Content-Type: text/plain; charset=utf-8

Severity: moderate

Description:

A carefully crafted request on AJAXPreview.jsp could trigger an XSS vulnerability on Apache JSPWiki, which could allow the attacker to execute javascript in the victim's browser and get some sensitive information about the victim.

This vulnerability leverages CVE-2021-40369, where the Denounce plugin dangerously renders user-supplied URLs. Upon re-testing CVE-2021-40369, it appears that the patch was incomplete as it was still possible to insert malicious input via the Denounce plugin. 

Mitigation:

Apache JSPWiki users should upgrade to 2.11.3 or later. 

Credit:

This issue was discovered by Poh Jia Hao, from Star Labs <info AT starlabs DOT sg>

References:

https://jspwiki-wiki.apache.org/Wiki.jsp?page=CVE-2022-28732

