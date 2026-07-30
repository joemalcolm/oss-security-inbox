X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/30/3
Message-ID: <6575cd42-8752-012f-0390-433943d6dad5@apache.org>
Date: Thu, 30 Jul 2026 01:38:51 +0000
From: Jongyoul Lee <jongyoul@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-44616: Apache Zeppelin: LDAP injection in ActiveDirectoryGroupRealm filter construction 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Zeppelin 0.6.0 before 0.12.1

Description:

LDAP injection vulnerability in Apache Zeppelin. ActiveDirectoryGroupRealm constructed LDAP search filters without escaping user-controlled input, allowing an authenticated attacker to inject LDAP filter syntax through the user-search endpoint and potentially expose directory information. The role-lookup path was also affected after successful LDAP authentication. This issue affects Apache Zeppelin versions 0.6.0 through 0.12.0. Users are recommended to upgrade to version 0.12.1, which fixes this issue.

Credit:

Andrea Cosentino from Apache Software Foundation (finder)

References:

https://github.com/apache/zeppelin/pull/5226
https://zeppelin.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-44616

