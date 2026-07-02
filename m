X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/03/2
Message-ID: <fb8e229e-5afc-b5cb-8366-2d31a2276e02@apache.org>
Date: Thu, 02 Jul 2026 23:03:03 +0000
From: Paul Irwin <paulirwin@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-47897: Apache Lucene.Net: Arbitrary file write from malicious server to Lucene.Net.Replicator client 
Content-Type: text/plain; charset=utf-8

Severity: 

Affected versions:

- Apache Lucene.Net (Lucene.Net.Replicator) 4.8.0-beta00005 before 4.8.0-beta00018

Description:

Improper Limitation of a Pathname to a Restricted Directory ('Path Traversal') vulnerability in Apache Lucene.Net (Lucene.Net.Replicator library).

This issue affects Apache Lucene.Net.Replicator: from 4.8.0-beta00005 before 4.8.0-beta00018.

Users are recommended to upgrade to version 4.8.0-beta00018, which fixes the issue.

Credit:

Daniel Cervera (reporter)
Paul Irwin (coordinator)
Shad Storhaug (remediation reviewer)

References:

https://lucenenet.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-47897

