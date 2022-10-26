X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/10/26/5
Message-ID: <CADVnWin9crnFrztKSCz_WDgxGxmGKHnuqx7YM+QZiEW2vLAL+g@mail.gmail.com>
Date: Wed, 26 Oct 2022 16:25:26 +0800
From: peacewong <peacewong@...che.org>
To: oss-security@...ts.openwall.com, dev@...kis.apache.org
Subject: CVE-2022-39944: The Apache Linkis JDBC EngineConn module has a RCE Vulnerability
Content-Type: text/plain; charset=utf-8

Severity: important

Description:

In Apache Linkis <=1.2.0 when used with the MySQL Connector/J, a
deserialization vulnerability with possible remote code execution
impact exists when an attacker has write access to a database and
configures a JDBC EC with a MySQL data source and malicious
parameters. Therefore, the parameters in the jdbc url should be
blacklisted. Versions of Apache Linkis <= 1.2.0 will be affected, We
recommend users to update to 1.3.0.


Mitigation:

 <= 1.2.0 users should upgrade to 1.3.0.
Or upgrade the materials of JDBC EngineConn separately, you can refer
to: https://github.com/apache/incubator-linkis/tree/master/linkis-engineconn-plugins/jdbc

Credit:

This issue was discovered by 4ra1n and zac from ZAC Security Team

