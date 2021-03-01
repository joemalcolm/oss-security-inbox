X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2021/03/01/4
Message-ID: <CAF6oT1duK+GdUtY9VTi_MfY2Si7sxXSeqC2hAWe9mmaTqua_9g@mail.gmail.com>
Date: Mon, 1 Mar 2021 10:51:19 -0800
From: Chao Sun <sunchao@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2020-1926: Timing attack in Cookie signature verification
Content-Type: text/plain; charset=utf-8

Description:

Apache Hive cookie signature verification used a non constant time
comparison which is known to be vulnerable to timing attacks. This could
allow recovery of another users cookie signature. The issue was addressed
in Apache Hive 2.3.8

This issue is being tracked as HIVE-22708

Credit:

Apache Hive would like to thank S. Wasin for reporting this issue.

References:

https://issues.apache.org/jira/browse/HIVE-22708

