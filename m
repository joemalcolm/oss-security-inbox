X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/10/16/5
Message-ID: <632a3fb2-1f92-0ef5-6f1d-fbb04edb95dd@apache.org>
Date: Mon, 16 Oct 2023 01:51:45 +0000
From: Charles Zhang <dockerzhang@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2023-43668: Apache InLong: Jdbc Connection Security Bypass in InLong 
Content-Type: text/plain; charset=utf-8

Severity: important

Affected versions:

- Apache InLong 1.4.0 through 1.8.0

Description:

Authorization Bypass Through User-Controlled Key vulnerability in Apache InLong.This issue affects Apache InLong: from 1.4.0 through 1.8.0, 

some sensitive params  checks will be bypassed, like "autoDeserizalize","allowLoadLocalInfile"....

.  

Users are advised to upgrade to Apache InLong's 1.9.0 or cherry-pick [1] to solve it.

[1]  https://github.com/apache/inlong/pull/8604

Credit:

nbxiglk (finder)

References:

https://inlong.apache.org
https://www.cve.org/CVERecord?id=CVE-2023-43668

