X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/05/5
Message-ID: <183222c7-18fe-61f1-e4a7-9487fbd38a7a@apache.org>
Date: Wed, 05 Aug 2026 06:39:40 +0000
From: Piotr Karwasz <pkarwasz@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-61484: Apache Lucy: LucyX::Remote::SearchServer unauthenticated remote Storable::thaw -> RCE/DoS 
Content-Type: text/plain; charset=utf-8

Severity: critical 

Affected versions:

- Apache Lucy (Lucy): all versions

Description:

** UNSUPPORTED WHEN ASSIGNED ** Deserialization of Untrusted Data vulnerability in Apache Lucy.

This issue affects Apache Lucy: all versions.

As this project is retired, we do not plan to release a version that fixes this issue. Users are recommended to find an alternative or restrict access to the instance to trusted users.

NOTE: This vulnerability only affects products that are no longer supported by the maintainer.

References:

https://attic.apache.org/projects/lucy.html
https://www.cve.org/CVERecord?id=CVE-2026-61484

