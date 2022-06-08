X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/06/08/3
Message-ID: <5ee00238-2486-0a35-a227-265eaa6f7f47@apache.org>
Date: Wed, 08 Jun 2022 09:43:16 +0000
From: Stefan Eissing <icing@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2022-28330: Apache HTTP Server: read beyond bounds in mod_isapi 
Content-Type: text/plain; charset=utf-8

Severity: low

Description:

Apache HTTP Server 2.4.53 and earlier on Windows may read beyond bounds when configured to process requests with the mod_isapi module. 

Credit:

The Apache HTTP Server project would like to thank Ronald Crane (Zippenhop LLC) for reporting this issue

References:

https://httpd.apache.org/security/vulnerabilities_24.html

