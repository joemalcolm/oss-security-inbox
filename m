X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/04/24/3
Message-ID: <ead27614-dd19-1c40-1954-da3bf9197bf8@apache.org>
Date: Mon, 24 Apr 2023 14:51:36 +0000
From: Daniel Gaspar <dpgaspar@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2023-30776: Apache Superset: Database connection password leak 
Content-Type: text/plain; charset=utf-8

Description:

An authenticated user with specific data permissions could access database connections stored passwords by requesting a specific REST API. This issue affects Apache Superset version 1.3.0 up to 2.0.1.

References:

https://superset.apache.org
https://www.cve.org/CVERecord?id=CVE-2023-30776

