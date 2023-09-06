X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/09/06/3
Message-ID: <2bcf3e11-a838-b120-5902-48f8ec5d90a4@apache.org>
Date: Wed, 06 Sep 2023 09:17:37 +0000
From: Daniel Gaspar <dpgaspar@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2023-27523: Apache Superset: Improper data permission validation on Jinja templated queries 
Content-Type: text/plain; charset=utf-8

Affected versions:

- Apache Superset through 2.1.0

Description:

Improper data authorization check on Jinja templated queries in Apache Superset up to and including 2.1.0 allows for an authenticated user to issue queries on database tables they may not have access to.

Credit:

Jingjing Hu (finder)

References:

https://superset.apache.org
https://www.cve.org/CVERecord?id=CVE-2023-27523

