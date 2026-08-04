X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/04/11
Message-ID: <11938df8-e4ca-6b31-c991-9ca480673c52@apache.org>
Date: Tue, 04 Aug 2026 17:50:32 +0000
From: Robbie Gemmell <robbie@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-66275: Apache Qpid Proton-J: Incoming session flow control window can be exceeded 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Qpid Proton-J (org.apache.qpid:proton-j) through 0.34.1

Description:

An authenticated attacker could exceed the session flow control incoming window potentially leading to denial of service.

This issue affects Apache Qpid Proton-J: through 0.34.1.

Users are recommended to upgrade to version 0.35.0, which fixes the issue.

References:

https://qpid.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-66275

