X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/12/19/2
Message-ID: <8ebe75bf-ab27-3937-4290-2415abcfadf0@apache.org>
Date: Tue, 19 Dec 2023 09:31:15 +0000
From: Daniel Gaspar <dpgaspar@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2023-49736: Apache Superset: SQL Injection on where_in JINJA macro 
Content-Type: text/plain; charset=utf-8

Affected versions:

- Apache Superset before 2.1.2
- Apache Superset 3.0.0 before 3.0.2

Description:

A where_in JINJA macro allows users to specify a quote, which combined with a carefully crafted statement would allow for SQL injection in Apache Superset.This issue affects Apache Superset: before 2.1.2, from 3.0.0 before 3.0.2.

Users are recommended to upgrade to version 3.0.2, which fixes the issue.

Credit:

Jack Prince-Fulls ( jf@...yan.com ) (finder)

References:

https://superset.apache.org
https://www.cve.org/CVERecord?id=CVE-2023-49736

