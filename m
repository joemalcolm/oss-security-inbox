X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/24/10
Message-ID: <55a0fb68-5a91-a5ca-c208-66a8696def29@apache.org>
Date: Fri, 24 Jul 2026 11:03:49 +0000
From: Colm O hEigeartaigh <coheigea@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-66144: Apache Neethi: Remote PolicyReference fetch lacks resource bounds 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache Neethi (org.apache.neethi:neethi) before 3.2.3

Description:

Although remote policy references are not retrieved during policy normalization, if they are manually retrieved via the API it can cause a denial of service attack if a huge policy is retrieved. Users are recommended to upgrade to version 3.2.3, which fixes this issue by imposing a default maximum size on data read from remote policy references.

Credit:

Reported by LTSHFWJT (finder)

References:

https://ws.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-66144

