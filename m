X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/09/06/8
Message-ID: <563ebe58-26b5-e04e-9fe3-5a7156682610@apache.org>
Date: Wed, 06 Sep 2023 09:46:10 +0000
From: Daniel Gaspar <dpgaspar@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2023-32672: Apache Superset: SQL parser edge case bypasses data access authorization 
Content-Type: text/plain; charset=utf-8

Affected versions:

- Apache Superset through 2.1.0

Description:

An Incorrect authorisation check in SQLLab in Apache Superset versions up to and including 2.1.0. This vulnerability allows an authenticated user to query tables that they do not have proper access to within Superset. The vulnerability can be exploited by leveraging a SQL parsing vulnerability.

Credit:

Arnaud Pascal @ Vaadata (finder)

References:

https://superset.apache.org
https://www.cve.org/CVERecord?id=CVE-2023-32672

