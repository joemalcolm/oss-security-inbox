X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2021/11/11/2
Message-ID: <3a3a3ba7-817d-e417-7aeb-a55b50b05be6@apache.org>
Date: Thu, 11 Nov 2021 13:28:07 +0000
From: Daniel Gaspar <dpgaspar@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2021-41972: Apache Superset: Credentials leak 
Content-Type: text/plain; charset=utf-8

Description:

Apache Superset up to and including 1.3.1 allowed for database connections password leak for authenticated users. This information could be accessed in a non-trivial way.


Mitigation:

Upgrade to Apache Superset 1.3.2 or higher

Credit:

Apache Superset team would like to thank Ke Zhu for reporting this issue

