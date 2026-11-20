X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/20/4
Message-ID: <1c652276-db07-508d-b202-037a8a4df867@apache.org>
Date: Fri, 20 Nov 2026 00:51:27 +0000
From: Ian Maxon <imaxon@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-96295: Apache Texera: Authenticated users can always see and modify other's workflow execution results 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Texera 1.1.0-incubating before 1.3.0-incubating

Description:

Authenticated users can bypass normal controls on the reading and writing of workflow execution results. This allows any authenticated user to read or modify any other user's workflow execution results.



This issue affects Apache Texera (incubating): from 1.1.0-incubating before 1.3.0-incubating.



Users are recommended to upgrade to version 1.3.0-incubating, which fixes the issue.

Credit:

n0mi1k (finder)

References:

https://texera.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-96295

