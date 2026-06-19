X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/19/7
Message-ID: <4d85ce46-de20-7290-b21c-ac37b912756e@apache.org>
Date: Fri, 19 Jun 2026 06:55:47 +0000
From: Abhishek Choudhary <shreemaanabhishek@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-44087: Apache APISIX: Openid-connect plugin Identity Header Spoofing 
Content-Type: text/plain; charset=utf-8

Severity: 

Affected versions:

- Apache APISIX 2.3 through 3.16.0

Description:

Insufficient Verification of Data Authenticity vulnerability in Apache APISIX.

The openid-connect plugin under default configuration has an attack surface that allows the attacker to spoof identity headers allowing the attacker to get unauthorized access the protected resources.
This issue affects Apache APISIX: from 2.3 through 3.16.0.

Users are recommended to upgrade to version 3.16.1, which fixes the issue.

Credit:

Qi Deng (finder)

References:

https://apisix.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-44087

