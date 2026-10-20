X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/20/4
Message-ID: <8f6aa7cd-34d5-ec08-de6d-239a2238fec8@apache.org>
Date: Tue, 20 Oct 2026 09:55:10 +0000
From: Arnout Engelen <engelen@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-108088: Apache Cocoon: Cross-user cache poisoning 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache Cocoon: all versions

Description:

** UNSUPPORTED WHEN ASSIGNED ** Use of cache containing sensitive information vulnerability in Apache Cocoon. When using the cache on a multi-user application, cached values for one user could be used when serving content for other users.



This issue affects Apache Cocoon: all versions.



As this project is retired, we do not plan to release a version that fixes this issue. Users are recommended to find an alternative or restrict access to the instance to trusted users.



NOTE: This vulnerability only affects products that are no longer supported by the maintainer.

Credit:

Tiago Abreu (finder)

References:

https://attic.apache.org/projects/cocoon.html
https://www.cve.org/CVERecord?id=CVE-2026-108088

