X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/26/13
Message-ID: <e001af6a-6233-9279-0285-f036d3130f94@apache.org>
Date: Wed, 26 Aug 2026 14:52:03 +0000
From: Abhishek Choudhary <shreemaanabhishek@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-75005: Apache APISIX: Unauthenticated CPU-exhaustion DoS 
Content-Type: text/plain; charset=utf-8

Severity: 

Affected versions:

- Apache APISIX 3.17.0

Description:

Inefficient Algorithmic Complexity vulnerability in Apache APISIX.

 A single small request can pin a gateway worker at 100% CPU for an extended period in graphql-limit-count routes.




This issue affects Apache APISIX: 3.17.0.



Users are recommended to upgrade to version 3.18.0, which fixes the issue.

Credit:

Md. Amdadul Bari (reporter)

References:

https://apisix.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-75005

