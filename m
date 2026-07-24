X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/24/23
Message-ID: <1ddd2cd4-f619-2bbf-84a3-3880239e2cdb@apache.org>
Date: Fri, 24 Jul 2026 14:49:09 +0000
From: Duo Zhang <zhangduo@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-49326: Apache HBase: Missing scanner instance owner check in thrift delegation service 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache HBase (org.apache.hbase:hbase-thrift) through 2.5.14
- Apache HBase (org.apache.hbase:hbase-thrift) 2.6-alpha through 2.6.5
- Apache HBase (org.apache.hbase:hbase-thrift) 3-alpha through 3.0.0-beta-1

Description:

Missing Authorization vulnerability in Apache HBase thrift and rest delegation service.

A scan operation in thrift/rest service has 3 steps, open, fetch(possible multiple times), close.
The open step will return an id which will be passed back to server for identifying the scanner instances stored at server side.
We missed the owner check in fetch and close steps which means a user can fetch rows from the scanner which is opened by other users, and close scanners which belongs to other users.

This issue affects Apache HBase:from 3.0.0-alpha-1 through 3.0.0-beta-1, from 2.6.0 through 2.6.5, from 2.5.0 through 2.5.14, through 2.4.*.

Users are recommended to upgrade to version 3.0.0-beta-2, 2.6.6 and 2.5.15, which fixes the issue.

This issue is being tracked as HBASE-30183 

Credit:

Andrew Rukin (Arenadata) <a.rukin@...nadata.io> (reporter)

References:

https://hbase.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-49326
https://issues.apache.org/jira/browse/HBASE-30183

