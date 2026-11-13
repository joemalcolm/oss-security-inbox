X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/13/2
Message-ID: <6812133d-8b78-90af-102e-e20ba57ffdfe@apache.org>
Date: Fri, 13 Nov 2026 01:38:38 +0000
From: Lee Rhodes <leerho@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-123338: Apache DataSketches C++: Out-of-bounds write in REQ sketch deserialization allows memory corruption via a crafted sketch 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache DataSketches C++ 3.0.0 through 5.3.0

Description:

Out-of-bounds Write vulnerability in Apache DataSketches C++. An
  application that deserializes a REQ sketch from an untrusted source
  can have heap memory corrupted by a crafted sketch, because the
  serialized compactor headers were not validated.

  This issue affects Apache DataSketches C++: from 3.0.0 through 5.3.0.

  Users are recommended to upgrade to version 5.3.1, which fixes the
  issue.

References:

https://datasketches.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-123338

