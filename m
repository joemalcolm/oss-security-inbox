X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/20/2
Message-ID: <187282f8-66fd-a6d4-e267-ed8091ec1192@apache.org>
Date: Tue, 20 Oct 2026 09:54:56 +0000
From: Arnout Engelen <engelen@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-108086: Apache Cocoon: XEE could lead to SSRF and information disclosure 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Cocoon: all versions

Description:

** UNSUPPORTED WHEN ASSIGNED ** Improper restriction of recursive entity references in DTDs ('XML entity expansion') vulnerability in Apache Cocoon.



This issue affects Apache Cocoon: all versions. XEE in the fp: form processor could lead to SSRF, including exposing files from the server to an untrusted external system



As this project is retired, we do not plan to release a version that fixes this issue. Users are recommended to find an alternative or restrict access to the instance to trusted users.



NOTE: This vulnerability only affects products that are no longer supported by the maintainer.

Credit:

Tiago Abreu (finder)

References:

https://attic.apache.org/projects/cocoon.html
https://www.cve.org/CVERecord?id=CVE-2026-108086

