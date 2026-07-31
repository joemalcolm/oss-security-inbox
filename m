X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/31/2
Message-ID: <75da3a58-ba87-1aca-894e-ac8f822fbdf5@apache.org>
Date: Fri, 31 Jul 2026 09:19:29 +0000
From: Akira Ajisaka <aajisaka@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-62391: Apache Kyuubi: kyuubi.session.local.dir.allow.list bypass via unprefixed Spark file-conf aliases 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Kyuubi (org.apache.kyuubi:kyuubi-server) 1.6.0 before 1.12.0

Description:

The security fix for CVE-2025-66518 is incomplete. Any client who can access to Apache Kyuubi Server via Kyuubi frontend protocols can bypass server-side config kyuubi.session.local.dir.allowlist via unprefixed Spark config aliases.

This issue affects Apache Kyuubi: from 1.6.0 before 1.12.0.

Users are recommended to upgrade to version 1.12.0, which fixes the issue.

Credit:

Anand Nalya (finder)

References:

https://kyuubi.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-62391

