X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/13/1
Message-ID: <2fe2ee3e-fe77-6b70-97e2-6f9f043cb990@apache.org>
Date: Fri, 13 Nov 2026 01:37:59 +0000
From: Lee Rhodes <leerho@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-123274: Apache DataSketches C++: Out-of-bounds write in KLL sketch deserialization allows memory corruption via a crafted sketch 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache DataSketches C++ 2.0.0-incubating through 5.3.0

Description:

Out-of-bounds Write vulnerability in Apache DataSketches C++. An
  application that deserializes a KLL sketch from an untrusted source
  can have heap memory corrupted by a crafted sketch, because the
  serialized level boundaries were not validated.

  This issue affects Apache DataSketches C++: 2.0.0 through 5.3.0.

  Users are recommended to upgrade to version 5.3.1, which fixes the
  issue.

Credit:

hataehoon (reporter)

References:

https://datasketches.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-123274

