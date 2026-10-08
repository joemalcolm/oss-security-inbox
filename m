X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/08/5
Message-ID: <cec073ad-a66e-514f-3538-342c3bd78bcc@apache.org>
Date: Thu, 08 Oct 2026 01:46:24 +0000
From: Wenjun Ruan <wenjun@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-71895: Apache DolphinScheduler: Missing Authorization Checks Allow Non-Admin Users to Retrieve Kubernetes Credentials 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache DolphinScheduler 3.1.0 before 3.4.3

Description:

An authorization vulnerability in Apache DolphinScheduler allows authenticated non-admin users to retrieve Kubernetes configuration data intended for administrator-managed cluster configuration. The exposed kubeconfig data contains credentials that may allow users to authenticate directly to the Kubernetes API outside DolphinScheduler.



The impact depends on the permissions granted to the disclosed credentials. If the kubeconfig provides cluster-admin or broadly privileged service-account access, an attacker may read Kubernetes Secrets, create pods, and establish persistent access to the cluster.



This issue affects Apache DolphinScheduler: from 3.2.0 before 3.4.3.



Users are recommended to upgrade to version 3.4.3, which fixes the issue.

Credit:

h1ei1 (finder)
n0mi1k (finder)
Влад Рящиков (finder)
meifukun (finder)
Wanxin Yin (finder)

References:

https://dolphinscheduler.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-71895

