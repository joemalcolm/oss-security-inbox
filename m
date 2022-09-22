X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/09/22/5
Message-ID: <10e2759e-66fb-9c9d-5d20-3e6f3fa672f2@apache.org>
Date: Thu, 22 Sep 2022 15:15:07 +0000
From: Arnout Engelen <engelen@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2022-40955: Deserialization attack in Apache InLong prior to version 1.3.0 allows RCE via JDBC 
Content-Type: text/plain; charset=utf-8

Severity: important

Description:

In versions of Apache InLong prior to 1.3.0, an attacker with sufficient privileges to specify MySQL JDBC connection URL parameters and to write arbitrary data to the MySQL database, could cause this data to be deserialized by Apache InLong, potentially leading to Remote Code Execution on the Apache InLong server.

Users are advised to upgrade to Apache InLong 1.3.0 or newer.

Credit:

This issue was discovered by 4ra1n of Chaitin Tech.

References:

https://lists.apache.org/thread/r1r34y7bchrpmp9jhfdoohzdmk7pj1q1

