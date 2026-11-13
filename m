X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/13/10
Message-ID: <c1fe6800-8467-9f78-d797-aad2a5b30713@apache.org>
Date: Fri, 13 Nov 2026 15:50:33 +0000
From: Abhishek Choudhary <shreemaanabhishek@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-124723: Apache APISIX: unauthorized access to mTLS protected resources 
Content-Type: text/plain; charset=utf-8

Severity: 
    CVSS 4.0: 6.3 (medium) CVSS:4.0/AV:N/AC:L/AT:P/PR:N/UI:N/VC:N/VI:N/VA:N/SC:L/SI:L/SA:N

Affected versions:

- Apache APISIX 3.18.0 through 3.19.0

Description:

Interpretation Conflict, leading to Incorrect Authorization vulnerability in Apache APISIX.



With match_uri_encoded_slash enabled and skip_mtls_uri_regex
configured, a client without a certificate can reach an upstream
behind a route that requires one, limited to request paths that decode
to an exempted URI. This issue affects Apache APISIX: from 3.18.0 through 3.19.0.



Users are recommended to upgrade to version 3.20.0, which fixes the issue.

Credit:

hataehoon (reporter)
shreemaan-abhishek (remediation developer)
shreemaan-abhishek (coordinator)

References:

https://apisix.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-124723

