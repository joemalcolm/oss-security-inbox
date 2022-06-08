X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/06/08/5
Message-ID: <180ab6ad-f7a6-4e9b-98fb-2868f60b9eaf@apache.org>
Date: Wed, 08 Jun 2022 09:43:35 +0000
From: Stefan Eissing <icing@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2022-29404: Apache HTTP Server: Denial of service in mod_lua r:parsebody 
Content-Type: text/plain; charset=utf-8

Severity: low

Description:

In Apache HTTP Server 2.4.53 and earlier, a malicious request to a lua script that calls r:parsebody(0) may cause a denial of service due to no default limit on possible input size.

Credit:

The Apache HTTP Server project would like to thank Ronald Crane (Zippenhop LLC) for reporting this issue

References:

https://httpd.apache.org/security/vulnerabilities_24.html

