X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/20/9
Message-ID: <e06fb2c4-d950-152d-dbc8-7e6a7d5fa8d6@apache.org>
Date: Thu, 20 Aug 2026 14:19:11 +0000
From: Charles Zhang <dockerzhang@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-63015: Apache InLong: Non-template responsible persons can view template information 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache InLong 2.0.0 before 2.4.0

Description:

Uncontrolled Resource Consumption vulnerability in Apache InLong. Non-template responsible persons can view template information.

This issue affects Apache InLong: from 2.0.0 before 2.4.0.



Users are advised to upgrade to Apache InLong's  2.4.0 or cherry-pick [1] to solve it.

[1] 

 https://github.com/apache/inlong/pull/12093 https://github.com/apache/inlong/pull/11732

Credit:

Tycho Knight (finder)

References:

https://inlong.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-63015

