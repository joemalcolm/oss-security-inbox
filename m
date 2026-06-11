X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/11/9
Message-ID: <677aac64-04e0-90d2-1ed5-03303c80b222@apache.org>
Date: Thu, 11 Jun 2026 17:02:27 +0000
From: Colm O hEigeartaigh <coheigea@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-50632: Apache CXF: JNDI Injection Vulnerability in JMSConfigFactory 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache CXF (org.apache.cxf:cxf-rt-transports-jms) 4.2.0 before 4.2.2
- Apache CXF (org.apache.cxf:cxf-rt-transports-jms) before 4.1.7

Description:

A further incomplete fix for a previous advisory CVE-2026-44417 (Untrusted JMS configuration can lead to RCE) for Apache CXF has been identified, which can allow code execution capabilities, if untrusted users are allowed to configure JMS for Apache CXF. Users are recommended to upgrade to versions 4.2.2 or 4.1.7, which fixes this issue.

Credit:

Venkatraman Kumar (r3dw0lfsec), Securin (finder)

References:

https://cxf.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-50632

