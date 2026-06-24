X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/24/7
Message-ID: <2a1da851-0d14-2b07-4b3d-5ec74ee03cce@apache.org>
Date: Wed, 24 Jun 2026 18:26:22 +0000
From: Lenny Primak <lprimak@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-56091: Apache Shiro: Authentication bypass in Guice-Web integration 
Content-Type: text/plain; charset=utf-8

Severity: 

Affected versions:

- Apache Shiro (org.apache.shiro:shiro-guice) through 2.99.99
- Apache Shiro (org.apache.shiro:shiro-guice) 3.0.0-alpha-0 through 3.0.0-alpha-1

Description:

When using Apache Shiro with the shiro-guice module in a web servlet context, a specially crafted HTTP request may cause an authentication bypass.
This vulnerability is similar to  https://www.cve.org/CVERecord?id=CVE-2020-1957 https://www.cve.org/CVERecord , except that it affects the `shiro-guice` module instead of the `shiro-spring` module.

This issue affects all Apache Shiro versions through 2.x, and 3.0.0-alpha-1 only when using `shiro-guice` module in a web servlet context.

Upgrade to version 3.0.0 or later, which fixes the issue.

Credit:

LocalHost <localhost.detect@...il.com> (finder)
Lenny Primak <lenny@...wlogix.com> (remediation developer)

References:

https://shiro.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-56091

