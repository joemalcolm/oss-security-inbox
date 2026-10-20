X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/20/28
Message-ID: <cc2e6dfe-6763-4eda-9a02-fdb7fa08c5a4@apache.org>
Date: Tue, 20 Oct 2026 14:54:48 +0100
From: Mark Thomas <markt@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-103119: Apache Tomcat: AJP response mix-up
Content-Type: text/plain; charset=utf-8

Severity: important

Affected versions:

- Apache Tomcat 11.0.0-M25 through 11.0.26

Description:

Buffer under-read vulnerability in Apache Tomcat meant that a large 
non-blocking write could result in the response body being split between 
the current request and the next request received on that connection 
leading most likely to failure of the second request and possibly 
leakage of data from the first response to the second.



This issue affects Apache Tomcat: from 11.0.0-M25 through 11.0.26.



Users are recommended to upgrade to version 11.0.27, which fixes the issue.

Credit:

Tuomo Hänninen (finder)

References:

https://lists.apache.org/thread.html/sk2cg4k077fwcqbm6tqz2n700nq06h80
https://tomcat.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-103119
