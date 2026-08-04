X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/04/13
Message-ID: <6d237550-0389-1073-7b86-16776c5770d0@apache.org>
Date: Tue, 04 Aug 2026 17:51:15 +0000
From: Robbie Gemmell <robbie@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-66277: Apache Qpid Proton-J: Unable to govern the maximum number of transfer frames per incoming delivery 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Qpid Proton-J (org.apache.qpid:proton-j) through 0.34.1

Description:

It was not possible to govern the maximum number of transfer frames per incoming delivery, enabling an authenticated attacker to cause excessive resource usage and potential denial of service.

This issue affects Apache Qpid Proton-J: through 0.34.1.

Users are recommended to upgrade to version 0.35.0, which fixes the issue.

References:

https://qpid.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-66277

