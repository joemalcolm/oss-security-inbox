X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/06/28
Message-ID: <5d5995ee-08bb-39bc-d019-82362e34262c@apache.org>
Date: Fri, 06 Nov 2026 18:01:28 +0000
From: Robert Lazarski <robertlazarski@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-123779: Apache Axis2/Java: exposeServiceMetadata not enforced on all metadata routes 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache Axis2/Java before 2.0.2
- Apache Axis2/Java before 2.0.2

Description:

Direct Request ('Forced Browsing') vulnerability in Apache Axis2/Java. The exposeServiceMetadata service parameter was enforced only on the ?wsdl, ?wsdl2 and ?xsd queries. For a service that had disabled it, the packaged .wsdl and .xsd file routes, the named-WSDL ?wsdl=NAME route of the standalone HTTP server, the OpenAPI, Swagger UI and MCP catalog endpoints, the services listing, WS-MetadataExchange GetMetadata and the ping module still disclosed its metadata to anonymous callers, including operation names and request and response schemas. This issue affects Apache Axis2/Java: through 2.0.1. Users are recommended to upgrade to version 2.0.2, which fixes the issue.

Credit:

n0mi1k (finder)

References:

https://axis.apache.org/axis2/java/core/release-notes/2.0.2.html
https://github.com/apache/axis-axis2-java-core/commit/1671a68660df39459bf22f7b00309e2a8e782117
https://github.com/apache/axis-axis2-java-core/commit/8a81216b1b723e98a3c801de939201ad68f59b23
https://axis.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-123779

