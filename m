X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/23/3
Message-ID: <fd2b41f7-0b2a-2916-f948-fdde7d39145e@apache.org>
Date: Sun, 22 Nov 2026 21:09:23 +0000
From: Steve Hay <stevehay@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-116005: Apache Perl: Fixed-size stack buffer overflow in $r->set_basic_credentials() 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Perl 1.99_01 through 2.0.13

Description:

Fixed-size stack buffer overflow vulnerability in Apache Perl.



This issue affects Apache Perl: from 1.99_01 through 2.0.13.



Users are recommended to upgrade to version 2.0.14, which fixes the issue.

Credit:

Satoru Yano (finder)

References:

https://perl.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-116005

