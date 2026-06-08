X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/08/16
Message-ID: <009ebb4b-9d57-ed74-443a-14811e21f650@apache.org>
Date: Mon, 08 Jun 2026 12:51:55 +0000
From: Eric Covener <covener@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-49975: Apache HTTP Server: mod_http2 denial of service 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache HTTP Server 2.4.17 through 2.4.67

Description:

Memory Allocation with Excessive Size Value vulnerability in Apache HTTP Server's mod_http leads to denial of service via malicious HTTP requests.

This issue affects Apache HTTP Server: from 2.4.17 through 2.4.67.

Credit:

Quang Luong of Calif.IO in collaboration with OpenAI Codex (finder)

References:

https://httpd.apache.org/security/vulnerabilities_24.html
https://httpd.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-49975

Timeline:

2026-05-26: reported
2026-05-27: fixed upstream in mod_h2 https://github.com/icing/mod_h2/commit/35c6e405390ed361189a82acd96675401ea5947c
2026-06-02: fixed in 2.4.x by r1934882
2026-06-08: 2.4.68 released

