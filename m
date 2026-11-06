X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/06/25
Message-ID: <36d85b81-ea78-dda5-bddc-22efb1217603@apache.org>
Date: Fri, 06 Nov 2026 17:17:42 +0000
From: Robert Lazarski <robertlazarski@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-123770: Apache Axis2/Java: Unbounded multipart and form-encoded request bodies 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache Axis2/Java before 2.0.2

Description:

Allocation of Resources Without Limits or Throttling vulnerability in Apache Axis2/Java. The multipart/form-data and application/x-www-form-urlencoded message builders read the request body directly from the transport stream with no size limit, so the servlet container's post-size limit did not apply, and multipart temporary files were not deleted. An unauthenticated caller could exhaust memory or disk. Version 2.0.2 bounds these bodies with configurable limits and deletes temporary files. This issue affects Apache Axis2/Java: through 2.0.1. Users are recommended to upgrade to version 2.0.2, which fixes the issue.

Credit:

n0mi1k (finder)

References:

https://axis.apache.org/axis2/java/core/release-notes/2.0.2.html
https://github.com/apache/axis-axis2-java-core/commit/1671a68660df39459bf22f7b00309e2a8e782117
https://github.com/apache/axis-axis2-java-core/commit/2b98e5a31c793589915711f5e29fb4ffb697de70
https://github.com/apache/axis-axis2-java-core/commit/94c935d1406bc0875daebd36994595efa2f48ae0
https://axis.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-123770

