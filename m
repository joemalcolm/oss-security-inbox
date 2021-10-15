X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2021/10/15/2
Message-ID: <32945ab5-3cec-2ba1-cc35-b01dec67ed86@apache.org>
Date: Fri, 15 Oct 2021 13:06:39 +0000
From: Daniel Gaspar <dpgaspar@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2021-41971: Apache Superset: Possible SQL Injection when template processing is enabled 
Content-Type: text/plain; charset=utf-8

Severity: low

Description:

Apache Superset up to and including 1.3.0 when configured with ENABLE_TEMPLATE_PROCESSING on (disabled by default) allowed SQL injection when a malicious authenticated user sends an http request with a custom URL.


Mitigation:

Don't enable ENABLE_TEMPLATE_PROCESSING (disabled by default).
Or upgrade to Apache Superset 1.3.1 

Credit:

Apache Superset would like to thank Kevin Kusnardi for reporting this issue

