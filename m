X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/08/24
Message-ID: <eef0476e-e251-e4f0-bce0-ac259bebe5e0@apache.org>
Date: Tue, 08 Sep 2026 20:57:36 +0000
From: Michael Smith <michaelsmith@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-65181: Apache Impala: RCE via External Data Source Class Loading 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Impala 2.7.0 through 4.5.1

Description:

Insufficient authorization of Data Source tables in Impala 2.7-4.5 allows a client with privileges to upload a file to remote storage and create a table to execute arbitrary Java code.
Users are recommended to upgrade to version 4.5.2, which fixes this issue.

Credit:

zhaokaifei ChinaTelecom (reporter)

References:

https://impala.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-65181

