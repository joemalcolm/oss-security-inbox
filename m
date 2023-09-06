X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/09/06/2
Message-ID: <d4c80a00-82dd-d901-70dc-a7a42f0a83f2@apache.org>
Date: Wed, 06 Sep 2023 09:10:14 +0000
From: Daniel Gaspar <dpgaspar@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2023-36388: Apache Superset: Improper API permission for low privilege users allows for SSRF 
Content-Type: text/plain; charset=utf-8

Affected versions:

- Apache Superset through 2.1.0

Description:

Improper REST API permission in Apache Superset up to and including 2.1.0 allows for an authenticated Gamma users to test network connections, possible SSRF.

Credit:

https://github.com/vin01 (finder)

References:

https://superset.apache.org
https://www.cve.org/CVERecord?id=CVE-2023-36388

