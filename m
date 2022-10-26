X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/10/26/6
Message-ID: <cf6b94a8-3d08-887a-7826-b59d534a1aaa@apache.org>
Date: Wed, 26 Oct 2022 09:42:11 +0000
From: Haonan Hou <haonan@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2022-43766: Apache IoTDB: ReDoS Vulnerability by REGEXP 
Content-Type: text/plain; charset=utf-8

Severity: low

Description:

Apache IoTDB version 0.12.2 to 0.12.6, 0.13.0 to 0.13.2 are vulnerable by the attack of REGEXP query with Java8. Users should upgrade to 0.13.3 which addresses this issue or use a later version of Java to avoid it.

