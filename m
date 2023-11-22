X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/11/22/2
Message-ID: <375127d6-abc0-16b3-af1f-858e248d9657@apache.org>
Date: Wed, 22 Nov 2023 04:31:28 +0000
From: Wenjun Ruan <wenjun@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2022-45875: Apache DolphinScheduler: Remote command execution Vulnerability in script alert plugin 
Content-Type: text/plain; charset=utf-8

Severity: low

Affected versions:

- Apache DolphinScheduler 3.0 through 3.0.1
- Apache DolphinScheduler 3.1 through 3.1.0

Description:

Improper validation of script alert plugin parameters in Apache DolphinScheduler to avoid remote command execution vulnerability.  This issue affects Apache DolphinScheduler version 3.0.1 and prior versions; version 3.1.0 and prior versions.
This attack can be performed only by authenticated users which can login to DS.

Credit:

4ra1n of Chaitin Tech (finder)

References:

https://lists.apache.org/thread/r0wqzkjsoq17j6ww381kmpx3jjp9hb6r
https://dolphinscheduler.apache.org
https://www.cve.org/CVERecord?id=CVE-2022-45875

