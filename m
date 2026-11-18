X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/18/8
Message-ID: <b60e37e4-d45a-4e43-de46-e9734da486e6@apache.org>
Date: Wed, 18 Nov 2026 12:15:29 +0000
From: Martonka Zoltan <zmartonka@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-132129: Apache Kudu: Deprecated range predicate OOB read. 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Kudu before 1.17.2
- Apache Kudu 1.18.0 before 1.18.2

Description:

Passing a different column type while using deprecated range predicates, allow OOB read of any memory address. Users should update to 1.17.2 or 1.18.2

Credit:

mythos security scan. (finder)

References:

https://kudu.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-132129

