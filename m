X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/09/17
Message-ID: <0fc5c7b6-91fc-80cb-9078-8e3a0e12a622@apache.org>
Date: Fri, 09 Oct 2026 11:41:37 +0000
From: Andrea Cosentino <acosentino@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-103413: Apache Camel Karavan: unvalidated Kubernetes resources applied from a project's kubernetes.yaml 
Content-Type: text/plain; charset=utf-8

Severity: 
    CVSS 3.1: 8.8 (high) CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U/C:H/I:H/A:H

Affected versions:

- Apache Camel Karavan 4.0.0 before 4.22.1

Description:

Improper input validation vulnerability in Apache Camel Karavan.



When a deployment was started, Karavan unmarshalled a project's `kubernetes.yaml` and applied every resource it contained to the cluster without restricting the resource kinds, without rejecting security-sensitive pod options, and without pinning the target namespace. An authenticated user of any role could therefore have Karavan apply arbitrary Kubernetes resources within the reach of its service account, including pods requesting hostNetwork, hostPID, hostIPC, hostPath volumes, host ports, privileged containers, privilege escalation or added capabilities.



This issue affects Apache Camel Karavan: from 4.0.0 before 4.22.1.



Users are recommended to upgrade to version 4.22.1, which fixes the issue.

Solution:

Upgrade to Apache Camel Karavan 4.22.1. Apache Camel Karavan has no maintenance branches, so 4.22.1 is the only release containing the fix. Operators should also ensure PodSecurity admission is enforced on the namespace Karavan deploys into, and keep the service account's RBAC no wider than Karavan requires.

Credit:

MopMonk-AI (reporter)
Marat Gubaidullin (remediation developer)
Andrea Cosentino (coordinator)

References:

https://camel.apache.org/security/CVE-2026-103413.html
https://github.com/apache/camel-karavan/commit/a773db372eab9f180110ad6129d58004a1bce571
https://camel.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-103413

Timeline:

2026-08-28: Reported to the Apache Security Team and forwarded to the Apache Camel PMC
2026-08-28: Fix committed
2026-09-29: Apache Camel Karavan 4.22.1 released
2026-10-07: Advisory published

