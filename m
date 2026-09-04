X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/04/2
Message-ID: <b90e872a-e464-c93e-c3bd-7016baa94b70@apache.org>
Date: Fri, 04 Sep 2026 00:05:42 +0000
From: Sheng Wu <wusheng@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-85229: Apache SkyWalking: CWE-79 stored XSS in Booster UI dashboard widgets (incomplete fix of CVE-2025-54057) 
Content-Type: text/plain; charset=utf-8

Affected versions:

- Apache SkyWalking 10.2.0 through 10.4.0

Description:

Improper neutralization of input during web page generation ('cross-site scripting') vulnerability in Apache SkyWalking Booster UI.



This issue affects Apache SkyWalking UI : from 10.2.0 through 10.4.0.



Users are recommended to upgrade to version Horizon UI 1.0.0, which fixes the issue.

Credit:

n0mi1k (reporter)

References:

https://skywalking.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-85229

