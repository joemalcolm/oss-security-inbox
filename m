X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/30/4
Message-ID: <6fb3c2ba-dd36-d269-c59d-11cbce65d98a@apache.org>
Date: Thu, 30 Jul 2026 07:13:21 +0000
From: Jongyoul Lee <jongyoul@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-44617: Apache Zeppelin: LDAP filter injection in LdapRealm — incomplete fix of CVE-2024-31867 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Zeppelin 0.11.1 before 0.12.1

Description:

LDAP filter injection vulnerability in Apache Zeppelin. LdapRealm used RFC 4514 distinguished-name escaping when constructing LDAP search filters instead of RFC 4515 filter escaping, leaving special filter characters insufficiently escaped. This is an incomplete fix of CVE-2024-31867. This issue affects Apache Zeppelin versions 0.11.1, 0.11.2, and 0.12.0. Users are recommended to upgrade to version 0.12.1, which fixes this issue.

Credit:

decsecre452 (finder)

References:

https://github.com/apache/zeppelin/pull/5226
https://www.cve.org/CVERecord?id=CVE-2024-31867
https://zeppelin.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-44617

