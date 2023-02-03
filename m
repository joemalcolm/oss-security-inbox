X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/02/04/1
Message-ID: <b96f4001-bed6-9594-c844-1766b8c8cefc@apache.org>
Date: Fri, 03 Feb 2023 23:38:07 +0000
From: Dan Klco <dklco@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2023-22849: Apache Sling App CMS: XSS in CMS Reference / UI Components 
Content-Type: text/plain; charset=utf-8

Severity: low

Description:

An improper neutralization of input during web page generation ('Cross-site Scripting') [CWE-79] vulnerability in Sling App CMS version 1.1.4 and prior may allow an authenticated remote attacker to perform a reflected cross-site scripting (XSS) attack in multiple features.

Upgrade to Apache Sling App CMS >= 1.1.6

Credit:

Apache Sling would like to thank Eugene Lim and Sng Jay Kai from GOVTECH for reporting this issue (finder)

References:

https://sling.apache.org/news.html
https://sling.apache.org/
https://www.cve.org/CVERecord?id=CVE-2023-22849

