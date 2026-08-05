X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/05/4
Message-ID: <974d89da-dc3b-3e82-5544-3e21739e57c8@apache.org>
Date: Wed, 05 Aug 2026 06:34:57 +0000
From: Piotr Karwasz <pkarwasz@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-61483: Apache Lucy: QueryParser unbounded recursion on deeply-nested query -> C-stack-overflow DoS 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache Lucy (Lucy): all versions

Description:

** UNSUPPORTED WHEN ASSIGNED ** Uncontrolled Recursion vulnerability in Apache Lucy.

This issue affects Apache Lucy: all versions.

As this project is retired, we do not plan to release a version that fixes this issue. Users are recommended to find an alternative or restrict access to the instance to trusted users.

NOTE: This vulnerability only affects products that are no longer supported by the maintainer.

References:

https://attic.apache.org/projects/lucy.html
https://www.cve.org/CVERecord?id=CVE-2026-61483

