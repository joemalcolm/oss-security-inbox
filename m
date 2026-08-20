X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/20/16
Message-ID: <d94ae763-a0a4-b178-285d-bc0fc546f4a0@apache.org>
Date: Thu, 20 Aug 2026 14:32:06 +0000
From: Charles Zhang <dockerzhang@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-63043: Apache InLong: Agent path traversal via unvalidated file source path 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache InLong 2.0.0 before 2.4.0

Description:

Relative Path Traversal vulnerability in Apache InLong. Arbitrary file read from the Agent host filesystem.

This issue affects Apache InLong: from 2.0.0 before 2.4.0.



Users are advised to upgrade to Apache InLong's  2.4.0 or cherry-pick [1] to solve it.

[1]  https://github.com/apache/inlong/pull/12146 .

Credit:

dyingman1 (finder)

References:

https://inlong.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-63043

