X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/20/26
Message-ID: <ec3af8f1-27b1-46e8-bffa-600ee860c6d5@apache.org>
Date: Tue, 20 Oct 2026 14:46:07 +0100
From: Mark Thomas <markt@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-101296: Apache Tomcat: JNDIRealm bind credential validation fails open for non-GSSAPI SASL mechanisms
Content-Type: text/plain; charset=utf-8

Severity: important

Affected versions:

- Apache Tomcat 11.0.0-M1 through 11.0.26
- Apache Tomcat 10.1.0-M1 through 10.1.60
- Apache Tomcat 9.0.0.M1 through 9.0.122
- Apache Tomcat 8.5.0 through 8.5.100
- Apache Tomcat 7.0.0 through 7.0.109

Description:

A missing critical step in authentication vulnerability in Apache Tomcat 
when the JNDI realm was configured with with a non GSSAPI SASL 
authentication mechanism allowed attackers to authenticate without 
providing the correct password.



This issue affects Apache Tomcat: from 11.0.0-M1 through 11.0.26, from 
10.1.0-M1 through 10.1.60, from 9.0.0.M1 through 9.0.122.



The following versions were EOL at the time the CVE was created but are 
known to be affected: from 8.5.0 through 8.5.100, from 7.0.0 through 
7.0.109. Other unsupported versions may also be affected.



Users are recommended to upgrade to version 11.0.27, 10.1.61 or 9.0.123, 
which fix the issue.

Credit:

ai Sreewathsa Kovalluri, Shon Babu, and Kannan K of Innspark Solutions 
Private Limited (finder)

References:

https://lists.apache.org/thread.html/bl52b9go9ckoov8x4v3dt6rkm573cygd
https://tomcat.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-101296
