X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/20/5
Message-ID: <a10cd20a-7ee4-98c7-0e19-efdc0dd1dbda@apache.org>
Date: Tue, 20 Oct 2026 09:55:14 +0000
From: Arnout Engelen <engelen@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-108089: Apache Cocoon: Unauthenticated access to diagnostic interfaces 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Cocoon: all versions

Description:

** UNSUPPORTED WHEN ASSIGNED ** Exposure of sensitive system information to an unauthorized control sphere vulnerability in Apache Cocoon. An unauthenticated user could gain access to diagnostic interfaces, including triggering of cache, exposure of (verbose) debug logging and profile information.



This issue affects Apache Cocoon: all versions.



As this project is retired, we do not plan to release a version that fixes this issue. Users are recommended to find an alternative or restrict access to the instance to trusted users.



NOTE: This vulnerability only affects products that are no longer supported by the maintainer.

Credit:

Tiago Abreu (finder)

References:

https://attic.apache.org/projects/cocoon.html
https://www.cve.org/CVERecord?id=CVE-2026-108089

