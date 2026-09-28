X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/28/5
Message-ID: <7f925018-c1d2-a765-9a65-5d6a820519dc@apache.org>
Date: Mon, 28 Sep 2026 12:37:16 +0000
From: Hongtao Gao <hanahmily@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-85499: Apache SkyWalking BanyanDB: Canopy does not enforce readonly-role restrictions on the /monitoring/* proxy 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache SkyWalking BanyanDB 0.11.0 before 0.11.1

Description:

Improper Authorization vulnerability in Apache SkyWalking BanyanDB.



The Canopy includes incomplete proof-of-concept role and monitoring-proxy functionality. Under a non-default configuration with a readonly Canopy user and a reachable monitoring target, that user can send non-read requests through the monitoring proxy.



This issue affects Apache SkyWalking BanyanDB: from 0.11.0 before 0.11.1.



Users are recommended to upgrade to version 0.11.1, which fixes the issue.

References:

https://skywalking.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-85499

