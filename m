X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/07/24
Message-ID: <638c5f32-978a-5dd5-b60e-dbba8bd4a241@apache.org>
Date: Wed, 07 Oct 2026 06:44:20 +0000
From: Wilfred Spiegelenburg <wilfreds@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-78243: Apache YuniKorn: LDAP Group provider panics on lowercase attribute name 
Content-Type: text/plain; charset=utf-8

Severity: 
    CVSS 4.0: 2.1 (low) CVSS:4.0/AV:N/AC:H/AT:P/PR:L/UI:P/VC:N/VI:N/VA:L/SC:N/SI:N/SA:L/S:N/AU:N/R:A/V:D/RE:H/U:Green

Affected versions:

- Apache YuniKorn 1.8.0 before 1.10.0

Description:

Apache YuniKorn 1.8.0 and later, if configured with the LDAP group resolver, crashes due to an out of bounds read processing group membership entries.If the LDAP server returns a group membership entry, memberOf attribute, for a user specified in the pod the server crashes if a membership record does not start with "CN=".




This only affects install that have the non default LDAP group provider configured. 


Users are recommended to upgrade to version 1.10.0, which fixes this issue.

This issue is being tracked as YUNIKORN-3432 

Credit:

gjoko@...oscience.mk (finder)

References:

https://yunikorn.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-78243
https://issues.apache.org/jira/browse/YUNIKORN-3432

