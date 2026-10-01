X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/01/4
Message-ID: <948595a3-3271-6f91-99b0-3b3443f34b4b@apache.org>
Date: Thu, 01 Oct 2026 08:56:42 +0000
From: Abhishek Choudhary <shreemaanabhishek@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-94212: Apache APISIX: unauthenticated impersonation issue in saml-auth 
Content-Type: text/plain; charset=utf-8

Severity: 
    CVSS 4.0: 6.4 (medium) CVSS:4.0/AV:N/AC:L/AT:N/PR:L/UI:N/VC:N/VI:N/VA:N/SC:H/SI:H/SA:N

Affected versions:

- Apache APISIX 3.17.0 through 3.18.0

Description:

Improper verification of cryptographic signature vulnerability in Apache APISIX.



Any unauthenticated attacker could impersonate any user on every route protected by the saml-auth plugin under default configuration. This issue affects Apache APISIX: from 3.17.0 through 3.18.0.



Users are recommended to upgrade to version 3.19.0, which fixes the issue.

Credit:

LucasFutures (reporter)
shreemaan-abhishek (coordinator)
shreemaan-abhishek (remediation developer)

References:

https://apisix.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-94212

