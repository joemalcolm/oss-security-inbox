X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/07/06/1
Message-ID: <a7a38ea0-98f0-f98b-8608-ec6d84807238@apache.org>
Date: Wed, 06 Jul 2022 09:35:31 +0000
From: "Mark J. Cox" <mjc@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2022-32533: Apache Portals Jetspeed XSS, CSRF, SSRF, and XXE issues 
Content-Type: text/plain; charset=utf-8

Severity: moderate

Description:

** UNSUPPORTED WHEN ASSIGNED ** Apache Jetspeed-2 does not sufficiently filter untrusted user input by default leading to a number of issues including XSS, CSRF, XXE, and SSRF.  Setting the configuration option "xss.filter.post = true" may mitigate these issues.

NOTE: Apache Jetspeed is a dormant project of Apache Portals and no updates will be provided for this issue.  

Credit:

Thanks to RunningSnail for reporting.

References:

https://lists.apache.org/thread/d3g248pr03x8rvmh8p2t3xdlw0wn5dz2

