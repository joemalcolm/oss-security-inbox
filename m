X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/10/6
Message-ID: <3e07b2de-bf59-c857-0dc4-d4e16c45ff3d@apache.org>
Date: Fri, 09 Oct 2026 22:19:23 +0000
From: Lee Rhodes <leerho@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-103636: Apache DataSketches: datasketches-cpp: Out-of-bounds read in VarOpt union deserialization allows denial of service via a truncated sketch 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache DataSketches 2.0.0-incubating through 5.2.0

Description:

Out-of-bounds read in the VarOpt union deserialization of Apache DataSketches C++ (repo: datasketches-cpp).

var_opt_union::deserialize() read the 32-byte preamble of a non-empty union after checking that only 8 bytes were available, so a truncated serialized union could cause a read of up to 24 bytes past the end of the input. For such inputs, the size remaining for the embedded sketch was also computed by an unsigned subtraction that could wrap around, so the embedded sketch's own size checks no longer limited reads to the input. The bytes read can become part of the deserialized union's state. This can cause a crash (denial of service) and could expose adjacent memory contents.

This issue affects Apache DataSketches C++: from 2.0.0-incubating before 5.3.0. Only applications that deserialize VarOpt unions from untrusted sources are affected.

Users are recommended to upgrade to version 5.3.0, which fixes this issue.

Credit:

He Huang (finder)
NexusSan (tool)

References:

https://datasketches.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-103636

