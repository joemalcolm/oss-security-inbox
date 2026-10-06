X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/07/12
Message-ID: <0a0cd424-a10d-a743-df81-475c9f3fdd6a@apache.org>
Date: Tue, 06 Oct 2026 19:38:04 +0000
From: "Gary D. Gregory" <ggregory@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-94114: Apache Commons BCEL: Nested Code/Record attributes drive unbounded parse-time recursion in ClassParser 
Content-Type: text/plain; charset=utf-8

Severity: important 
    CVSS 3.1: 5.9 (medium) CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:H/A:N
    CVSS 4.0: 8.2 (high) CVSS:4.0/AV:N/AC:L/AT:P/PR:N/UI:N/VC:N/VI:H/VA:N/SC:N/SI:N/SA:N

Affected versions:

- Apache Commons BCEL before 6.13.0
- Apache Commons BCEL before 14890bf2b9014df25f9b4de86f29b5e917e5656b

Description:

Symbolic name not mapping to correct object vulnerability in Apache Commons.



BCEL caches attacker-controlled classes under their self-declared names without validating the requested name, allowing subsequent lookups and name-keyed verification results to refer to a different class.



This issue affects Apache Commons: before 6.13.0.



Users are recommended to upgrade to version 6.13.0, which fixes the issue.

Credit:

The Apache Software Foundation (finder)
Claude Security (tool)

References:

https://github.com/apache/commons-bcel/commit/14890bf2b9014df25f9b4de86f29b5e917e5656b.patch
https://commons.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-94114

