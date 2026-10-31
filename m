X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/31/3
Message-ID: <02205151-0b85-ad46-5e72-e81f1dbf69ea@apache.org>
Date: Sat, 31 Oct 2026 08:01:38 +0000
From: Emmanuel Lécharny <elecharny@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-118636: Apache MINA: Unsafe Deserialization (CWE-502) in JavaNativeMessageDecoder 
Content-Type: text/plain; charset=utf-8

Severity: critical 
    CVSS 3.1: 9.8 (critical) CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:H

Affected versions:

- Apache MINA 3.0.0 through 3.0.0-M2

Description:

**UNSUPPORTED WHEN ASSIGNED** 

JavaNativeMessageDecoder in the MINA 3.0 codec module calls ObjectInputStream.readObject() on frame bytes with no class filter, so an
application that puts it in front of an untrusted peer is open to gadget-chain RCE.

As the 3.0.0 branch is inactive, we do not plan to release a version that fixes this issue. 

Users are recommended to use the latest Apache MINA 2.2.X branch.

Credit:

Nguyen Cuong (cuongbeo090704@...il.com) (reporter)

References:

https://www.cve.org/CVERecord?id=CVE-2026-118636
https://mina.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-118636

