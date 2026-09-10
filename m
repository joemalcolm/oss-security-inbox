X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/10/15
Message-ID: <acbc07d2-4713-71f0-367e-947b00eb5c60@apache.org>
Date: Thu, 10 Sep 2026 06:42:27 +0000
From: Pasquale Congiusti <pcongiusti@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-80352: Apache Camel K: Camel K Master trait serviceAccountName YAML injection lets CR author apply arbitrary objects 
Content-Type: text/plain; charset=utf-8

Severity: critical 

Affected versions:

- Apache Camel K (apache/camel-k) 2.0.0 before 2.9.3
- Apache Camel K (apache/camel-k) 2.10.1 before 2.10.2

Description:

Improper Control of Generation of Code ('Code Injection') vulnerability in Apache Camel K.



A YAML injection vulnerability in custom resource configuration allows an authorized CR author to inject arbitrary Kubernetes objects, potentially enabling unauthorized resource creation with the privileges of the operator.



This issue affects Apache Camel K: from 2.0.0 before 2.9.3, from 2.10.1 before 2.10.2.



Users are recommended to upgrade to version 2.9.3, 2.10.2 or 2.11.0, which fixes the issue.

References:

https://camel.apache.org/security/CVE-2026-80352.html
https://camel.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-80352

