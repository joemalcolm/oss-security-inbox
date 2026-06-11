X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/11/6
Message-ID: <bc74b42b-44da-0e3f-e528-df6de7e3c164@apache.org>
Date: Thu, 11 Jun 2026 16:55:00 +0000
From: Colm O hEigeartaigh <coheigea@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-50629: Apache CXF: OAuth2: Log Injection via Unsanitized Client Identifier 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache CXF (org.apache.cxf:cxf-rt-rs-security-oauth2) 4.2.0 before 4.2.2
- Apache CXF (org.apache.cxf:cxf-rt-rs-security-oauth2) before 4.1.7

Description:

The 'clientId' parameter from incoming HTTP requests is directly concatenated into OAuth2 server log warning messages without sanitizing control characters. This allows an attacker to inject arbitrary content, including fake log entries, into the server's log files. Users are recommended to upgrade to versions 4.2.2 or 4.1.7, which fixes this issue.

Credit:

Guanping Zhang reported this vulnerability. (finder)

References:

https://cxf.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-50629

