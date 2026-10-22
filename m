X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/22/10
Message-ID: <1073cdd8-6e11-9807-7611-82ecf7932a8b@apache.org>
Date: Thu, 22 Oct 2026 13:26:21 +0000
From: Piotr Karwasz <pkarwasz@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-113582: Apache Abdera: XML external entity expansion in Atom document parsing 
Content-Type: text/plain; charset=utf-8

Severity: important 
    CVSS 4.0: 8.7 (high) CVSS:4.0/AV:N/AC:L/AT:N/PR:N/UI:N/VC:H/VI:N/VA:N/SC:N/SI:N/SA:N
    CVSS 3.1: 7.5 (high) CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:N/A:N

Affected versions:

- Apache Abdera: all versions
- Apache Abdera: all versions
- Apache Abdera cb5a3646fc8b2a620dba5bdde3a6b7a3753b1be2 or later

Description:

UNSUPPORTED WHEN ASSIGNED Improper restriction of XML external entity references in Apache Abdera allows an attacker to access sensitive data or make server-side requests when an application parses attacker-controlled XML with Abdera.



This issue affects Apache Abdera: all versions.



Apache Abdera is retired and no longer supported, so we do not plan to release a version that fixes this issue. Users are recommended to migrate to a maintained alternative. Applications that cannot migrate should ensure that untrusted XML cannot reach the affected Abdera parser or JDBC adapter parsing paths. Actively maintained downstream products may still be impacted if they include an affected Abdera artifact.



NOTE: This vulnerability only affects products that are no longer supported by the maintainer.

Credit:

Fabian Foerg of Addepar, Inc. (finder)

References:

https://attic.apache.org/projects/abdera.html
https://attic.apache.org/projects/abdera.html
https://www.cve.org/CVERecord?id=CVE-2026-113582

Timeline:

2017-02-27: Apache Abdera was retired to the Apache Attic.
2026-10-07: The vulnerability was reported to the Apache Security Team.

