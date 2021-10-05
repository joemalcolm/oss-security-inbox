X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2021/10/05/2
Message-ID: <11be742f-d8d0-2a6b-2ea0-dabbdeafebad@apache.org>
Date: Tue, 05 Oct 2021 09:03:14 +0000
From: Stefan Eissing <icing@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2021-41773: Path traversal and file disclosure vulnerability in Apache HTTP Server 2.4.49 
Content-Type: text/plain; charset=utf-8

Severity: important

Description:

A flaw was found in a change made to path normalization in Apache HTTP Server 2.4.49. An attacker could use a path traversal attack to map URLs to files outside the expected document root.  

If files outside of the document root are not protected by "require all denied" these requests can succeed. Additionally this flaw could leak the source of interpreted files like CGI scripts.

This issue is known to be exploited in the wild.

This issue only affects Apache 2.4.49 and not earlier versions.  

Credit:

This issue was reported by Ash Daulton along with the cPanel Security Team

References:

https://httpd.apache.org/security/vulnerabilities_24.html

