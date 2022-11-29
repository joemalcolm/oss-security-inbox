X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/11/29/3
Message-ID: <e3f656ef-0bb1-edf0-57f8-d62352a6675a@apache.org>
Date: Tue, 29 Nov 2022 14:21:52 +0000
From: Arnout Engelen <engelen@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2022-44635: Apache Fineract allowed an authenticated user to perform remote code execution due to path traversal 
Content-Type: text/plain; charset=utf-8

Severity: important

Description:

Apache Fineract allowed an authenticated user to perform remote code execution due to a path traversal vulnerability in a file upload component of Apache Fineract, allowing an attacker to run remote code.  This issue affects Apache Fineract version 1.8.0 and prior versions. We recommend users to upgrade to 1.8.1.

Credit:

We would like to thank  Aman Sapra, co-captain of the Super Guesser CTF team & Security researcher at CRED, for reporting this issue, and the Apache Security team for their assistance.  We give kudos and karma to @Aleksandar Vidakovic for resolving this CVE. 

