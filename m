X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/07/25/2
Message-ID: <8bc38f4f-69db-9105-85fc-e34b7b6ec5ae@apache.org>
Date: Tue, 25 Jul 2023 02:27:32 +0000
From: Charles Zhang <dockerzhang@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2023-34189: Apache InLong: General user can delete and update process 
Content-Type: text/plain; charset=utf-8

Severity: important

Affected versions:

- Apache InLong 1.4.0 through 1.7.0

Description:

Exposure of Resource to Wrong Sphere Vulnerability in Apache Software Foundation Apache InLong.This issue affects Apache InLong: from 1.4.0 through 1.7.0. The attacker could use general users to delete and update the process, which only the admin can operate occurrences. 

Users are advised to upgrade to Apache InLong's 1.8.0 or cherry-pick  https://github.com/apache/inlong/pull/8109  to solve it.

References:

https://inlong.apache.org
https://www.cve.org/CVERecord?id=CVE-2023-34189

