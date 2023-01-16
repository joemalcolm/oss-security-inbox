X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/01/16/4
Message-ID: <37033b5b-a44a-82f4-472e-4ecc6e3e29a4@apache.org>
Date: Mon, 16 Jan 2023 09:23:11 +0000
From: Daniel Gaspar <dpgaspar@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2022-43720: Apache Superset: Improper rendering of user input 
Content-Type: text/plain; charset=utf-8

Severity: low

Description:

An authenticated attacker with write CSS template permissions can create a record with specific HTML tags that will not get properly escaped by the toast message displayed when a user deletes that specific CSS template record. This issue affects Apache Superset version 1.5.2 and prior versions and version 2.0.0.

Credit:

Positive Technologies (finder)

References:

https://superset.apache.org
https://www.cve.org/CVERecord?id=CVE-2022-43720

