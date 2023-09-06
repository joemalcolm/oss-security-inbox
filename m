X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/09/06/4
Message-ID: <9a2c2f90-582b-dfb7-058e-70f58acbae7d@apache.org>
Date: Wed, 06 Sep 2023 09:21:13 +0000
From: Daniel Gaspar <dpgaspar@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2023-27526: Apache Superset: Improper Authorization check on import charts 
Content-Type: text/plain; charset=utf-8

Affected versions:

- Apache Superset through 2.1.0

Description:

A non Admin authenticated user could incorrectly create resources using the import charts feature, on Apache Superset up to and including 2.1.0.

Credit:

NTT DATA (finder)

References:

https://superset.apache.org
https://www.cve.org/CVERecord?id=CVE-2023-27526

