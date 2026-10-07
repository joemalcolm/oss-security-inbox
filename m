X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/07/26
Message-ID: <2c4af9fd-8ce0-4d64-43cd-1f7873a4549d@apache.org>
Date: Wed, 07 Oct 2026 06:45:02 +0000
From: Wilfred Spiegelenburg <wilfreds@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-97146: Apache YuniKorn: Admission control bypass via system label forgery 
Content-Type: text/plain; charset=utf-8

Severity: 
    CVSS 4.0: 4.8 (medium) CVSS:4.0/AV:N/AC:L/AT:N/PR:H/UI:P/VC:N/VI:L/VA:N/SC:N/SI:N/SA:N

Affected versions:

- Apache YuniKorn before 1.10.0

Description:

Apache YuniKorn 1.9.0 and earlier allows bypassing the check for the user annotation by setting a secondary label on the pod. If the pod has the label 'app=yunikorn' the checks limiting the user annotation content are not run. The label is used to identify the YuniKorn application itself in the deployments.


The bypass allows any user to specify an arbitrary user info annotation. The arbitrary user information could allow access to a queue that the user normally would not have access to. Quota usage for the queue might be impacted if the application runs in the incorrect queue. User based quota enforcement is also based on the user annotation. User quota tracking could be side stepped even if the application runs in the correct queue.




Users are recommended to upgrade to version 1.10.0, which fixes this issue.

This issue is being tracked as YUNIKORN-3472 

Credit:

mopmonk-ai@...hant.com (finder)

References:

https://yunikorn.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-97146
https://issues.apache.org/jira/browse/YUNIKORN-3472

