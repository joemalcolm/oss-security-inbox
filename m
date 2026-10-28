X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/28/24
Message-ID: <3ba1736b-1afc-aada-dfc5-4ebf7036e65c@apache.org>
Date: Wed, 28 Oct 2026 20:21:17 +0000
From: Andrew Stitcher <astitcher@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-114230: Apache Qpid Proton C: Potential authentication bypass: regular AMQP frames can be sent as SASL frames 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Qpid Proton C through 0.40.0

Description:

When dispatching SASL frames to authenticate the peer, Proton will also dispatch AMQP frames if they claim to be SASL frames. This allows authentication bypass. However there will be no user name set so the effects depend on how the application deals with this condition - which otherwise means that authentication has not completed yet.



This issue affects Apache Qpid Proton C: through 0.40.0.



Users are recommended to upgrade to version 0.41.1, which fixes the issue.

This issue is being tracked as PROTON-2945 

References:

https://qpid.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-114230
https://issues.apache.org/jira/browse/PROTON-2945

