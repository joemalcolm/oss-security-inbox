X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/07/3
Message-ID: <78dc3b77-1c9b-50a5-0e7a-89e8a455ad38@apache.org>
Date: Fri, 07 Aug 2026 07:32:46 +0000
From: Chaokun Yang <chaokunyang@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-71558: Apache Fory: Heap type confusion in C++ polymorphic smart-pointer deserialization 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Fory 0.14.0 before 1.5.0

Description:

Heap type confusion vulnerability in Apache Fory C++ deserialization.

This issue affects Apache Fory C++ versions from 0.14.0 before 1.5.0. A crafted input payload can bypass type compatibility checks during polymorphic smart-pointer deserialization, causing an object of an incompatible type to be treated as the declared base type. This may result in undefined behavior and potentially lead to denial of service or arbitrary code execution.


Users are recommended to upgrade to Apache Fory 1.5.0, which fixes this issue. Applications not using Apache Fory C++ polymorphic smart-pointer deserialization are not affected.

Credit:

Zhixi "Jace Sun", independent security researcher (reporter)

References:

https://fory.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-71558

