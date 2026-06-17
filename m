X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/17/8
Message-ID: <215b5c2d-2151-596b-f912-488847c0feb1@apache.org>
Date: Wed, 17 Jun 2026 12:51:22 +0000
From: Lenny Primak <lprimak@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-49268: Apache Shiro: LDAP DN Injection in DefaultLdapRealm 
Content-Type: text/plain; charset=utf-8

Severity: 

Affected versions:

- Apache Shiro (org.apache.shiro:shiro-core) through 2.2.0
- Apache Shiro (org.apache.shiro:shiro-core) 3.0.0-alpha-0 through 3.0.0-alpha-1

Description:

A remote attacker can inject LDAP special characters into the Distinguished Name (DN) construction in DefaultLdapRealm class. User-supplied username input is directly concatenated into the LDAP DN template without any escaping of RFC 2253 special characters. This allows an attacker to manipulate the DN structure used for LDAP bind authentication, potentially bypassing authentication or impersonating other users.

This issue affects all Apache Shiro versions through 2.2.0, and 3.0.0-alpha-1 when using DefaultLdapRealm
Upgrade to Apache Shiro 2.2.1 or 3.0.0-alpha-2 or later, which fixes the issue.

Credit:

zhaokaifei (reporter) - ChinaTelecom (finder)
Lenny Primak <lenny@...wlogix.com> (remediation developer)

References:

https://shiro.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-49268

