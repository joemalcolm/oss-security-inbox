X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/19/8
Message-ID: <24fd5244-8fb3-d0ee-496f-f40feda54165@apache.org>
Date: Fri, 19 Jun 2026 06:55:51 +0000
From: Abhishek Choudhary <shreemaanabhishek@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-44915: Apache APISIX: Cas-auth plugin open redirect via unsanitized cookie value 
Content-Type: text/plain; charset=utf-8

Severity: 

Affected versions:

- Apache APISIX 3.0.0 through 3.16.0

Description:

URL Redirection to Untrusted Site ('Open Redirect') vulnerability in Apache APISIX.

The default configuration of cas-auth in Apache APISIX is vulnerable to phishing and credential theft.

This issue affects Apache APISIX: from 3.0.0 through 3.16.0.

Users are recommended to upgrade to version 3.17.0, which fixes the issue.

Credit:

Qi Deng (reporter)
lokerxxx (reporter)

References:

https://apisix.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-44915

