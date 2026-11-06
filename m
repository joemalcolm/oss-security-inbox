X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/06/26
Message-ID: <2bcc452a-4d0b-194d-f2f9-9907649a6662@apache.org>
Date: Fri, 06 Nov 2026 17:52:48 +0000
From: Robert Lazarski <robertlazarski@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-120367: Apache Axis2/Java: unbounded JSON request body buffering 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache Axis2/Java before 2.0.2

Description:

Allocation of Resources Without Limits or Throttling vulnerability in Apache Axis2/Java. The JSON message builders, including the Gson, Moshi and HTTP/2 variants, buffered the entire request body with no size limit, so an unauthenticated caller could exhaust server memory with a large JSON request. Version 2.0.2 bounds JSON request bodies with the configurable jsonMaxRequestSize parameter. This issue affects Apache Axis2/Java: through 2.0.1. Users are recommended to upgrade to version 2.0.2, which fixes the issue.

Credit:

MopMonk-AI (finder)

References:

https://axis.apache.org/axis2/java/core/release-notes/2.0.2.html
https://github.com/apache/axis-axis2-java-core/commit/aea2671e3c5ebd8638d37db30d69639223366d5d
https://axis.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-120367

