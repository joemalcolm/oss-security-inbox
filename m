X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/11/22/15
Message-ID: <7a32e817-529e-e7f6-491a-f990f378ec45@apache.org>
Date: Tue, 22 Nov 2016 09:58:12 +0000
From: Mark Thomas <markt@...che.org>
To: oss-security@...ts.openwall.com
Subject: [SECURITY] CVE-2016-6817 Apache Tomcat Denial of Service
Content-Type: text/plain; charset=utf-8

CVE-2016-6817 Apache Tomcat Information Disclosure

Severity: Important

Vendor: The Apache Software Foundation

Versions Affected:
Apache Tomcat 9.0.0.M1 to 9.0.0.M11
Apache Tomcat 8.5.0 to 8.5.6
Earlier versions are not affected.

Description
The HTTP/2 header parser entered an infinite loop if a header was
received that was larger than the available buffer. This made a denial
of service attack possible.

Mitigation
Users of affected versions should apply one of the following mitigations
- Upgrade to Apache Tomcat 9.0.0.M13 or later
  (Apache Tomcat 9.0.0.M12 has the fix but was not released)
- Upgrade to Apache Tomcat 8.5.8 or later
  (Apache Tomcat 8.5.7 has the fix but was not released)

Credit:
This issue was reported as a bug and the security implications
identified by the Apache Tomcat Security Team.

References:
[1] http://tomcat.apache.org/security-9.html
[2] http://tomcat.apache.org/security-8.html

