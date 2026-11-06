X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/06/24
Message-ID: <22066991-b3c1-6232-06a5-f91ed70bec27@apache.org>
Date: Fri, 06 Nov 2026 17:20:03 +0000
From: Robert Lazarski <robertlazarski@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-123766: Apache Axis2/Java: Cross-site scripting in the OpenAPI module's Swagger UI page 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Axis2/Java 2.0.1 before 2.0.2

Description:

Improper Neutralization of Input During Web Page Generation (Cross-site Scripting) vulnerability in the OpenAPI module of Apache Axis2/Java. The Swagger UI page served by the OpenAPI module wrote a value derived from the request's Host header into the page without encoding, allowing script injection in the context of the Axis2 origin. This issue affects Apache Axis2/Java: 2.0.1. Users are recommended to upgrade to version 2.0.2, which fixes the issue.

Credit:

n0mi1k (finder)

References:

https://axis.apache.org/axis2/java/core/release-notes/2.0.2.html
https://github.com/apache/axis-axis2-java-core/commit/1671a68660df39459bf22f7b00309e2a8e782117
https://axis.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-123766

