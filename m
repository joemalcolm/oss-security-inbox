X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/02/8
Message-ID: <5ddda567-716a-6105-fe00-468608a1bda6@apache.org>
Date: Mon, 02 Nov 2026 12:40:25 +0000
From: Francesco Chicchiriccò <ilgrosso@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-110535: Apache Syncope: AuthProfile value escalation via self-service update 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Syncope 3.0.12 through 3.0.16
- Apache Syncope 4.0.0-M0 through 4.0.8
- Apache Syncope 4.1.0-M0 through 4.1.3

Description:

Improper Privilege Management vulnerability in Apache Syncope.



AuthProfile self-updates allow non-admin users to configure impersonation for WA surrogate authentication.
This issue affects Apache Syncope: from 3.0.12 through 3.0.16, from 4.0.0-M0 through 4.0.8, from 4.1.0-M0 through 4.1.3.



Users are recommended to upgrade to version 4.0.9 / 4.1.4, which fix this issue.

Credit:

Yallea (finder)

References:

https://syncope.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-110535

