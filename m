X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/23/7
Message-ID: <CADED=K7WEfruYrTXxScCw4TLzMXNx1RBYCGG=ruCtimoU=6pbA@mail.gmail.com>
Date: Sun, 22 Nov 2026 21:14:37 +0000
From: Steve Hay <stevehay@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-116799: Apache Perl: OOB read in $r->write($buf, $len, $offset)
Content-Type: text/plain; charset=utf-8

Severity: important

Affected versions:

- Apache Perl 1.99_01 through 2.0.13

Description:

OOB read vulnerability in Apache Perl.



This issue affects Apache Perl: from 1.99_01 through 2.0.13.



Note: The over-read data can be returned to the client in the response.



Users are recommended to upgrade to version 2.0.14, which fixes the issue.

Credit:

Satoru Yano (finder)

References:

https://perl.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-116799
