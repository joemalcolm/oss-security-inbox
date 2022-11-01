X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/11/01/13
Message-ID: <44167bf7-80e2-9442-625c-c153636e3ed3@apache.org>
Date: Tue, 01 Nov 2022 14:32:09 +0000
From: Jiajie Zhong <zhongjiajie@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2022-34662: Apache DolphinScheduler prior to 3.0.0 allows path traversal 
Content-Type: text/plain; charset=utf-8

Severity: moderate

Description:

When users add resources to the resource center with a relation path will cause path traversal issues and only for logged-in users. You could upgrade to version 3.0.0 or higher

Credit:

This issue was discovered by Jigang Dong of M1QLin Security Team

