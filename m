X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/09/16
Message-ID: <42aaf593-e288-db3c-0e8c-c8ca6a2ee15f@apache.org>
Date: Fri, 09 Oct 2026 11:40:36 +0000
From: Andrea Cosentino <acosentino@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-103412: Apache Camel Karavan: project file name path traversal when committing a project to Git 
Content-Type: text/plain; charset=utf-8

Severity: 
    CVSS 3.1: 8.8 (high) CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U/C:H/I:H/A:H

Affected versions:

- Apache Camel Karavan 3.18.0 before 4.22.1

Description:

Improper limitation of a pathname to a restricted directory ('path traversal') vulnerability in Apache Camel Karavan.



A project file name supplied through the project file API was used verbatim as a path segment when the project was written to the working copy for a Git commit, so a name containing `../` sequences caused the file content to be written outside the project directory, to any location writable by the Karavan process. An authenticated user of any role could use this to overwrite application configuration or files on the application classpath and so execute code in the Karavan container.



This issue affects Apache Camel Karavan: from 3.18.0 before 4.22.1.



Users are recommended to upgrade to version 4.22.1, which fixes the issue.

Solution:

Upgrade to Apache Camel Karavan 4.22.1. Apache Camel Karavan has no maintenance branches, so 4.22.1 is the only release containing the fix.

Credit:

CyberLeo (reporter)
Marat Gubaidullin (remediation developer)
Andrea Cosentino (coordinator)

References:

https://camel.apache.org/security/CVE-2026-103412.html
https://github.com/apache/camel-karavan/commit/5e4252494817af0cd2697216bd02f361037fedcf
https://camel.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-103412

Timeline:

2026-08-28: Reported to the Apache Security Team and forwarded to the Apache Camel PMC
2026-08-28: Fix committed
2026-09-29: Apache Camel Karavan 4.22.1 released
2026-10-07: Advisory published

