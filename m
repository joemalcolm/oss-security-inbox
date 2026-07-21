X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/21/6
Message-ID: <6a751ebe-2c50-386f-769c-a8c4bae65f30@apache.org>
Date: Tue, 21 Jul 2026 09:19:08 +0000
From: Chaokun Yang <chaokunyang@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-64609: Apache Fory: Out-of-Bounds Read via sun.misc.Unsafe in zero-copy java deserialization 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Fory (org.apache.fory:fory-core) 0.11.0 before 1.4.0
- Apache Fory (org.apache.fury:fury-core) 0.5.0 before 0.11.0

Description:

Out-of-bounds read via sun.misc.Unsafe in Apache Fory. When out-of-band zero-copy deserialization is used, readAlignedVarUint() can read beyond the bounds of the underlying buffer. Out-of-band zero-copy deserialization is an opt-in feature; applications that do not use it are not affected.

This issue affects Apache Fory (formerly Apache Fury): from 0.5.0 before 1.4.0. Versions before 0.11.0 were published under the Maven coordinates org.apache.fury:fury-core.

Users are recommended to upgrade to version 1.4.0, which fixes the issue.

Credit:

Feng Ning from Innora Security Research (reporter)

References:

https://fory.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-64609

