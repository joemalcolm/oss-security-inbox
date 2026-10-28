X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/28/25
Message-ID: <a927baa1-9880-bed6-0ee5-fa82aa1d0b11@apache.org>
Date: Wed, 28 Oct 2026 20:21:45 +0000
From: Andrew Stitcher <astitcher@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-115942: Apache Qpid Proton C: Verifying non compliant TLS wildcard cert can cause stack buffer overflow read 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache Qpid Proton C through 0.40.0

Description:

A misconfigured wildcard TLS certificate causes a stack read overflow.



This issue does not affect any wildcard certificate issued to the RFC9525 standard - the fix only accepts certificates that comply to this standard.



This issue affects Apache Qpid Proton C: through 0.40.0.



Users are recommended to upgrade to version 0.41.1, which fixes the issue.

This issue is being tracked as PROTON-2974 

Credit:

zhangph@...dex.com (finder)

References:

https://qpid.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-115942
https://issues.apache.org/jira/browse/PROTON-2974

