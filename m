X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/06/19
Message-ID: <216f0722-06e5-010e-a42c-6889155da8de@apache.org>
Date: Fri, 06 Nov 2026 11:14:23 +0000
From: Benoit Tellier <btellier@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-85111: Apache James: Denial of service upon MIME parsing 
Content-Type: text/plain; charset=utf-8

Severity: 
    CVSS 4.0: 8.7 (high) CVSS:4.0/AV:N/AC:L/AT:N/PR:N/UI:N/VC:N/VI:N/VA:H/SC:N/SI:N/SA:N

Affected versions:

- Apache James before 3.9.1

Description:

Allocation of Resources Without Limits or Throttling in Apache James Mime4J library prior version 0.8.15 allows Denial of Service upon parsing Mime messages.
Users are recommended to upgrade to Apache James server 3.9.1 that relies on fixed MIME4J 0.8.15 which addresses the issue.

See CVE-2026-85108 in Apache James MIME4J library.

Credit:

Mike Read (finder)

References:

https://james.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-85111

