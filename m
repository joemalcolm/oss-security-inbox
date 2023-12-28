X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/12/28/5
Message-ID: <ZY3jHLo_uf0pDj9q@nuvolo>
Date: Thu, 28 Dec 2023 22:05:32 +0100
From: Arrigo Marchiori <ardovm@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2022-43680: Apache OpenOffice: "Use after free" fixed in libexpat
Content-Type: text/plain; charset=utf-8

Severity: Moderate

Affected versions:

- Apache OpenOffice through 4.1.15

Description:

In libexpat through 2.4.9, there is a use-after free caused by
overeager destruction of a shared DTD in
XML_ExternalEntityParserCreate in out-of-memory situations.

References:
https://openoffice.apache.org/
https://www.cve.org/CVERecord?id=CVE-2022-43680
-- 
Arrigo
