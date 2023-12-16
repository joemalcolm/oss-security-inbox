X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/12/16/1
Message-ID: <f757bf6c-8194-4bbe-bc5d-1bd5dd9d6280@apache.org>
Date: Sat, 16 Dec 2023 16:01:55 +0000
From: Mingyu Chen <morningman@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2023-41314: Apache Doris: Missing API authentication allowed DoS 
Content-Type: text/plain; charset=utf-8

Severity: important

Affected versions:

- Apache Doris 1.2.0 through 2.0.3

Description:

The api /api/snapshot and /api/get_log_file would allow unauthenticated access.
It could allow a DoS attack or get arbitrary files from FE node.
Please upgrade to 2.0.3 to fix these issues.

References:

https://doris.apache.org
https://www.cve.org/CVERecord?id=CVE-2023-41314

