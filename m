X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/23/21
Message-ID: <1186b61d-8eda-4430-bb00-75dbf8e31691@apache.org>
Date: Wed, 23 Sep 2026 12:16:42 +0100
From: Mark Thomas <markt@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-76183: Apache Tomcat: Bypass of security constraints for WebSocket endpoints
Content-Type: text/plain; charset=utf-8

Severity: important

Affected versions:

- Apache Tomcat 11.0.0-M1 through 11.0.25
- Apache Tomcat 10.1.0-M1 through 10.1.59
- Apache Tomcat 9.0.0.M1 through 9.0.121
- Apache Tomcat 8.5.0 through 8.5.100
- Apache Tomcat 7.0.43 through 7.0.109
- Apache Tomcat before 7.0.43

Description:

Authentication Bypass by Alternate Name vulnerability in Apache Tomcat 
allowed the security constraints for any WebSocket endpoint to be bypassed.



This issue affects Apache Tomcat: from 11.0.0-M1 through 11.0.25, from 
10.1.0-M1 through 10.1.59, from 9.0.0.M1 through 9.0.121.



The following versions were EOS at the time the CVE was created but are
known to be affected: from 8.5.0 through 8.5.100, from 7.0.43 through 
7.0.109. Other unsupported versions may also be affected.




Users are recommended to upgrade to version 11.0.26, 10.1.60 or 9.0.122, 
which fix the issue.

References:

https://lists.apache.org/thread/45mxk8nj2q8pkhct6lfxkvtm2jpywrsp
https://tomcat.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-76183
