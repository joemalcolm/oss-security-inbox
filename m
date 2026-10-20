X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/20/15
Message-Id: <2416DBE6-C1A7-41B9-9E89-8325C1687437@apache.org>
Date: Tue, 20 Oct 2026 14:31:06 +0200
From: Jan Lehnardt <jan@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-90800: Apache CouchDB: Auth bypass in prefixed _users and _replicator databases 
Content-Type: text/plain; charset=utf-8

Severity: 
CVSS 4.0: 8.1 (high) CVSS:4.0/AV:N/AC:L/AT:P/PR:N/UI:N/VC:H/VI:H/VA:N/SC:H/SI:H/SA:N/E:U/S:N/AU:Y/R:U/V:C/RE:M/U:Amber

Affected versions:

- Apache CouchDB before 3.5.3

Description:

Missing authorisation checks in chttpd in Apache CouchDB 3.5.2 and below on all platforms allows any request to read the full contents of a prefixed _user or _replicator database via an unauthorised API endpoint.


The use of prefixed system databases is very rare.

Users are recommended to upgrade to version 3.5.3, which fixes this issue.

Credit:

Qing Xu & ZeroVuln Labs reported this issue independently (reporter)

References:

https://lists.apache.org/thread.html/pj83174r8f8f64odf47fwhozbfjtot0f
https://couchdb.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-90800

