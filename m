X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/21/5
Message-ID: <b3591a6d-e79e-fcc2-f419-4c2ccb434c9f@apache.org>
Date: Tue, 21 Jul 2026 09:19:51 +0000
From: Chaokun Yang <chaokunyang@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-64608: Apache Fory: Heap type confusion and out-of-bounds read/write in C++ compatible-mode field-skip paths 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Fory 0.14.0 before 1.4.0

Description:

Heap type confusion and out-of-bounds read/write in the Apache Fory C++ implementation. When deserializing data in compatible mode, the field-skip paths do not correctly validate the declared field types against the actual data, so input with an inconsistent schema can cause type confusion and out-of-bounds memory access. Only the C++ implementation is affected; other language implementations of Apache Fory are not.

This issue affects Apache Fory C++: from 0.14.0 before 1.4.0.

Users are recommended to upgrade to version 1.4.0, which fixes the issue.

Credit:

Nguyen Van Hiep (@hypnguyen1209) from MBBank (reporter)

References:

https://fory.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-64608

