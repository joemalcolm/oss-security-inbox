X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/30/14
Message-ID: <bc410576-c16c-89cd-5349-3df7debf9f94@apache.org>
Date: Wed, 30 Sep 2026 10:38:57 +0000
From: Colm O hEigeartaigh <coheigea@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-95616: Apache WSS4J: Unauthenticated denial of service via integer overflow in DER parsing of X.509 certificate extensions 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache WSS4J 4.0.0 before 4.0.2
- Apache WSS4J 3.0.0 before 3.0.6
- Apache WSS4J before 2.4.4

Description:

An integer overflow in WSS4J's DER bounds check lets an oversized allocation pass validation. An unauthenticated attacker can send a SOAP message carrying an X.509 certificate whose SubjectKeyIdentifier extension declares a length of 0x7FFFFFFF; WSS4J decodes this while resolving the signature's key reference, before the message is authenticated, so an eleven-byte extension triggers a 2 GB allocation. Repeated requests exhaust server memory.
Users are recommended to upgrade to versions 4.0.2 or 3.0.6 or 2.4.4, which fix this issue.

References:

https://ws.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-95616

