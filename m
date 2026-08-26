X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/26/11
Message-ID: <f850ca6a-dca9-8d0d-50bb-01acdf3f1a32@apache.org>
Date: Wed, 26 Aug 2026 04:42:48 +0000
From: Abhishek Choudhary <shreemaanabhishek@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-63041: Apache APISIX: attach-consumer-label does not strip client-supplied consumer-label headers 
Content-Type: text/plain; charset=utf-8

Severity: 

Affected versions:

- Apache APISIX 3.11.0 through 3.17.0

Description:

Reliance on Untrusted Inputs in a Security Decision vulnerability in Apache APISIX.

This vulnerability allows an attacker to escalate privilege or perform an authorization bypass by sending certain values that the attach-consumer-label plugin does not sanitise correctly.


This issue affects Apache APISIX: from 3.11.0 through 3.17.0.



Users are recommended to upgrade to version <pending>, which fixes the issue.

Credit:

tonghuaroot (reporter)

References:

https://apisix.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-63041

