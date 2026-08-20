X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/20/15
Message-ID: <ff9c9fac-3bc0-fa06-0013-361c40fea5be@apache.org>
Date: Thu, 20 Aug 2026 14:21:31 +0000
From: Charles Zhang <dockerzhang@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-63042: Apache InLong: Missing authorization on DataNode management endpoints 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache InLong 2.0.0 before 2.4.0

Description:

Files or Directories Accessible to External Parties vulnerability in Apache InLong. Any user who can authenticate to the manager can create, modify and delete Data Node definitions.

This issue affects Apache InLong: from 2.0.0 before 2.4.0.



Users are advised to upgrade to Apache InLong's  2.4.0 or cherry-pick [1] to solve it.

[1]  https://github.com/apache/inlong/pull/12161 .

Credit:

tonghuaroot (finder)

References:

https://inlong.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-63042

