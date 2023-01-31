X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/01/31/3
Message-ID: <0e9067f8-3ab3-0d40-2a28-9bfaa46f4d8f@apache.org>
Date: Tue, 31 Jan 2023 15:12:33 +0000
From: Eric Covener <covener@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2022-24963: Apache Portable Runtime (APR): out-of-bound writes in the apr_encode family of functions  
Content-Type: text/plain; charset=utf-8

Severity: moderate

Description:

Integer Overflow or Wraparound vulnerability in apr_encode functions of Apache Portable Runtime (APR) allows an attacker to write beyond bounds of a buffer.
This issue affects Apache Portable Runtime (APR) version 1.7.0.

Credit:

Ronald Crane (Zippenhop LLC) (finder)

References:

https://apr.apache.org/
https://www.cve.org/CVERecord?id=CVE-2022-24963

