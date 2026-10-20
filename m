X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/20/16
Message-Id: <9D3D8710-D66C-42E4-A905-D61339780951@apache.org>
Date: Tue, 20 Oct 2026 14:32:09 +0200
From: Jan Lehnardt <jan@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-107755: Apache CouchDB: Credential Disclosure to Non-Owner Members via Object-Form Replication Endpoint URLs
Content-Type: text/plain; charset=utf-8

Severity: important 
CVSS 4.0: 6.0 (medium) CVSS:4.0/AV:N/AC:L/AT:P/PR:L/UI:N/VC:H/VI:H/VA:L/SC:H/SI:H/SA:L/E:U/S:N/AU:Y/R:U/V:C/RE:M/U:Amber

Affected versions:

- Apache CouchDB before 3.5.3

Description:

Insufficient filtering of credentials in the _replicator database in Apache CouchDB 3.5.2 and below on all platforms allows an authenticated user to read replication credentials of other users’ replications, not just their own.

Users are recommended to upgrade to version 3.5.3, which fixes this issue.

Credit:

Sakil Ahamed Gayen (reporter)

References:

https://lists.apache.org/thread.html/pj83174r8f8f64odf47fwhozbfjtot0f
https://couchdb.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-107755

