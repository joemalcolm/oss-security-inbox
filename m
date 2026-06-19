X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/19/10
Message-ID: <e903f236-3eb8-c4c1-f378-98d7abdfddc6@apache.org>
Date: Fri, 19 Jun 2026 06:56:01 +0000
From: Abhishek Choudhary <shreemaanabhishek@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-47341: Apache APISIX: Session replay issue in hmac-auth 
Content-Type: text/plain; charset=utf-8

Severity: 

Affected versions:

- Apache APISIX 3.11.0 through 3.16.0

Description:

Authentication Bypass by Capture-replay vulnerability in Apache APISIX.

Attacker can benefit from certain configurations in hmac-auth to re-use a token forever, bypassing expiry.
This issue affects Apache APISIX: from 3.11.0 through 3.16.0.

Users are recommended to upgrade to version 3.17.0, which fixes the issue.

Credit:

leon (reporter)

References:

https://apisix.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-47341

