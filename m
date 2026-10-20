X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/20/14
Message-Id: <1DD78A7D-4508-4EFA-8C54-86E61FBE6CF2@apache.org>
Date: Tue, 20 Oct 2026 14:30:02 +0200
From: Jan Lehnardt <jan@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-90799: Apache CouchDB: Atom-table exhaustion in _changes sequences and _search bookmarks with specially crafted sequence values
Content-Type: text/plain; charset=utf-8

Severity: 
CVSS 4.0: 1.3 (low) CVSS:4.0/AV:N/AC:L/AT:N/PR:L/UI:N/VC:N/VI:N/VA:L/SC:N/SI:N/SA:L/E:U/S:N/AU:Y/R:A/V:D/RE:M/U:Amber

Affected versions:

- Apache CouchDB before 3.5.3

Description:

Unsafe binary deserialisation in chttpd in Apache CouchDB 3.5.2 and below on all platforms allows an authenticated user to cause a denial of service via memory exhaustion.

Users are recommended to upgrade to version 3.5.3, which fixes this issue.

Credit:

Piotr Karwasz & ZeroVuln Labs reported this issue independently (finder)

References:

https://lists.apache.org/thread.html/pj83174r8f8f64odf47fwhozbfjtot0f
https://couchdb.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-90799

