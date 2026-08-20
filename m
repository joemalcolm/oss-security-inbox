X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/20/14
Message-ID: <4bf87aab-a9fa-61eb-92ea-f2a2ae6c0e36@apache.org>
Date: Thu, 20 Aug 2026 14:21:27 +0000
From: Charles Zhang <dockerzhang@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-63040: Apache InLong: Missing authorization in StreamSource forceDelete 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache InLong 2.0.0 before 2.4.0

Description:

Files or Directories Accessible to External Parties vulnerability in Apache InLong. StreamSource performs no authorization check, any authenticated user can logically delete ALL stream sources.

This issue affects Apache InLong: from 2.0.0 before 2.4.0.



Users are advised to upgrade to Apache InLong's  2.4.0 or cherry-pick [1] to solve it.

[1]  https://github.com/apache/inlong/pull/12145 .

Credit:

Mingrui Liu (finder)

References:

https://inlong.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-63040

