X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/25/2
Message-ID: <3ffb8284-bb38-ebb0-1981-a953aee05547@apache.org>
Date: Thu, 25 Jun 2026 02:20:08 +0000
From: Hulk Lin <hulk@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-45188: Apache Kvrocks: Replication Fullsync Path Traversal via Unvalidated Filename Handling 
Content-Type: text/plain; charset=utf-8

Severity: 

Affected versions:

- Apache Kvrocks (apache/kvrocks) 1.0.0 through 2.15.0

Description:

Relative Path Traversal vulnerability in Apache Kvrocks.

This issue affects Apache Kvrocks: from 1.0.0 through 2.15.0.

Users are recommended to upgrade to version 2.16.0, which fixes the issue.

Credit:

@Brubbish of VARAS@IIE (reporter)

References:

https://kvrocks.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-45188

