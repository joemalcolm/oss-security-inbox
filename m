X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/01/07/1
Message-ID: <6bdc8ff7-0627-2515-7653-3b60ea38538b@apache.org>
Date: Sat, 07 Jan 2023 15:52:42 +0000
From: Dan Klco <dklco@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2022-46769: Apache Sling App CMS: XSS in CMS Site Group Detail 
Content-Type: text/plain; charset=utf-8

Severity: low

Description:

An improper neutralization of input during web page generation ('Cross-site Scripting') [CWE-79] vulnerability in Sling App CMS version 1.1.2 and prior may allow an authenticated remote attacker to perform a reflected cross-site scripting (XSS) attack in the site group feature.

Upgrade to Apache Sling App CMS >= 1.1.4

Credit:

Apache Sling would like to thank Sam Bagheri for reporting this issue (finder)

References:

https://sling.apache.org/
https://www.cve.org/CVERecord?id=CVE-2022-46769

