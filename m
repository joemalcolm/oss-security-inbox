X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2020/07/14/3
Message-ID: <af5073bc-cbe7-29fb-9ae9-629e591aa8a9@apache.org>
Date: Tue, 14 Jul 2020 13:24:15 +0100
From: Mark Thomas <markt@...che.org>
To: oss-security@...ts.openwall.com
Subject: [SECURITY] CVE-2020-13935 Apache Tomcat WebSocket Denial of Service
Content-Type: text/plain; charset=utf-8

CVE-2020-13935 Apache Tomcat WebSocket Denial of Service

Severity: Important

Vendor: The Apache Software Foundation

Versions Affected:
Apache Tomcat 10.0.0-M1 to 10.0.0-M6
Apache Tomcat 9.0.0.M1 to 9.0.36
Apache Tomcat 8.5.0 to 8.5.56
Apache Tomcat 7.0.27 to 7.0.104

Description:
The payload length in a WebSocket frame was not correctly validated.
Invalid payload lengths could trigger an infinite loop. Multiple
requests with invalid payload lengths could lead to a denial of service.

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
