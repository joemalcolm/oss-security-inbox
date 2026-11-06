X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/06/27
Message-ID: <4073fdf7-d38a-f63a-2afd-29bc33fc7632@apache.org>
Date: Fri, 06 Nov 2026 18:02:46 +0000
From: Robert Lazarski <robertlazarski@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-120832: Apache Axis2/Java: SSRF via WSDL/XSD schema import resolution 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Axis2/Java before 2.0.2

Description:

Server-Side Request Forgery (SSRF) vulnerability in Apache Axis2/Java. When Axis2 built a service description from a WSDL, through ServiceClient, AxisService.createClientSideAxisService or WSDLToAxisServiceBuilder, it fetched the absolute URLs in wsdl:import locations and in xsd:import and xsd:include schemaLocations with no scheme or host restriction; the AAR and WAR deployment resolvers also passed absolute schema locations on to the network. An attacker who controls a WSDL or schema processed by an Axis2 application could therefore make the JVM send requests to arbitrary internal or external hosts. This issue affects Apache Axis2/Java: through 2.0.1. Users are recommended to upgrade to version 2.0.2, which fixes the issue.

Credit:

Chinmohan Nayak (finder)

References:

https://axis.apache.org/axis2/java/core/release-notes/2.0.2.html
https://github.com/apache/axis-axis2-java-core/commit/7ac84d8339ad80f8f7f7977cf0caaa28fc3b7b98
https://axis.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-120832

