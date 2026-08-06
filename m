X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/06/15
Message-ID: <cd9957d2-0630-f4cc-671d-19791ce8df5f@apache.org>
Date: Thu, 06 Aug 2026 10:04:42 +0000
From: Colm O hEigeartaigh <coheigea@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-57819: Apache CXF: No default restriction on the amount of form parameters per message 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache CXF (org.apache.cxf:cxf-rt-frontend-jaxrs) 4.2.0 before 4.2.3
- Apache CXF (org.apache.cxf:cxf-rt-frontend-jaxrs) 4.0.0 before 4.1.8
- Apache CXF (org.apache.cxf:cxf-rt-frontend-jaxrs) before 3.6.12

Description:

Apache CXF allows to set a limit on the number of form parameters in a JAX-RS message via the "maxFormParameterCount" configuration option. However, no default limit is set which may lead to denial of service attacks when processing  requests with very large numbers of form parameters. Users are recommended to upgrade to versions 4.2.3 or 4.1.8 or 3.6.12, which fix this issue by using a default limit of 500 parameters.

References:

https://cxf.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-57819

