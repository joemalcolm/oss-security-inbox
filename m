X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/14/8
Message-ID: <af077b17-192d-56bd-481d-32011d14e815@apache.org>
Date: Sat, 14 Nov 2026 05:37:47 +0000
From: Lenny Primak <lprimak@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-129349: Apache Shiro: DefaultLdapRealm accepts any password when authentication caching is enabled 
Content-Type: text/plain; charset=utf-8

Severity: 
    CVSS 4.0: 9.1 (critical) CVSS:4.0/AV:N/AC:L/AT:P/PR:N/UI:N/VC:H/VI:H/VA:N/SC:N/SI:N/SA:N/S:N/AU:Y/R:U/V:C/RE:L/U:Red

Affected versions:

- Apache Shiro (org.apache.shiro:shiro-core) before 3.0.1

Description:

When authentication caching is enabled on DefaultLdapRealm, after a user logs in successfully once, subsequent logins for that user succeed with any password.
A cached authentication skips the LDAP bind, and the AllowAllCredentialsMatcher installed by default in DefaultLdapRealm accepts any credentials, allowing an attacker who knows a valid username to authenticate as that user.
This issue affects all Apache Shiro versions through 3.0.0, only when using DefaultLdapRealm (or JndiLdapRealm) with authenticationCachingEnabled set to true, which is not the default.

Mitigation: Upgrade to version 3.0.1 or later, which fixes the issue by no longer installing AllowAllCredentialsMatcher by default.
Alternatively, disable authentication caching on the LDAP realm (this is the default), or configure a credentials matcher, such as SimpleCredentialsMatcher, that verifies credentials against the cached authentication info.

Credit:

Joshua Rogers (finder)
Lenny Primak <lenny@...wlogix.com> (remediation developer)

References:

https://shiro.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-129349

