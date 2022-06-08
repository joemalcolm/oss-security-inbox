X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/06/08/6
Message-ID: <6dd88d7b-4d7d-d1f0-238a-53556932ff4d@apache.org>
Date: Wed, 08 Jun 2022 09:43:44 +0000
From: Stefan Eissing <icing@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2022-30522: Apache HTTP Server: mod_sed denial of service 
Content-Type: text/plain; charset=utf-8

Severity: low

Description:

If Apache HTTP Server 2.4.53 is configured to do transformations with mod_sed in contexts where the input to mod_sed may be very large, mod_sed may make excessively large memory allocations and trigger an abort.

Credit:

This issue was found by Brian Moussalli from the JFrog Security Research team

References:

https://httpd.apache.org/security/vulnerabilities_24.html

