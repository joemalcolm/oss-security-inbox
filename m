X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/23/31
Message-ID: <5a85ee00-d07b-0159-5ffb-a3deedb870b0@apache.org>
Date: Mon, 23 Nov 2026 22:02:11 +0000
From: Andy Seaborne <andy@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-86154: Apache Jena: Nested structures can lead to stack overflow in Turtle language syntax parsers 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Jena through 6.2.0

Description:

A vulnerability in Apache Jena allows arbitrary stack usage when parsing RDF Turtle-family languages.



This issue affects Apache Jena: through 6.2.0.



Users are recommended to upgrade to version 6.3.0, which fixes the issue.

Credit:

n0milk (finder)

References:

https://jena.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-86154

