X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/03/31
Message-ID: <377512d1-d7dc-af4c-566f-091d053c82eb@apache.org>
Date: Tue, 03 Nov 2026 20:38:31 +0000
From: Arrigo Marchiori <ardovm@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-90632: Apache OpenOffice: Local file inclusion via GStreamer plugin 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache OpenOffice through 4.1.16

Description:

Apache OpenOffice documents can include multimedia content (audio, video, etc.)

A crafted document could exploit the GStreamer multimedia component of Apache OpenOffice version through 4.1.16 to load the contents of any local file, and include them when the document is saved or exported, for example as PDF.

Users are recommended to upgrade to version 4.1.17, which fixes this issue.

Credit:

Edoardo Geraci and Thomas Rinsma of Codean Labs (finder)

References:

https://openoffice.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-90632

