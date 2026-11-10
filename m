X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/10/29
Message-ID: <2eed5d1e-7cb7-6b40-ad3b-786ee5c5fef7@apache.org>
Date: Tue, 10 Nov 2026 19:31:54 +0000
From: Lee Rhodes <leerho@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-122096: Apache DataSketches Java: Uncontrolled resource consumption when deserializing crafted sketch images 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache DataSketches Java through 9.0.0

Description:

Uncontrolled Resource Consumption vulnerability in the sketch deserialization of Apache DataSketches Java.



Several deserializers trusted sizes and counts declared in the serialized input. A small crafted input could make an application allocate an excessive amount of memory, leading to an OutOfMemoryError. A crafted string passed to FrequentLongsSketch.getInstance(String) could also make deserialization, or a later update, loop indefinitely. Only applications that deserialize sketches from untrusted sources are affected.



This issue affects Apache DataSketches Java: through 9.0.0.



Users are recommended to upgrade to version 9.1.0, which fixes the issue.

References:

https://github.com/apache/datasketches-java/releases/tag/9.1.0
https://github.com/apache/datasketches-java/pull/777
https://github.com/apache/datasketches-java/pull/783
https://datasketches.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-122096

