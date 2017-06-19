X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/06/19/10
Message-ID: <0877e497-44ea-bb10-efff-605a67794b4c@apache.org>
Date: Mon, 19 Jun 2017 15:17:40 -0700
From: Jacob Champion <jchampion@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2017-7679: Apache httpd 2.x mod_mime buffer overread
Content-Type: text/plain; charset=utf-8

CVE-2017-7679: mod_mime buffer overread

Severity: Important

Vendor: The Apache Software Foundation

Versions Affected:
httpd 2.2.0 to 2.2.32
httpd 2.4.0 to 2.4.25

Description:
mod_mime can read one byte past the end of a buffer when sending a
malicious Content-Type response header.

Mitigation:
2.2.x users should either apply the patch available at
https://www.apache.org/dist/httpd/patches/apply_to_2.2.32/CVE-2017-7679.patch
or upgrade in the future to 2.2.33, which is currently unreleased.

2.4.x users should upgrade to 2.4.26.

Credit:
The Apache HTTP Server security team would like to thank ChenQin and
Hanno Böck for reporting this issue.

References:
https://httpd.apache.org/security_report.html
