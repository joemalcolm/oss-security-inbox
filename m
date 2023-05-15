X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/05/15/2
Message-ID: <0f893b63-0431-2fbb-37bc-9d63a174ef88@apache.org>
Date: Mon, 15 May 2023 08:34:46 +0000
From: Robert Munteanu <rombert@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2022-47937: Multiple parsing problems in the Apache Sling Commons JSON module 
Content-Type: text/plain; charset=utf-8

Severity: moderate

Affected versions:

- org.apache.sling.commons.json through 2.0.20

Description:

** UNSUPPORTED WHEN ASSIGNED ** 





Improper input validation in the Apache Sling Commons JSON bundle allows an attacker to trigger unexpected errors by supplying specially-crafted input.




NOTE: This vulnerability 
only affects products that are no longer supported by the maintainer




The org.apache.sling.commons.json bundle has been deprecated as of March
 2017 and should not be used anymore. Consumers are encouraged to 
consider the Apache Sling Commons Johnzon OSGi bundle provided by the 
Apache Sling project, but may of course use other JSON libraries.

Credit:

The vulnerability was discovered and reported by BIngDiAn. (finder)

References:

https://issues.apache.org/jira/browse/SLING-6536
https://github.com/apache/sling-org-apache-sling-commons-johnzon
https://sling.apache.org/
https://www.cve.org/CVERecord?id=CVE-2022-47937

