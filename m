X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2018/10/31/8
Message-ID: <445139b3-a2af-f2d2-77d3-ba8fbcbee69c@apache.org>
Date: Wed, 31 Oct 2018 18:21:48 +0000
From: Mark Thomas <markt@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2018-11759 Apache Tomcat JK (mod_jk) Connector path traversal
Content-Type: text/plain; charset=utf-8

CVE-2018-11759 Apache Tomcat JK (mod_jk) Connector path traversal

Severity: Important

Vendor: The Apache Software Foundation

Versions Affected:
- Apache Tomcat JK mod_jk Connector 1.2.0 to 1.2.44

Description:
The Apache Web Server (httpd) specific code that normalised the
requested path before matching it to the URI-worker map did not handle
some edge cases correctly. If only a sub-set of the URLs supported by
Tomcat were exposed via httpd, then it was possible for a specially
constructed request to expose application functionality through the
reverse proxy that was not intended for clients accessing the
application via the reverse proxy. It was also possible in some
configurations for a specially constructed request to bypass the access
controls configured in httpd.
While there is some overlap between this issue and CVE-2018-1323, they
are not identical.

Mitigation:
Users of affected versions should apply one of the following mitigations:
- Upgrade to Apache Tomcat JK ISAPI Connector 1.2.46 or later.
- Use alternative measures (e.g. the remote address filter) to restrict
  access to trusted users.

Credit:
This issue was first discovered by Alphan YAVAS from Biznet Bilisim A.S.
and reported responsibly to the Apache Tomcat Security Team. Additional
attack vectors were identified by Raphaël Arrouas (Xel) and Jean Lejeune
(Nitrax) from immunIT.


References:
[1] http://tomcat.apache.org/security-jk.html
