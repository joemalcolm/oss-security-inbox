X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/24/16
Message-ID: <addb3acd-169c-77e7-a3ac-c25b1cc89fe5@apache.org>
Date: Fri, 24 Jul 2026 11:08:43 +0000
From: Szymon Janc <janc@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-46452: Apache NimBLE: Mesh Proxy SAR reassembly unbounded append and unchecked failure 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache NimBLE through 1.9.0

Description:

Improper Input Validation vulnerability in Apache NimBLE in Mesh Proxy SAR reassembly could result in passing broken data toward application resulting in memory pressure and unstable parsing behavior.

This issue affects Apache NimBLE: through 1.9.0.

Users are recommended to upgrade to version 1.10.0, which fixes the issue.

Credit:

Yicheng Yang <orangeyyc.mail@...il.com> (reporter)

References:

https://github.com/apache/mynewt-nimble/commit/593f95227a4073efde840a9bb34614929dfa7ed1
https://mynewt.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-46452

