X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2018/11/06/2
Message-ID: <cf9fdd28-aba5-f586-01c0-d37beb50008a@apache.org>
Date: Tue, 6 Nov 2018 10:03:50 +0100
From: Francesco Chicchiriccò <ilgrosso@...che.org>
To: dev@...cope.apache.org, "user@...cope.apache.org" <user@...cope.apache.org>, announce@...che.org, Joan Bono <joanet17@...il.com>, oss-security@...ts.openwall.com, "security@...che.org" <security@...che.org>
Subject: [SECURITY] CVE-2018-17184 Apache Syncope
Content-Type: text/plain; charset=utf-8

CVE-2018-17184: Stored XSS

Description:
A malicious user with enough administration entitlements can inject
html-like elements containing JavaScript statements into Connector
names, Report names, AnyTypeClass keys and Policy descriptions.
When another user with enough administration entitlements edits one of
the Entities above via Admin Console, the injected JavaScript code is
executed.

Severity: Important

Vendor: The Apache Software Foundation

Affects:
Releases prior to 2.1.2
Releases prior to 2.0.11

Solution:
2.0.X users should upgrade to 2.0.11
2.1.X users should upgrade to 2.1.2

Credit:
This issue was discovered by ﻿Kevin Borras Soler.

References:
https://syncope.apache.org/security



Download attachment "signature.asc" of type "application/pgp-signature" (489 bytes)
