X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/17/28
Message-ID: <48445e23-4cd7-8a89-37c4-134d2babf366@apache.org>
Date: Tue, 17 Nov 2026 20:54:46 +0000
From: Hubert Gruszecki <hgruszecki@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-58320: Apache Iggy: Snapshot API missing authorization 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Iggy before 0.9.0

Description:

Missing Authorization vulnerability in the Apache Iggy server. The system snapshot command (GetSnapshot on the binary transports and POST /snapshot on HTTP) checked only that the caller was logged in, not the read_servers or manage_servers permission. Any authenticated user, including a user with no permissions, could download a diagnostic archive with the server log files, the host process list, a file system listing and the runtime server configuration. The runtime configuration contains the HTTP JWT signing secret and the message encryption key when they are set in the configuration. If HTTP is enabled, the user could use the signing secret to create tokens for any account, including root.

This issue affects Apache Iggy: before 0.9.0.

Users are recommended to upgrade to version 0.10.0, which fixes the issue.

Credit:

73Lab of Qingteng.cn (finder)

References:

https://github.com/apache/iggy/pull/3579
https://iggy.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-58320

