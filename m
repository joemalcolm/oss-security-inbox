X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/10/1
Message-ID: <e5b621b1-5062-45ca-87db-f7ec73eb0e22@apache.org>
Date: Fri, 10 Jul 2026 06:25:54 +0000
From: Haonan Hou <haonan@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-28564: Apache IoTDB: REST Basic Authentication Accepts Stale Cached Credentials 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache IoTDB 1.0.0 before 2.0.10

Description:

Insufficient Session Expiration, Authentication Bypass by Capture-replay vulnerability in Apache IoTDB.
REST Basic Authentication Accepts Stale Cached Credentials


This issue affects Apache IoTDB: from 1.0.0 before 2.0.10.

Users are recommended to upgrade to version 2.0.10, which fixes the issue.

Credit:

Aristore (https://github.com/aristorechina) (finder)

References:

https://iotdb.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-28564

