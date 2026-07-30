X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/30/5
Message-ID: <842325ce-9076-269a-3384-19a92678edf9@apache.org>
Date: Thu, 30 Jul 2026 08:26:25 +0000
From: Akira Ajisaka <aajisaka@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-52680: Apache Kyuubi: REST batch multipart upload path traversal allows controlled file write 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Kyuubi (org.apache.kyuubi:kyuubi-common) 1.7.0 through 1.11.1

Description:

Apache Kyuubi REST batch multipart upload handling uses the client-supplied multipart filename when creating a temporary uploaded resource. A remote attacker who can access the REST batch upload endpoint can provide path traversal sequences in the filename and cause the Kyuubi server process to write controlled content outside the intended upload directory, subject to filesystem permissions.


This issue affects Apache Kyuubi: from 1.7.0 through 1.11.1.

Users are recommended to upgrade to version 1.12.0, which fixes the issue.

Credit:

LTSHFWJT (finder)

References:

https://kyuubi.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-52680

