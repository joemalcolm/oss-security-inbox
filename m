X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/02/01/4
Message-ID: <ad888107-5866-84ef-08ff-d34611afc9e6@apache.org>
Date: Tue, 01 Feb 2022 09:09:24 +0000
From: Daniel Gaspar <dpgaspar@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2021-44451: Apache Superset: API sensitive information leak 
Content-Type: text/plain; charset=utf-8

Description:

Apache Superset up to and including 1.3.2 allowed for registered database connections password leak for authenticated users. This information could be accessed in a non-trivial way.

Mitigation:

Upgrade to Apache Superset 1.4.0 or higher.

Credit:

Found and reported by Cesar Santos

