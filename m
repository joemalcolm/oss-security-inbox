X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/11/24/1
Message-ID: <ab979964-17ca-502d-86e0-b3842ac4d5a7@apache.org>
Date: Thu, 24 Nov 2022 11:54:38 +0000
From: ShunFeng Cai <caishunfeng@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2022-26885: Apache DolphinScheduler config file read by task risk 
Content-Type: text/plain; charset=utf-8

Severity: important

Description:

When using tasks to read config files, there is a risk of database password disclosure.   We recommend you upgrade to version 2.0.6 or higher.

