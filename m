X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/24/8
Message-ID: <89c27e3c-f459-52c9-8e42-3498df5ea197@apache.org>
Date: Fri, 24 Jul 2026 10:51:10 +0000
From: Colm O hEigeartaigh <coheigea@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-66142: Apache Neethi: Uncontrolled recursion in policy processing 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Neethi (org.apache.neethi:neethi) before 3.2.3

Description:

Apache Neethi is vulnerable to uncontrolled recursion when parsing policies that lack policy Ids or with deeply nested structures, which may lead to a denial of service attack when parsing policies due to runtime memory exhaustion. Users are recommended to upgrade to version 3.2.3, which fixes this issue.

Credit:

Reported by LTSHFWJT (finder)

References:

https://ws.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-66142

