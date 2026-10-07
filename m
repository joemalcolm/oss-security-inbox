X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/07/25
Message-ID: <b28aef96-428b-16f9-4ba8-b14b34fc02a7@apache.org>
Date: Wed, 07 Oct 2026 06:43:19 +0000
From: Wilfred Spiegelenburg <wilfreds@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-92393: Apache YuniKorn: Admission control bypass via workload UPDATE operation 
Content-Type: text/plain; charset=utf-8

Severity: 
    CVSS 4.0: 2.0 (low) CVSS:4.0/AV:N/AC:L/AT:P/PR:H/UI:P/VC:N/VI:L/VA:N/SC:N/SI:N/SA:N

Affected versions:

- Apache YuniKorn before 1.10.0

Description:

Apache YuniKorn 1.9.0 and earlier does not implement label and user annotation checks for workload UPDATE action bypassing all checks. Workloads in YuniKorn are defined as the following Kubernetes objects: "deployments", "replicasets", "statefulsets", "daemonsets", "jobs", "cronjobs". The CREATE action correctly enforces the checks for all object types.


The bypass allows any user to specify an arbitrary user info annotation. The same bypass also allows changing the application ID for the workload. The combination of the two applied in one UPDATE could allow access to a queue that the user normally would not have access to. Quota usage for the queue might be impacted if the application runs in the incorrect queue. User based quota enforcement is also based on the user annotation. User quota tracking could be side stepped even if the application runs in the correct queue.




Users are recommended to upgrade to version 1.10.0, which fixes this issue.

This issue is being tracked as YUNIKORN-3473 

Credit:

diana.wang.turing@...il.com (finder)

References:

https://yunikorn.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-92393
https://issues.apache.org/jira/browse/YUNIKORN-3473

