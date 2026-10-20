X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/20/11
Message-Id: <ED29E82E-F389-466A-85F0-C7681AD6FEB1@apache.org>
Date: Tue, 20 Oct 2026 14:26:52 +0200
From: Jan Lehnardt <jan@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-86471: Apache CouchDB: Admin credentials leading to code execution as operating system user 
Content-Type: text/plain; charset=utf-8

Severity: 
CVSS 4.0: 9.3 (critical) CVSS:4.0/AV:N/AC:L/AT:N/PR:H/UI:N/VC:H/VI:H/VA:L/SC:H/SI:H/SA:L/E:A/S:N/AU:Y/R:U/V:C/RE:M/U:Red

Affected versions:

- Apache CouchDB before 3.5.3

Description:

An unvalidated runtime configuration value in Apache CouchDB 3.5.2 and below on all platforms allows a CouchDB server admin to run arbitrary shell commands as the CouchDB operating system user.

Users are recommended to upgrade to version 3.5.3, which fixes this issue.

References:

https://lists.apache.org/thread.html/pj83174r8f8f64odf47fwhozbfjtot0f
https://couchdb.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-86471

