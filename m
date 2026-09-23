X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/23/33
Message-ID: <b5f9b827-88e2-4985-a482-e8fcccf5e89b@apache.org>
Date: Wed, 23 Sep 2026 13:32:23 +0100
From: Mark Thomas <markt@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-86247: Apache Tomcat Native: Client certificate requirements can be down-graded
Content-Type: text/plain; charset=utf-8

Severity: moderate

Affected versions:

- Apache Tomcat Native 2.0.0 through 2.0.15
- Apache Tomcat Native 1.3.0 through 1.3.8

Description:

Race condition within a thread vulnerability in Apache Tomcat Native 
allowed client certificate verification requirements to be down-graded 
for some configurations.



This issue affects Apache Tomcat Native: from 2.0.0 through 2.0.15, from 
1.3.0 through 1.3.8. Unsupported versions may also be affected.



Users are recommended to upgrade to version 2.0.16 or 1.3.9, which fixes 
the issue.

References:

https://lists.apache.org/thread/obsson6zhvfg0wsp2bx602l61ltj87r1
https://tomcat.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-86247
