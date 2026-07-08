X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/08/5
Message-ID: <535d6961-0176-eb1f-a413-7981484e95b0@apache.org>
Date: Wed, 08 Jul 2026 11:32:54 +0000
From: Jerry Shao <jshao@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-41042: Apache Gravitino: Unauthenticated callers can supply a malicious H2 JDBC URL through the testConnection API, which executes arbitrary Java code on the server via H2's INIT parameter 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache Gravitino (org.apache.gravitino:gravitino-catalog-jdbc-common) before 1.2.1

Description:

Unauthenticated callers can supply a malicious H2 JDBC URL through the testConnection API, which executes arbitrary Java code on the server via H2's INIT parameter. Vulnerability in Apache Gravitino.

This issue affects Apache Gravitino: before 1.2.1.

Users are recommended to upgrade to version 1.2.1, which fixes the issue.

This issue only happens when using H2, and H2 is mainly used for testing and local development. Also, Gravitino is typically deployed in the internal environment, so the severity is low.

Credit:

Junjie Li (Xidian University, https://github.com/jackieya) (reporter)

References:

https://gravitino.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-41042

