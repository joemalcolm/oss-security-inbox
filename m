X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/07/5
Message-ID: <7a8e7538-0bf5-d29c-1e0e-b67a4af3d0c9@apache.org>
Date: Fri, 07 Aug 2026 07:30:13 +0000
From: Chaokun Yang <chaokunyang@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-71560: Apache Fory: Out-of-bounds heap read in C++ struct deserializer tagged-int fast-path 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Fory 0.14.0 before 1.5.0

Description:

Out-of-bounds Read vulnerability in Apache Fory C++ deserialization.

This issue affects Apache Fory C++ versions from 0.14.0 before 1.5.0 when deserializing structs containing tagged integer fields. A crafted input payload may trigger an out-of-bounds heap read in the tagged integer fast-path deserializer, potentially causing information disclosure or denial of service.


Users are recommended to upgrade to Apache Fory 1.5.0, which fixes this issue. Applications that do not use Apache Fory C++ or do not use tagged integer fields are not affected.

Credit:

Zhixi "Jace Sun", independent security researcher (reporter)

References:

https://fory.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-71560

