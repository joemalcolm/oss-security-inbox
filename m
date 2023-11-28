X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/11/28/6
Message-ID: <47fc5eca-ee4a-79fb-abb4-e2d5e3c8345c@apache.org>
Date: Tue, 28 Nov 2023 16:39:26 +0000
From: Daniel Gaspar <dpgaspar@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2023-42504: Apache Superset: Lack of rate limiting allows for possible denial of service 
Content-Type: text/plain; charset=utf-8

Affected versions:

- Apache Superset before 3.0.0

Description:

An authenticated malicious user could initiate multiple concurrent requests, each requesting multiple dashboard exports, leading to a possible denial of service.

This issue affects Apache Superset: before 3.0.0

Credit:

Amit Laish – GE Vernova (finder)

References:

https://superset.apache.org
https://www.cve.org/CVERecord?id=CVE-2023-42504

