X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/23/18
Message-ID: <d8e2b0dc-84b2-9d23-c7cb-dc2e57420e7e@apache.org>
Date: Wed, 23 Sep 2026 08:25:54 +0000
From: Joerg Hoh <joerghoh@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-73192: Apache Sling XSS: XSS possible through XSSAPI.getValidHref() 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache Sling XSS before 2.4.12

Description:

An improper neutralization of input during web page generation ('Cross-site Scripting') [CWE-79] vulnerability when using the XSSAPI.getValidHref() in Apache Sling XSS version 2.4.10 and prior may allow an attacker to perform a reflected cross-site scripting (XSS) attack in every feature using this method. In order to successfully attack an application, the attacker needs to be able to submit a value which is not correctly sanitized by that library.

Upgrade to Apache Sling XSS >= 2.4.12

Credit:

Apache Sling would like to thank github user Vectrain51 and n0mi1k for reporting this issue (finder)

References:

https://sling.apache.org/news.html
https://sling.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-73192

