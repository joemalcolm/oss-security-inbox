X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2021/11/01/3
Message-ID: <7c81caa1-0079-eaf0-73f1-b4d176c0b569@apache.org>
Date: Mon, 01 Nov 2021 09:08:24 +0000
From: Calvin Kirs <kirs@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2021-27644: Apache DolphinScheduler: DolphinScheduler mysql jdbc connector parameters deserialize remote code execution 
Content-Type: text/plain; charset=utf-8

Severity: low

Description:

In Apache DolphinScheduler before 1.3.6 versions, authorized users can use SQL injection in the data source center. (Only applicable to MySQL data source with internal login account password)


Credit:

This issue was discovered by Jinchen Sheng of Ant FG Security Lab

