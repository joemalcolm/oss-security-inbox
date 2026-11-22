X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/23/5
Message-ID: <f50a5fe8-389a-3548-187f-ea74e83dffc6@apache.org>
Date: Sun, 22 Nov 2026 21:09:36 +0000
From: Steve Hay <stevehay@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-116043: Apache Perl: NULL-pointer dereference (worker crash) in per-request $/ save 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Perl 1.99_01 through 2.0.13

Description:

NULL pointer dereference, Out-of-bounds read vulnerability in Apache Perl.



This issue affects Apache Perl: from 1.99_01 through 2.0.13.



Also fixes an out-of-bounds read in per-request $/ save/restore for which CVE-2026-116021 (now rejected) had previously been assigned.



Users are recommended to upgrade to version 2.0.14, which fixes the issue.

Credit:

Satoru Yano (finder)

References:

https://perl.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-116043

