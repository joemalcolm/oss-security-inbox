X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/08/22
Message-ID: <b346787c-81b4-984e-7e4c-96ad88772ab8@apache.org>
Date: Tue, 08 Sep 2026 20:49:03 +0000
From: Michael Smith <michaelsmith@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-56207: Apache Impala: SAML authentication bypass via forged bearer token 
Content-Type: text/plain; charset=utf-8

Severity: critical 

Affected versions:

- Apache Impala 4.0.0 through 4.5.1

Description:

Signature of Bearer token is not verified in last step of SAML2 authentication for Impala's hs2-http interface, allowing altering user name and acting as another user.



This issue affects Apache Impala: >=4.0.0.



Users are recommended to upgrade to version 4.5.2, which fixes this issue.

Credit:

Andrew Rukin (Arenadata) (reporter)

References:

https://impala.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-56207

