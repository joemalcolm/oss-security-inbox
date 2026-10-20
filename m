X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/20/3
Message-ID: <b51c855d-fab5-deb7-5342-bea69f82c081@apache.org>
Date: Tue, 20 Oct 2026 09:55:05 +0000
From: Arnout Engelen <engelen@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-108087: Apache Cocoon: SQL Injection 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Cocoon: all versions

Description:

** UNSUPPORTED WHEN ASSIGNED ** Improper neutralization of special elements used in an SQL command ('SQL injection') vulnerability in Apache Cocoon.



This issue affects Apache Cocoon: all versions.



Missing input sanitation would allow arbitrary SQL injection through the SQL processor or sql:/esql: logicsheets.



As this project is retired, we do not plan to release a version that fixes this issue. Users are recommended to find an alternative or restrict access to the instance to trusted users.



NOTE: This vulnerability only affects products that are no longer supported by the maintainer.

Credit:

Tiago Abreu (finder)

References:

https://attic.apache.org/projects/cocoon.html
https://www.cve.org/CVERecord?id=CVE-2026-108087

