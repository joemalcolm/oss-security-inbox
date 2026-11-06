X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/06/17
Message-ID: <072d7c66-e881-d08c-c57c-df10c353b8dc@apache.org>
Date: Fri, 06 Nov 2026 11:13:05 +0000
From: Benoit Tellier <btellier@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-76171: Apache James: SSRF filter bypass in the JMAP PushSubscription web-push client 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache James 3.9.0 before 3.9.1

Description:

In Apache James server prior version 3.9.1 improper validation in JMAP webPush SSRF validation did lead to the possibility to reach internal addresses.
Users are recommended to upgrade to version 3.9.1 which fixes this issue.

Credit:

n0mi1k (finder)

References:

https://james.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-76171

