X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/17/2
Message-ID: <76f3aee5-120c-93e7-97bf-8bf3b8179f2f@apache.org>
Date: Wed, 17 Jun 2026 01:35:20 +0000
From: Wenjun Ruan <wenjun@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-32966: Apache DolphinScheduler: DataSource API Missing Authorization Check Leads to Arbitrary Data Source Metadata Disclosure 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache DolphinScheduler (org.apache.dolphinscheduler:dolphinscheduler-api) before 3.4.2

Description:

DataSource API Missing Authorization Check Leads to Arbitrary Data Source Metadata Disclosure in Apache DolphinScheduler.

This issue affects Apache DolphinScheduler: before 3.4.2.

Users are recommended to upgrade to version 3.4.2, which fixes the issue.

Credit:

b0b0haha (603571786@...com) (finder)
j311yl0v3u (2439839508@...com) (finder)

References:

https://dolphinscheduler.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-32966

