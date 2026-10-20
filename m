X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/20/13
Message-Id: <3E899DC5-46F6-497F-A078-CF67F9485BC9@apache.org>
Date: Tue, 20 Oct 2026 14:29:09 +0200
From: Jan Lehnardt <jan@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-90798: Apache CouchDB: Replicator follows redirects indefinitely
Content-Type: text/plain; charset=utf-8

Severity: moderate 
CVSS 4.0: 0.6 (low) CVSS:4.0/AV:N/AC:L/AT:P/PR:L/UI:N/VC:N/VI:N/VA:L/SC:N/SI:N/SA:L/E:U/S:N/AU:Y/R:U/V:D/RE:M/U:Amber

Affected versions:

- Apache CouchDB before 3.5.3

Description:

A missing circuit-breaker in the replicator in Apache CouchDB 3.5.2 and below on all platforms allows the owner of a replication source or target to cause a denial of service via creating an infinite HTTP redirect loop.

Users are recommended to upgrade to version 3.5.3, which fixes this issue.

Credit:

The Apache CouchDB Team (finder)

References:

https://lists.apache.org/thread.html/pj83174r8f8f64odf47fwhozbfjtot0f
https://couchdb.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-90798

