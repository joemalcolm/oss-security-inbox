X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/18/5
Message-ID: <cfff90e8-94ed-221e-b13f-0a1a5e42d0d8@apache.org>
Date: Wed, 18 Nov 2026 11:05:01 +0000
From: Hubert Gruszecki <hgruszecki@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-118493: Apache Iggy: Log snapshot exposes the generated root password 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Iggy 0.9.0 before 0.10.0

Description:

Insertion of Sensitive Information into Log File vulnerability in the Apache Iggy server. If Apache Iggy 0.9.0 started without IGGY_ROOT_USERNAME and IGGY_ROOT_PASSWORD, it generated a root password and wrote it to the server log file, which is enabled by default. The system snapshot command (GetSnapshot on the binary transports and POST /snapshot on HTTP) let a user with only the read_servers permission download the server log files. That user could read the generated root password and log in as root.

This issue affects Apache Iggy: 0.9.0.

Users are recommended to upgrade to version 0.10.0, which fixes the issue. Version 0.10.0 never generates a root password, and the snapshot requires the manage_servers permission. If a 0.9.0 server generated its root password, change that password.

Credit:

MUTED CYBERSECURITY S.L. (finder)

References:

https://github.com/apache/iggy/pull/4585
https://iggy.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-118493

