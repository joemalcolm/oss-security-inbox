X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/06/19/5
Message-Id: <BFFF480A-5C76-47A9-89B0-EFDA2D110D73@apache.org>
Date: Mon, 19 Jun 2017 12:43:40 -0400
From: Jim Jagielski <jim@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2017-7659: mod_http2 null pointer dereference 
Content-Type: text/plain; charset=utf-8

CVE-2017-7659: mod_http2 null pointer dereference 

Severity: Important

Vendor: The Apache Software Foundation

Versions Affected:
httpd 2.4.24 (unreleased)
httpd 2.4.25

Description:
A maliciously constructed HTTP/2 request could cause mod_http2 to
dereference a NULL pointer and crash the server process.

Mitigation:
2.4.25 users of mod_http2 should upgrade to 2.4.26.

Credit:
The Apache HTTP Server security team would like to thank Robert Święcki
for reporting this issue.

References:
https://httpd.apache.org/security_report.html

