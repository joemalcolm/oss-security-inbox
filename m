X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/20/23
Message-ID: <b5e78fc4-abc1-4972-adc0-d3f64f43ce97@apache.org>
Date: Tue, 20 Oct 2026 14:42:32 +0100
From: Mark Thomas <markt@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-80353: Apache Tomcat: TOCTOU when setting specific permissions for Unix Domain Sockets - Fix for CVE-2026-65183 did not address APR connector
Content-Type: text/plain; charset=utf-8

Severity: low

Affected versions:

- Apache Tomcat 9.0.47 through 9.0.122

Description:

Time-of-check time-of-use (TOCTOU) race condition vulnerability in 
Apache Tomcat when creating unix domain sockets for the APR/Native 
connector allows an unauthorised local user to access the unix domain 
socket. The fix for CVE-2026-65183 only addressed the NIO connector. It 
did not address the same issue in the APR/Native connector.



This issue affects Apache Tomcat: from 9.0.47 through 9.0.122.



Users are recommended to upgrade to version 9.0.123, which fixes the issue.

Credit:

h1ei1 (finder)

References:

https://lists.apache.org/thread.html/tr0q87qwvs80p9hc53tkwpzvnx0ywftr
https://tomcat.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-80353
