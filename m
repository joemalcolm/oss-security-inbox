X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/06/22
Message-ID: <6fb8ec77-4105-2316-1de7-7d75ac71b6cb@apache.org>
Date: Fri, 06 Nov 2026 17:15:41 +0000
From: Robert Lazarski <robertlazarski@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-120761: Apache Axis2/Java: XML External Entity (XXE) injection via imported WSDL/XSD documents 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Axis2/Java before 2.0.2

Description:

Improper Restriction of XML External Entity Reference vulnerability in Apache Axis2/Java. When a client built an AxisService from a WSDL URL, through ServiceClient or AxisService.createClientSideAxisService, wsdl4j import resolution was enabled and the documents named by wsdl:import and xsd:import were parsed by wsdl4j's own XML parser, which processes DOCTYPE declarations and external entities. An attacker who controls a WSDL, or a document it imports, could therefore read local files or make the JVM issue network requests. This issue affects Apache Axis2/Java: through 2.0.1. Users are recommended to upgrade to version 2.0.2, which fixes the issue.

Credit:

Chinmohan Nayak (finder)

References:

https://github.com/apache/axis-axis2-java-core/commit/1d3457d12399c7721ed3f52e7031d1d24d169460
https://axis.apache.org/axis2/java/core/release-notes/2.0.2.html
https://axis.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-120761

