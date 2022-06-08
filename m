X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/06/08/2
Message-ID: <e9dfb469-1e96-4f36-bc87-990a8db23b0c@apache.org>
Date: Wed, 08 Jun 2022 09:42:22 +0000
From: Stefan Eissing <icing@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2022-26377: Apache HTTP Server: mod_proxy_ajp: Possible request smuggling 
Content-Type: text/plain; charset=utf-8

Severity: moderate

Description:

Inconsistent Interpretation of HTTP Requests ('HTTP Request Smuggling') vulnerability in mod_proxy_ajp of Apache HTTP Server allows an attacker to smuggle requests to the AJP server it forwards requests to.  This issue affects Apache HTTP Server Apache HTTP Server 2.4 version 2.4.53 and prior versions.

Credit:

Ricter Z @ 360 Noah Lab

References:

https://httpd.apache.org/security/vulnerabilities_24.html

