X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/01/31/2
Message-ID: <a973ae81-dcc2-d506-50e2-a62d46321a32@apache.org>
Date: Tue, 31 Jan 2023 07:31:21 +0000
From: Heping Wang <peacewong@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2022-44645: Apache Linkis (incubating): The DatasourceManager module has a serialization attack vulnerability 
Content-Type: text/plain; charset=utf-8

Severity: important

Description:

In Apache Linkis <=1.3.0 when used with the MySQL Connector/J, a deserialization vulnerability with possible remote code execution impact exists when an attacker has write access to a database and configures new datasource with a MySQL data source and malicious parameters. Therefore, the parameters in the jdbc url should be blacklisted. Versions of Apache Linkis <= 1.3.0 will be affected.

We recommend users to upgrade the version of Linkis to version 1.3.1.

Credit:

Tian Xin WU (Bearcat) , Vulnerability Researcher at Numen Cyber ​​​​Labs, Singapore. (reporter)
Department of Cyber Security Research (Jumbo, Unc1e) (remediation developer)
s3gundo of Hundsun Tech  (remediation developer)

References:

https://linkis.incubator.apache.org
https://www.cve.org/CVERecord?id=CVE-2022-44645

