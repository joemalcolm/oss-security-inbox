X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/01/4
Message-ID: <a592a219-ebf7-3fc3-3098-e651a8e7387b@apache.org>
Date: Tue, 01 Sep 2026 20:57:04 +0000
From: Holden Karau <holden@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-32773: Apache Spark: XSS Vulnerability in Spark Web 3.5.4 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache Spark (org.apache.spark:*) 3.0.0 before 3.5.8

Description:

There is a lack of XSS escaping in the Spark History Server prior to 3.5.8 which allows a malicious Spark job to generate arbitrary unescaped frontend code which could lead to a minimal privilege escalation in browser. Users are encouraged to upgrade to Spark 3.5.8 or later.

This CVE is marked as "low" since the path to exploit requires both relatively high permissions (ability to launch a Spark job) and requires tricking a user with higher permissions to log in and visit the Spark history web page.

Users are encouraged to upgrade their Spark history servers to Spark 3.5.8 or later.

This issue is being tracked as SPARK-53747 

Credit:

Yann Gourio (finder)

References:

https://spark.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-32773
https://issues.apache.org/jira/browse/SPARK-53747

