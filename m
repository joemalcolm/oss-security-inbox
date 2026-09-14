X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/14/23
Message-ID: <107e44a4-6ed7-6638-af97-a206d701ac93@apache.org>
Date: Mon, 14 Sep 2026 08:47:17 +0000
From: Francesco Chicchiriccò <ilgrosso@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-87779: Apache Syncope: AES Secret Key disclosure via log output 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Syncope (org.apache.syncope.core:syncope-core-spring) 3.0.15 through 3.0.16
- Apache Syncope (org.apache.syncope.core:syncope-core-spring) 4.0.3 through 4.0.7
- Apache Syncope (org.apache.syncope.core:syncope-core-spring) 4.1.0-M0 through 4.1.2

Description:

Insertion of sensitive information into log file vulnerability in Apache Syncope.



When AES key of non-standard length (not 16/24/32 bytes) is configured, Syncope will pad the provided value with random characters. The resulting key value is logged.



This issue affects Apache Syncope: from 3.0.15 through 3.0.16, from 4.0.3 through 4.0.7, from 4.1.0-M0 through 4.1.2.



Users are recommended to upgrade to version 4.0.8 / 4.1.3, which fix this issue.

Credit:

CyberLeo (finder)

References:

https://syncope.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-87779

