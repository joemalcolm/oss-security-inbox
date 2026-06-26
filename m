X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/26/7
Message-ID: <54a50093-4112-c775-554d-b743b7fb50fd@apache.org>
Date: Fri, 26 Jun 2026 10:34:16 +0000
From: Colm O hEigeartaigh <coheigea@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-57914: Apache Kerby: StackOverflow on parsing deeply nested ASN1 structures 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Kerby (org.apache.kerby:kerby-asn1) before 2.1.2

Description:

By sending a deeply nested ASN1 structure to a Apache Kerby client or service, it's possible to trigger a StackOverFlow Exception which can lead to denial of service issues. Users are recommended to upgrade to version 2.1.2, which fixes this issue.

References:

https://directory.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-57914

