X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/14/7
Message-ID: <e4206ec5-fb81-48be-b959-22db32c285a3@apache.org>
Date: Tue, 14 Jul 2026 09:14:50 +0100
From: Mark Thomas <markt@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-59083: Apache Tomcat: Incorrect URL decoding in RewriteValve may allow security control bypass
Content-Type: text/plain; charset=utf-8

Severity: low

Affected versions:

- Apache Tomcat 11.0.0-M1 through 11.0.23
- Apache Tomcat 10.1.0-M1 through 10.1.56
- Apache Tomcat 9.0.0.M1 through 9.0.119
- Apache Tomcat 8.5.0 through 8.5.100
- Apache Tomcat before 8.0.0 unaffected

Description:

Improper Handling of URL Encoding (Hex Encoding) vulnerability in Apache 
Tomcat's rewrite valve allowed security constraint bypass for some 
configurations.

This issue affects Apache Tomcat: from 11.0.0-M1 through 11.0.23, from 
10.1.0-M1 through 10.1.56, from 9.0.0.M1 through 9.0.119, from 8.5.0 
through 8.5.100. Other versions that have reached end of support may 
also be affected.

Users are recommended to upgrade to version 11.0.24, 10.1.57 or 9.0.120, 
which fix the issue.

References:

https://lists.apache.org/thread/3g63zos2gkjo5vgnrk8kxmosv47w6wbq
https://tomcat.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-59083
