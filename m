X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/26/14
Message-ID: <b83aa966-8eaf-5d3a-6c2f-943421a49182@apache.org>
Date: Wed, 26 Aug 2026 14:55:34 +0000
From: Abhishek Choudhary <shreemaanabhishek@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-75020: Apache APISIX: ldap-auth plugin cross-subtree identity impersonation 
Content-Type: text/plain; charset=utf-8

Severity: 

Affected versions:

- Apache APISIX 2.11.0 through 3.17.0

Description:

Improper Neutralization of Special Elements used in an LDAP Query ('LDAP Injection') vulnerability in Apache APISIX.

A caller who holds valid credentials for one entry in the LDAP directory can authenticate through APISIX as a consumer mapped to a different entry, one the plugin's configured scope was meant to keep out of reach.


This issue affects Apache APISIX: from 2.11.0 through 3.17.0.



Users are recommended to upgrade to version 3.18.0, which fixes the issue.

Credit:

MopMonk AI (reporter)

References:

https://apisix.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-75020

