X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/11/23/1
Message-ID: <69039489-c2ed-3a61-4691-adff38199082@apache.org>
Date: Wed, 23 Nov 2022 02:19:51 +0000
From: Jiajie Zhong <zhongjiajie@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2022-45462: Apache DolphinScheduler prior to 2.0.5 have command execution vulnerability 
Content-Type: text/plain; charset=utf-8

Severity: moderate

Description:

Alarm instance management has command injection when there is a specific command configured. It is only for logged-in users. We recommend you upgrade to version 2.0.6 or higher

Credit:

This issue was discovered by Jigang Dong of M1QLin Security Team

