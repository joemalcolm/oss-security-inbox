X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/01/1
Message-ID: <490aabc6-eeba-ef2c-5371-681e2ba410c7@apache.org>
Date: Thu, 01 Oct 2026 07:11:24 +0000
From: James Netherton <jamesnetherton@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-88789: Apache Camel Quarkus: Camel Quarkus: Forced Xalan TransformerFactory drops upstream external-DTD/stylesheet hardening 
Content-Type: text/plain; charset=utf-8

Severity: 
    CVSS 3.1: 8.6 (high) CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:C/C:H/I:N/A:N

Affected versions:

- Apache Camel Quarkus (org.apache.camel.quarkus:camel-quarkus-support-xalan) 3.2.0 before 3.33.3
- Apache Camel Quarkus (org.apache.camel.quarkus:camel-quarkus-support-xalan) 3.34.0 before 3.40.0
- Apache Camel Quarkus (org.apache.camel.quarkus:camel-quarkus-support-xalan) 3.33.3 unaffected
- Apache Camel Quarkus (org.apache.camel.quarkus:camel-quarkus-support-xalan) 3.40.0 unaffected

Description:

Improper Restriction of XML External Entity Reference in the XSLT support extension (camel-quarkus-support-xalan) in Apache Camel Quarkus from 3.2.0 before 3.33.3 and from 3.34.0 before 3.40.0 on all platforms allows an attacker who supplies the XML document being transformed to read local files or issue requests to internal network locations via an external entity declaration in that document.

The extension supplies its own Xalan-backed TransformerFactory to the xslt component and registers it as the JAXP default. Xalan-J 2.7.x predates JAXP 1.5 and does not honour javax.xml.XMLConstants.ACCESS_EXTERNAL_DTD or ACCESS_EXTERNAL_STYLESHEET, so the external access restrictions Apache Camel applies to the TransformerFactory it creates were not in effect. On the xslt component path this affects message bodies that reach the transformer already as a javax.xml.transform.Source; bodies of other types are converted to a SAXSource by Apache Camel with external entities and external DTD loading disabled, and are not affected. Because the factory is also the JAXP default, other code in the application obtaining one through TransformerFactory.newInstance() loses the same restrictions without error.

Applications are affected if they use any of camel-quarkus-xslt, camel-quarkus-xslt-saxon, camel-quarkus-tika or camel-quarkus-xmlsecurity, each of which brings the XSLT support extension onto the classpath. For all but camel-quarkus-xslt, the exposure is limited to the JAXP default factory, since those extensions do not perform XSLT transformations themselves.

Users are recommended to upgrade to version 3.33.3 or 3.40.0, which fixes this issue.

References:

https://github.com/apache/camel-quarkus/commit/9a570b64977b0e24f85d67c2b2220aeac9fa5274
https://github.com/apache/camel-quarkus/commit/9dd11779580cd88e4ab01b23717cd0167f26155c
https://github.com/apache/camel-quarkus/issues/9115
https://camel.apache.org/security/CVE-2026-88789.html
https://camel.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-88789

