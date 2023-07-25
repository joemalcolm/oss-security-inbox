X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/07/25/4
Message-ID: <cbfab1ae-27dd-ec5a-ce17-13c69bb3b488@apache.org>
Date: Tue, 25 Jul 2023 02:33:14 +0000
From: Charles Zhang <dockerzhang@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2023-35088: Apache InLong: SQL injection in audit endpoint 
Content-Type: text/plain; charset=utf-8

Severity: moderate

Affected versions:

- Apache InLong 1.4.0 through 1.7.0

Description:

Improper Neutralization of Special Elements Used in an SQL Command ('SQL Injection') vulnerability in Apache Software Foundation Apache InLong.This issue affects Apache InLong: from 1.4.0 through 1.7.0. 
In the toAuditCkSql method, the groupId, streamId, auditId, and dt are directly concatenated into the SQL query statement, which may lead to SQL injection attacks.
Users are advised to upgrade to Apache InLong's 1.8.0 or cherry-pick [1] to solve it.

[1]  https://github.com/apache/inlong/pull/8198

References:

https://inlong.apache.org
https://www.cve.org/CVERecord?id=CVE-2023-35088

