X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/17/6
Message-ID: <8361f13c-4592-5643-8ce8-0e57268df7da@apache.org>
Date: Fri, 17 Jul 2026 06:03:41 +0000
From: Christopher Tubbs <ctubbsii@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-62764: Apache Accumulo: A user can trigger a graceful shutdown of services without the relevant system permissions 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Accumulo (org.apache.accumulo:accumulo-server-base) 2.1.4 through 2.1.5

Description:

Improper Handling of Insufficient Privileges vulnerability in Apache Accumulo.
An authenticated, but low-privileged user without system permissions may
issue a remote command to gracefully shutdown system components
(compaction-coordinator, compactor, gc, manager, monitor, tserver, or sserver),
leading to a denial of service.

This issue affects Apache Accumulo 2.1.4 and 2.1.5.

Users are recommended to upgrade to version 2.1.6, which fixes the issue.

Credit:

Fabian Fleischer (reporter)

References:

https://github.com/apache/accumulo/issues/6478
https://accumulo.apache.org/release/accumulo-2.1.6/
https://accumulo.apache.org/downloads/
https://accumulo.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-62764

