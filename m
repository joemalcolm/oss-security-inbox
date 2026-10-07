X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/07/27
Message-ID: <2ade8016-1e38-b3d0-7107-20b7c20f63f5@apache.org>
Date: Wed, 07 Oct 2026 15:07:32 +0000
From: Julian Reschke <reschke@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-92414: Apache Jackrabbit: Pre-auth hijack of cached sessions via derivable WebDAV lock tokens 
Content-Type: text/plain; charset=utf-8

Severity: 
    CVSS 4.0: 9.3 (critical) CVSS:4.0/AV:N/AC:L/AT:N/PR:N/UI:N/VC:H/VI:H/VA:N/SC:N/SI:N/SA:N

Affected versions:

- Apache Jackrabbit 2.23.0 through 2.23.5
- Apache Jackrabbit 2.22.0 through 2.22.4
- Apache Jackrabbit 2.20.0 through 2.20.17

Description:

: Session Fixation / Session Reuse across Users vulnerability in Apache Jackrabbit.



Jackrabbit WebDAV server attaches a cached authenticated session on any Lock-Token/TransactionId/SubscriptionId/If-header field token match with

no credential check.



This issue affects Apache Jackrabbit: from 2.23.0 through 2.23.5, from 2.22.0 through 2.22.4, from 2.20.0 through 2.20.17.












Users are recommended to upgrade to versions 2.23.6, 2.22.5, or 2.20.18 which fix the issue.

Credit:

The Apache Software Foundation (finder)
Julian Reschke (analyst)
Claude Security (tool)

References:

https://jackrabbit.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-92414

