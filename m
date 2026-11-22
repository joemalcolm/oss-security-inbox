X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/23/6
Message-ID: <655a72a5-05e6-acf3-f224-cc87302516c5@apache.org>
Date: Sun, 22 Nov 2026 21:09:45 +0000
From: Steve Hay <stevehay@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-116772: Apache Perl: OOB read ($@ read with raw SvPVX() when $@ is an object) 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Perl 1.99_07 through 2.0.13

Description:

OOB read vulnerability in Apache Perl.



This issue affects Apache Perl: from 1.99_07 through 2.0.13.



Users are recommended to upgrade to version 2.0.14, which fixes the issue.

Credit:

Satoru Yano (finder)

References:

https://perl.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-116772

