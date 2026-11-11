X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/11/18
Message-ID: <f9833bd4-1828-0079-55a2-4caae9e43bd2@apache.org>
Date: Wed, 11 Nov 2026 08:20:30 +0000
From: Simon Steiner <ssteiner@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-49236: Apache XML Graphics Batik: SVG color-profile xml:base bypasses Batik external resource same-origin checks 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache XML Graphics Batik 1.19

Description:

Server-Side Request Forgery (SSRF) vulnerability in Apache XML Graphics Batik.



This issue affects Apache XML Graphics Batik: 1.19.



Users are recommended to upgrade to version 1.20, which fixes the issue.

This issue is being tracked as BATIK-1394 

References:

https://xmlgraphics.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-49236
https://issues.apache.org/jira/browse/BATIK-1394

