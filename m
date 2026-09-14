X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/14/7
Message-ID: <fc2c109f-f4bc-55a3-eb45-6e716fc4ea4d@apache.org>
Date: Mon, 14 Sep 2026 08:18:24 +0000
From: Francesco Chicchiriccò <ilgrosso@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-73236: Apache Syncope: Cross-Realm authorization bypass in delegated administration 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Syncope 3.0.0-M0 through 3.0.16
- Apache Syncope 4.0.0-M0 through 4.0.7
- Apache Syncope 4.1.0-M0 through 4.1.2

Description:

Incorrect Authorization vulnerability in Apache Syncope.



Delegated administration security checks are based on Realm hierarchy and enforced via prefix matches.
Due to incorrect implementation, two sibling Realms whose names begin with the same string cannot be correctly distinguished, resulting in incorrect authorization.





This issue affects Apache Syncope: from 3.0.0-M0 through 3.0.16, from 4.0.0-M0 Through 4.0.7, from 4.1.0-M0 through 4.1.2.

Users are recommended to upgrade to version 4.0.8 / 4.1.3, which fix this issue.

Credit:

Aleksandar Djordjevic (finder)
n0mi1k (finder)

References:

https://syncope.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-73236

