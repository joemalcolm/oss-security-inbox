X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/09/5
Message-ID: <54fc3b36-4e95-10c8-26e3-37f57dfcb600@apache.org>
Date: Tue, 09 Jun 2026 05:15:39 +0000
From: Enxin Xie <linkinstar@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-33582: Apache Answer: Uploading specially crafted TIFF files causes an Out-of-Memory error 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Answer through 2.0.0

Description:

Unrestricted Upload of File with Dangerous Type vulnerability in Apache Answer.

This issue affects Apache Answer: through 2.0.0.

A crafted TIFF image could trigger excessive memory allocation during image decoding, allowing an authenticated user to cause the server process to crash.
Users are recommended to upgrade to version 2.0.1, which fixes the issue.

Credit:

Andy Gill, ZephrSec Ltd (reporter)

References:

https://answer.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-33582

