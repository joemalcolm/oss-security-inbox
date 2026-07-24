X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/24/43
Message-ID: <99b5b97e-33fe-1d80-2b33-1ea6f31d3b79@apache.org>
Date: Fri, 24 Jul 2026 21:43:38 +0000
From: Jens Geyer <jensg@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-58023: Apache Thrift: c_glib heap out-of-bounds read in transport leftover-bytes path 
Content-Type: text/plain; charset=utf-8

Severity: 

Affected versions:

- Apache Thrift (glibc language bindings) before 0.24.0

Description:

Out-of-bounds Read vulnerability in Apache Thrift c_glib bindings.

This issue affects Apache Thrift: before 0.24.0.

Users are recommended to upgrade to version 0.24.0, which fixes the issue.

References:

https://thrift.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-58023

