X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/28/23
Message-ID: <0e44cb2d-3b97-9621-decb-992b64900124@apache.org>
Date: Wed, 28 Oct 2026 20:20:47 +0000
From: Andrew Stitcher <astitcher@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-105042: Apache Qpid Proton C: Unbounded recursion in parsing AMQP message bodies can lead to crash 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Qpid Proton C through 0.40.0

Description:

A message body that is deeply nested and decoded by pn_message_body() could overflow the stack and cause a crash.



This issue affects Apache Qpid Proton C: through 0.40.0.



Users are recommended to upgrade to version 0.41.1, which fixes the issue.

This issue is being tracked as PROTON-2976 

Credit:

zhangph@...dex.com (finder)
Gjoko Krstic <gjoko@...oscience.mk> (finder)

References:

https://qpid.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-105042
https://issues.apache.org/jira/browse/PROTON-2976

