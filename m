X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/01/8
Message-ID: <7da00a3e-091b-e15d-2554-7640dba939aa@apache.org>
Date: Thu, 01 Oct 2026 09:03:31 +0000
From: Abhishek Choudhary <shreemaanabhishek@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-94276: Apache APISIX: Openid-connect introspection validation issue 
Content-Type: text/plain; charset=utf-8

Severity: 
    CVSS 4.0: 5.1 (medium) CVSS:4.0/AV:N/AC:L/AT:P/PR:L/UI:N/VC:N/VI:N/VA:N/SC:H/SI:L/SA:N

Affected versions:

- Apache APISIX 3.12.0 through 3.18.0

Description:

Improper Authentication vulnerability in Apache APISIX.

On a route using openid-connect plugin with remote introspection against an authorization server that serves multiple issuers, a token that introspects as active for one issuer may get accepted on a route restricted to another. This issue affects Apache APISIX: from 3.12.0 through 3.18.0.

Users are recommended to upgrade to version 3.19.0, which fixes the issue.

Credit:

sec-reex (reporter)
shreemaan-abhishek (coordinator)
shreemaan-abhishek (remediation developer)

References:

https://apisix.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-94276

