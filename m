X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/04/10/5
Message-ID: <0967fa7d-85a0-9519-67b7-9a5741de4a04@apache.org>
Date: Mon, 10 Apr 2023 06:15:02 +0000
From: Heping Wang <peacewong@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2023-29216: Apache Linkis DatasourceManager module has a deserialization command execution 
Content-Type: text/plain; charset=utf-8

Severity: important

Description:

In Apache Linkis <=1.3.1, because the parameters are not
effectively filtered, the attacker uses the MySQL data source and malicious parameters to
configure a new data source to trigger a deserialization vulnerability, eventually leading to
remote code execution.
 Versions of Apache Linkis <= 1.3.0 will be affected.
We recommend users upgrade the version of Linkis to version 1.3.2.

Credit:

sw0rd1ight (reporter)

References:

https://linkis.apache.org
https://www.cve.org/CVERecord?id=CVE-2023-29216

