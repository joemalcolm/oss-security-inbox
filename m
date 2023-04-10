X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/04/10/2
Message-ID: <da13c5d2-f965-cace-46d7-1dc92a7cf8c0@apache.org>
Date: Mon, 10 Apr 2023 06:14:41 +0000
From: Heping Wang <peacewong@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2023-27603: Apache Linkis Mangaer module engineConn material upload exists Zip Slip issue 
Content-Type: text/plain; charset=utf-8

Severity: important

Description:

In Apache Linkis <=1.3.1, due to the Manager module engineConn material upload does not check the zip path, This is a Zip Slip issue, which will lead to a potential RCE vulnerability.


We recommend users upgrade the version of Linkis to version 1.3.2.

Credit:

4ra1n (reporter)

References:

https://linkis.apache.org
https://www.cve.org/CVERecord?id=CVE-2023-27603

