X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2018/03/24/5
Message-Id: <E1ezZFo-00031d-BB@romulus.home.bitnebula.com>
Date: Fri, 23 Mar 2018 21:50:00 -0500
From: Daniel Ruggeri <druggeri@...che.org>
To: announce@...pd.apache.org, oss-security@...ts.openwall.com, security@...pd.apache.org
Subject: CVE-2018-1302: Possible write of after free on HTTP/2 stream shutdown
Content-Type: text/plain; charset=utf-8


CVE-2018-1302: Possible write of after free on HTTP/2 stream shutdown

Severity: Low

Vendor: The Apache Software Foundation

Versions Affected:
httpd 2.4.17 to 2.4.29

Description:
When an HTTP/2 stream was destroyed after being handled, the Apache HTTP Server
prior to version 2.4.30 could have written a NULL pointer potentially to an
already freed memory. The memory pools maintained by the server make this
vulnerabilty hard to trigger in usual configurations, the reporter and the team
could not reproduce it outside debug builds, so it is classified as low risk.

Mitigation:
All httpd users should upgrade to 2.4.30 or later.

Credit:
The issue was discovered by Robert Swiecki, bug found by honggfuzz

References:
https://httpd.apache.org/security/vulnerabilities_24.html
