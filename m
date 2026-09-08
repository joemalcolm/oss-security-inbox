X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/08/4
Message-ID: <71920816-685e-0513-ca32-ee70175a95ae@apache.org>
Date: Tue, 08 Sep 2026 10:37:24 +0000
From: Sebastian Nagel <snagel@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-41870: Apache Nutch: Unauthenticated remote code execution (RCE) via JEXL injection in Nutch Server (Nutch REST API) 
Content-Type: text/plain; charset=utf-8

Severity: critical 

Affected versions:

- Apache Nutch 1.11 through 1.22

Description:

Missing Authorization, Improper Control of Generation of Code ('Code Injection'), Improper Control of Dynamically-Managed Code Resources, Use of Externally-Controlled Input to Select Classes or Code ('Unsafe Reflection') vulnerability in Apache Nutch Server  (Nutch REST API).



This issue affects Apache Nutch: from 1.11 through 1.22.



Users are recommended to upgrade to version 1.23, which removes the Nutch Server.
If an upgrade is not possible, user must restrict access to instances running the Nutch Service to trusted users only.
Please, also visit the  Apache Nutch security advisories https://nutch.apache.org/documentation/security/ .

This issue is being tracked as NUTCH-3165 NUTCH-3168 

Credit:

The Apache Nutch Project Management Committee would like to thank Th1nk for reporting this issue. (reporter)

References:

https://nutch.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-41870
https://issues.apache.org/jira/browse/NUTCH-3165
https://issues.apache.org/jira/browse/NUTCH-3168

