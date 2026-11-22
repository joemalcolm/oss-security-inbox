X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/23/9
Message-ID: <9bd591b3-8ab2-60b1-4a68-b7d7f62b5efe@apache.org>
Date: Sun, 22 Nov 2026 23:22:42 +0000
From: Jan Høydahl <janhoy@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-86312: Apache Solr: Ping health-check endpoint could trigger unintended functionality 
Content-Type: text/plain; charset=utf-8

Severity: 
    CVSS 3.1: 8.8 (high) CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U/C:H/I:H/A:H

Affected versions:

- Apache Solr (org.apache.solr:solr-core) 9.0.0 before 9.11.0
- Apache Solr (org.apache.solr:solr-core) 10.0.0 before 10.1.0

Description:

Under some configurations a request to the ping endpoint could carry out more than a simple health check. In deployments that rely on Solr's rule-based authorization, a client granted only the low-privilege health permission could thereby trigger behavior that should require higher privileges; where the shipped security.json template leaves the health permission unauthenticated, no credentials are required at all. 


This issue affects Apache Solr from 9.0.0 through the releases preceding the fixed versions. Users are recommended to upgrade to version 9.11.0 or 10.1.0, which resolve the issue.




You are affected if you run an affected version and allow the /admin/ping endpoint to be reached with only the health permission. This includes the default sample security configuration installed by the bin/solr CLI, where that endpoint is unauthenticated.

Users who cannot upgrade immediately should restrict access to the /admin/ping endpoint in their authorization configuration — for example by requiring a trusted role for that path — and ensure Solr is not reachable from untrusted clients or networks, as recommended for all Solr deployments.

Credit:

Andrew Rukin (Arenadata) (finder)
Zhang Yilin (finder)
Calif.io, in collaboration with Anthropic (finder)

References:

https://github.com/apache/solr/pull/4890
https://solr.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-86312

