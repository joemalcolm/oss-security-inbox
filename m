X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/23/4
Message-ID: <fb2ca295-a75b-74e8-d35e-e65440f771e1@apache.org>
Date: Sun, 22 Nov 2026 21:09:29 +0000
From: Steve Hay <stevehay@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-116032: Apache Perl: Stack buffer overflow in Apache2::Module::loaded() 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Perl 1.99_01 through 2.0.13

Description:

Stack buffer overflow vulnerability in Apache Perl.



This issue affects Apache Perl: from 1.99_01 through 2.0.13.



Users are recommended to upgrade to version 2.0.14, which fixes the issue.

Credit:

Satoru Yano (finder)

References:

https://perl.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-116032

