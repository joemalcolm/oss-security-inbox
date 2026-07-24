X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/24/35
Message-ID: <0f6fd8b8-abfe-4d71-7a79-434a3aa03cff@apache.org>
Date: Fri, 24 Jul 2026 21:42:19 +0000
From: Jens Geyer <jensg@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-48144: Apache Thrift: c_glib TLS Client Missing Hostname Verification 
Content-Type: text/plain; charset=utf-8

Severity: 

Affected versions:

- Apache Thrift (glibc language bindings) before 0.24.0

Description:

Improper Validation of Certificate with Host Mismatch vulnerability in Apache Thrift c_glib bindings.

This issue affects Apache Thrift: before 0.24.0.

Users are recommended to upgrade to version 0.24.0, which fixes the issue.

References:

https://thrift.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-48144

