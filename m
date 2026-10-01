X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/01/5
Message-ID: <fc3069a3-e799-fc74-a5de-9442ae908271@apache.org>
Date: Thu, 01 Oct 2026 08:57:22 +0000
From: Abhishek Choudhary <shreemaanabhishek@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-94220: Apache APISIX: session fixation issue in feishu-auth and dingtalk-auth plugin 
Content-Type: text/plain; charset=utf-8

Severity: 
    CVSS 4.0: 2.1 (low) CVSS:4.0/AV:N/AC:L/AT:P/PR:N/UI:A/VC:N/VI:N/VA:N/SC:L/SI:L/SA:N

Affected versions:

- Apache APISIX 3.17.0 through 3.18.0

Description:

Cross-Site request forgery (CSRF) vulnerability in feishu-auth and dingtalk-auth plugins in Apache APISIX.



An attacker who can get a user to click a crafted link may cause that user's browser session on a protected route to be established under the attacker's identity instead of their own. Any work the user then performs in that session, including uploads, form submissions, and account bindings, lands in the attacker's account. This issue affects Apache APISIX: from 3.17.0 through 3.18.0.



Users are recommended to upgrade to version 3.19.0, which fixes the issue.

Credit:

MopMonk-AI (reporter)
shreemaan-abhishek (coordinator)
shreemaan-abhishek (remediation developer)

References:

https://apisix.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-94220

