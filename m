X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/29/26
Message-ID: <09d318c8-a48b-4fbc-b448-a024f011f655@apache.org>
Date: Mon, 29 Jun 2026 21:47:43 +0100
From: Mark Thomas <markt@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-55957: Apache Tomcat: Authentication bypass with JNDIRealm and GSSAPI authenticated bind
Content-Type: text/plain; charset=utf-8

Severity: important

Affected versions:

- Apache Tomcat 11.0.0-M1 through 11.0.4
- Apache Tomcat 10.1.0-M1 through 10.1.36
- Apache Tomcat 9.0.0.M1 through 9.0.100
- Apache Tomcat 8.5.0 through 8.5.100
- Apache Tomcat 7.0.0 through 7.0.109
- Apache Tomcat before 7.0.0 unknown

Description:

Missing Critical Step in Authentication vulnerability in Apache Tomcat 
when the JNDIRealm was configured to authenticate binds using GSSAPI 
allowed attackers to authenticate without provided the correct password.

This issue affects Apache Tomcat: from 11.0.0-M1 through 11.0.4, from 
10.1.0-M1 through 10.1.36, from 9.0.0.M1 through 9.0.100, from 8.5.0 
through 8.5.100, from 7.0.0 through 7.0.109.

Users are recommended to upgrade to version 11.0.5, 10.1.37 or 9.0.101, 
which fixes the issue.

Credit:

Ilan Toyter (finder)

References:

https://lists.apache.org/thread/7fk339o5jvd4mcgsf0chbrn4o525ccjh
https://tomcat.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-55957
