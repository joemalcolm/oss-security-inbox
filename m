X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/03/3
Message-ID: <b85ec504-0550-51f4-3245-137790baa839@apache.org>
Date: Thu, 02 Jul 2026 23:04:15 +0000
From: Paul Irwin <paulirwin@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-47898: Apache Lucene.Net: XXE vulnerability in Lucene.Net.Analysis.Common PatternParser 
Content-Type: text/plain; charset=utf-8

Severity: 

Affected versions:

- Apache Lucene.Net (Lucene.Net.Analysis.Common) 4.8.0-beta00005 before 4.8.0-beta00018

Description:

Improper Restriction of XML External Entity Reference vulnerability in Apache Lucene.Net (Lucene.Net.Analysis.Common library).

This issue affects Apache Lucene.Net.Analysis.Common: from 4.8.0-beta00005 before 4.8.0-beta00018.

Users are recommended to upgrade to version 4.8.0-beta00018, which fixes the issue.

Credit:

Daniel Cervera (reporter)
Paul Irwin (coordinator)
Shad Storhaug (remediation reviewer)

References:

https://lucenenet.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-47898

