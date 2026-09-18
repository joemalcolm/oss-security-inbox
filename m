X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/18/10
Message-ID: <a545f376-6c34-1cda-a5e7-7267367edb82@apache.org>
Date: Fri, 18 Sep 2026 15:28:04 +0000
From: Colm O hEigeartaigh <coheigea@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-91863: Apache Neethi: Uncontrolled recursion while parsing crafted WS-Policy documents allows denial of service 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Neethi (org.apache.neethi:neethi) before 3.2.4

Description:

A specially crafted WS-Policy document with deeply nested policy elements can bypass Neethi's nesting-depth limit and exhaust the thread stack, crashing the parser (denial of service).
Users are recommended to upgrade to version 3.2.4, which fixes this issue.

Credit:

This issue was found using Claude agents to study the security of open-source projects (finder)

References:

https://ws.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-91863

