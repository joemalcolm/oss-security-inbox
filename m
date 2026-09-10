X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/10/14
Message-ID: <6f889b16-d6ce-63e3-7b74-d13981adac91@apache.org>
Date: Thu, 10 Sep 2026 06:42:12 +0000
From: Pasquale Congiusti <pcongiusti@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-80351: Apache Camel K: Camel K Tenant repositories reach Maven execution inside operator pod 
Content-Type: text/plain; charset=utf-8

Severity: critical 

Affected versions:

- Apache Camel K (apache/camel-k) 2.0.0 before 2.9.3
- Apache Camel K (apache/camel-k) 2.10.1 before 2.10.2

Description:

Improper neutralization of directives in dynamically evaluated code ('eval injection') vulnerability in Apache Camel K.



An improper neutralization of directives in dynamically evaluated Maven configuration allows tenant-controlled repository content to influence code execution within the operator pod, potentially enabling tenants to execute arbitrary code with the privileges of the operator.



This issue affects Apache Camel K: from 2.0.0 before 2.9.3, from 2.10.1 before 2.10.2.



Users are recommended to upgrade to version 2.9.3, 2.10.2 or 2.11.0, which fixes the issue.

References:

https://camel.apache.org/security/CVE-2026-80351.html
https://camel.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-80351

