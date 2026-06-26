X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/26/8
Message-ID: <a9dce945-04d2-d642-0aba-d44b0027cd0b@apache.org>
Date: Fri, 26 Jun 2026 10:46:49 +0000
From: Colm O hEigeartaigh <coheigea@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-57915: Apache Kerby: Kerberos Pre-Authentication Bypass 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Kerby (org.apache.kerby:kerb-server) before 2.1.2

Description:

It is possible to bypass the Kerberos pre-authentication check in Apache Kerby by sending a PA-DATA with an unrecognized or unsupported type. Users are recommended to upgrade to version 2.1.2, which fixes this issue.

References:

https://directory.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-57915

