X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/05/21/9
Message-ID: <34d122dc-0540-d4f8-5b66-a7c437bc541c@apache.org>
Date: Sun, 21 May 2023 08:21:19 +0000
From: Charles Zhang <dockerzhang@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2023-31206: Apache InLong: Attackers can change the immutable name and type of nodes 
Content-Type: text/plain; charset=utf-8

Severity: important

Affected versions:

- Apache InLong 1.4.0 through 1.6.0

Description:

Exposure of Resource to Wrong Sphere Vulnerability in Apache Software Foundation Apache InLong.This issue affects Apache InLong: from 1.4.0 through 1.6.0. Attackers can change the immutable name and type of nodes of InLong. Users are advised to upgrade to Apache InLong's 1.7.0 or cherry-pick [1] to solve it.

 [1]  https://cveprocess.apache.org/cve5/[1]%C2%A0https://github.com/apache/inlong/pull/7891  https://github.com/apache/inlong/pull/7891 https://github.com/apache/inlong/pull/7891

References:

https://inlong.apache.org
https://www.cve.org/CVERecord?id=CVE-2023-31206

