X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/01/2
Message-ID: <74b7a7c3-7d46-9f79-ea8e-8dc4b593f128@apache.org>
Date: Thu, 01 Oct 2026 08:53:30 +0000
From: Abhishek Choudhary <shreemaanabhishek@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-78242: Apache APISIX: data-mask may fail to redact request headers in logger output 
Content-Type: text/plain; charset=utf-8

Severity: 
    CVSS 4.0: 5.7 (medium) CVSS:4.0/AV:L/AC:L/AT:P/PR:L/UI:N/VC:H/VI:N/VA:N/SC:N/SI:N/SA:N

Affected versions:

- Apache APISIX 3.17.0

Description:

Insertion of sensitive information into log file vulnerability in Apache APISIX.



This vulnerability can cause the unmasked header value to be written to the log sink under a certain response structure. 



This issue affects Apache APISIX: 3.17.0.



Users are recommended to upgrade to version 3.18.0, which fixes the issue.

Credit:

Jonas Schültke (reporter)

References:

https://apisix.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-78242

