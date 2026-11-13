X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/13/6
Message-ID: <6c19bcfa-1dcb-1fda-b96a-f6498fdbcb07@apache.org>
Date: Fri, 13 Nov 2026 15:50:40 +0000
From: Abhishek Choudhary <shreemaanabhishek@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-124679: Apache APISIX: jwe-decrypt and forward-auth may pass a client-supplied identity header 
Content-Type: text/plain; charset=utf-8

Severity: 
    CVSS 4.0: 7.8 (high) CVSS:4.0/AV:N/AC:L/AT:N/PR:N/UI:N/VC:N/VI:N/VA:N/SC:L/SI:H/SA:N

Affected versions:

- Apache APISIX 3.18.0 through 3.19.0

Description:

Authentication bypass by spoofing vulnerability in Apache APISIX.



On routes using jwe-decrypt with strict: false and a
forward_header distinct from the token header an unauthenticated
client can supply the value the upstream treats as gateway-decrypted
plaintext. Similar can happen when forward-auth is configured with allow_degradation: true, and the auth service is unavailable.



This issue affects Apache APISIX: from 3.18.0 through 3.19.0.



Users are recommended to upgrade to version 3.20.0, which fixes the issue.

Credit:

Siyang Wu (reporter)
shreemaan-abhishek (coordinator)
shreemaan-abhishek (remediation developer)

References:

https://apisix.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-124679

