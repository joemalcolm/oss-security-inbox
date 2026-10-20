X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/20/12
Message-Id: <1D695562-D480-4771-B3A6-145FBE5BB2D3@apache.org>
Date: Tue, 20 Oct 2026 14:28:03 +0200
From: Jan Lehnardt <jan@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-90797: Apache CouchDB: Pre-authentication gzip decompression bomb via POST /_session
Content-Type: text/plain; charset=utf-8

Severity: 
CVSS 4.0: 7.7 (high) CVSS:4.0/AV:N/AC:L/AT:N/PR:N/UI:N/VC:N/VI:N/VA:H/SC:N/SI:N/SA:H/E:U/S:N/AU:Y/R:A/V:D/RE:M/U:Red

Affected versions:

- Apache CouchDB before 3.5.3

Description:

An unlimited gzip decompression routine in chttpd in Apache CouchDB 3.5.2 and below on all platforms allows any remote client to cause a denial of service via memory exhaustion.
Users are recommended to upgrade to version 3.5.3, which fixes this issue.

Credit:

ZeroVuln labs (reporter)

References:

https://lists.apache.org/thread.html/pj83174r8f8f64odf47fwhozbfjtot0f
https://couchdb.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-90797

