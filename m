X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/06/18
Message-ID: <ef6c7a93-b72f-1a39-e786-ac2a662ccbea@apache.org>
Date: Thu, 06 Aug 2026 10:17:10 +0000
From: Colm O hEigeartaigh <coheigea@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-66909: Apache CXF: Unsafe deserialization of inbound JMS ObjectMessage 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache CXF (org.apache.cxf:cxf-rt-transports-jms) 4.2.0 before 4.2.3
- Apache CXF (org.apache.cxf:cxf-rt-transports-jms) 4.0.0 before 4.1.8
- Apache CXF (org.apache.cxf:cxf-rt-transports-jms) before 3.6.12

Description:

Apache CXF's JMS transport deserializes the body of any inbound JMS ObjectMessage using native Java deserialization, with no type restrictions in place. Any attacker able to place a message on the service's JMS destination can submit a malicious serialized object, leading to denial of service or, if a suitable gadget class is on the classpath, remote code execution. The fix disables ObjectMessage deserialization by default, with a configuration switch to re-enable it if needed. Users are recommended to upgrade to versions 4.2.3 or 4.1.8 or 3.6.12, which fix this issue.

Credit:

Reported by n0mi1k (finder)

References:

https://cxf.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-66909

