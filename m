X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/06/08/7
Message-ID: <72cac31d-cd71-86d3-c567-a01d66d8e66d@apache.org>
Date: Wed, 08 Jun 2022 09:43:54 +0000
From: Stefan Eissing <icing@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2022-30556: Apache HTTP Server: Information Disclosure in mod_lua with websockets 
Content-Type: text/plain; charset=utf-8

Severity: low

Description:

Apache HTTP Server 2.4.53 and earlier may return lengths to applications calling r:wsread() that point past the end of the storage allocated for the buffer.

Credit:

The Apache HTTP Server project would like to thank Ronald Crane (Zippenhop LLC) for reporting this issue

References:

https://httpd.apache.org/security/vulnerabilities_24.html

