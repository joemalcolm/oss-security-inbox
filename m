X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/23/22
Message-ID: <0faa9a61-119f-46b8-a83b-d9189899c099@apache.org>
Date: Wed, 23 Sep 2026 12:18:34 +0100
From: Mark Thomas <markt@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-77756: Apache Tomcat: Transfer-Encoding honored for HTTP/1.0 requests
Content-Type: text/plain; charset=utf-8

Severity: low

Affected versions:

- Apache Tomcat 11.0.0-M1 through 11.0.25
- Apache Tomcat 10.1.0-M1 through 10.1.59
- Apache Tomcat 9.0.47 through 9.0.121
- Apache Tomcat 8.5.67 through 8.5.100
- Apache Tomcat through 7.0.109 unaffected

Description:

Inconsistent Interpretation of HTTP Requests ('HTTP Request/Response 
Smuggling') vulnerability in Apache Tomcat caused by processing the 
transfer-encoding header for an HTTP/1.0 request may allow an attacker 
to cause one request from another user to fail when Tomcat is located 
behind a reverse proxy.



This issue affects Apache Tomcat: from 11.0.0-M1 through 11.0.25, from 
10.1.0-M1 through 10.1.59, from 9.0.47 through 9.0.121.



The following versions were EOL at the time the CVE was created but are
known to be affected: from 8.5.67 through 8.5.100. Other unsupported 
versions may also be affected.



Users are recommended to upgrade to version 11.0.26, 10.1.60 or 9.0.122, 
which fix the issue.

References:

https://lists.apache.org/thread/bl5b6rxqh3vb2k9bj2794vhor7o6xl3z
https://tomcat.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-77756
