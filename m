X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/04/10/4
Message-ID: <ae225238-7f93-60b4-89f7-b48bfe6bcdd8@apache.org>
Date: Mon, 10 Apr 2023 06:14:52 +0000
From: Heping Wang <peacewong@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2023-29215: Apache Linkis JDBC EngineCon  has a deserialization command execution 
Content-Type: text/plain; charset=utf-8

Severity: important

Description:

In Apache Linkis <=1.3.1, due to the lack of effective filtering
of parameters, an attacker configuring malicious Mysql JDBC parameters in JDBC EengineConn Module will trigger a
deserialization vulnerability and eventually lead to remote code execution. Therefore, the parameters in the Mysql JDBC URL should be blacklisted. Versions of Apache Linkis <= 1.3.0 will be affected.
We recommend users upgrade the version of Linkis to version 1.3.2.

Credit:

sw0rd1ight (reporter)

References:

https://linkis.apache.org
https://www.cve.org/CVERecord?id=CVE-2023-29215

