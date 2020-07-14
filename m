X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2020/07/14/4
Message-ID: <218e1c3b-d8bc-9c70-88b8-cea51e64e217@apache.org>
Date: Tue, 14 Jul 2020 13:24:45 +0100
From: Mark Thomas <markt@...che.org>
To: oss-security@...ts.openwall.com
Subject: [SECURITY] CVE-2020-13934 Apache Tomcat HTTP/2 Denial of Service
Content-Type: text/plain; charset=utf-8

CVE-2020-13934 Apache Tomcat HTTP/2 Denial of Service

Severity: Moderate

Vendor: The Apache Software Foundation

Versions Affected:
Apache Tomcat 10.0.0-M1 to 10.0.0-M6
Apache Tomcat 9.0.0.M5 to 9.0.36
Apache Tomcat 8.5.1 to 8.5.56

Description:
An h2c direct connection did not release the HTTP/1.1 processor after
the upgrade to HTTP/2. If a sufficient number of such requests were
made, an OutOfMemoryException could occur leading to a denial of service.

Mitigation:
- Upgrade to Apache Tomcat 10.0.0-M7 or later
- Upgrade to Apache Tomcat 9.0.37 or later
- Upgrade to Apache Tomcat 8.5.57 or later

Credit:
This issue was reported publicly via the Apache Tomcat Users mailing
list without reference to the potential for DoS. The DoS risks were
identified by the Apache Tomcat Security Team.

References:
[1] http://tomcat.apache.org/security-10.html
[2] http://tomcat.apache.org/security-9.html
[3] http://tomcat.apache.org/security-8.html
