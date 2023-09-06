X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/09/06/5
Message-ID: <06c7e092-7ce4-3857-e43e-38c3bda87580@apache.org>
Date: Wed, 06 Sep 2023 09:26:10 +0000
From: Daniel Gaspar <dpgaspar@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2023-39264: Apache Superset: Stack traces enabled by default 
Content-Type: text/plain; charset=utf-8

Affected versions:

- Apache Superset through 2.1.0

Description:

By default, stack traces for errors were enabled, which resulted in the exposure of internal traces on REST API endpoints to users. This vulnerability exists in Apache Superset versions up to and including 2.1.0.

Credit:

Miguel Segovia Gil (finder)

References:

https://superset.apache.org
https://www.cve.org/CVERecord?id=CVE-2023-39264

