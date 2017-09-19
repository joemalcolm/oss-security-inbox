X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/09/19/2
Message-ID: <3e602b65-602f-32f1-b5c7-f00c339ad9f0@apache.org>
Date: Tue, 19 Sep 2017 14:07:07 +0100
From: Mark Thomas <markt@...che.org>
To: oss-security@...ts.openwall.com
Subject: [SECURITY] CVE-2017-12616 Apache Tomcat Information Disclosure
Content-Type: text/plain; charset=utf-8

CVE-2017-12616 Apache Tomcat Information Disclosure

Severity: Important

Vendor: The Apache Software Foundation

Versions Affected:
Apache Tomcat 7.0.0 to 7.0.80

Description:
When using a VirtualDirContext it was possible to bypass security
constraints and/or view the source code of JSPs for resources served by
the VirtualDirContext using a specially crafted request.

Mitigation:
Users of the affected versions should apply one of the following
mitigations:
- Upgrade to Apache Tomcat 7.0.81

Credit:
This issue was identified by the Tomcat Security Team while
investigating CVE-2017-12615.

History:
2017-09-19 Original advisory

References:
[1] http://tomcat.apache.org/security-7.html
