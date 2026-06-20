X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/20/1
Message-ID: <f005da27-0244-d325-5f70-1750277e8df4@apache.org>
Date: Sat, 20 Jun 2026 05:25:01 +0000
From: Madhan Neethiraj <madhan@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2025-62198: Apache Atlas: Stored XSS in Create Entity page 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Atlas through 2.4.0

Description:

An authenticated user can perform XSS.

This issue affects Apache Atlas versions 2.4.0 and earlier.

Users are recommended to upgrade to version 2.5.0, which fixes the issue.

Credit:

Grzegorz Misiun (finder)

References:

https://atlas.apache.org/
https://www.cve.org/CVERecord?id=CVE-2025-62198

