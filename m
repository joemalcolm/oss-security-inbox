X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/20/15
Message-ID: <adace63e-a27a-a6a3-95e9-34122459b60d@apache.org>
Date: Mon, 20 Jul 2026 20:19:10 +0000
From: Thomas Wolf <twolf@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-56452: Apache MINA SSHD: Path traversal in SCP file reception 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache MINA SSHD (org.apache.sshd:sshd-scp) through 2.18.0
- Apache MINA SSHD (org.apache.sshd:sshd-scp) 3.0.0-M1 through 3.0.0-M4

Description:

Path traversal in the sshd-scp component of Apache MINA SSHD. Apache MINA SSHD is a Java library for client-side and server-side SSH.




The implementation of receiving files or directories via SCP did not validate filenames in SCP "C" or "D" commands. A malicious sender could send filenames containing paths, resulting in files to be written in attacker-controlled places.




The issue affects only

  *  applications that use no longer supported Apache MINA SSHD versions < 2.0.0 and use the SCP functions to receive files,
  *  or applications using sshd-scp in Apache MINA SSHD >= 2.0.0 to receive files.




Applications using Apache MINA SSHD >= 2.0.0 not using sshd-scp are not affected.




The issue is fixed in Apache MINA 2.19.0 and 3.0.0-M5. Affected applications are advised to upgrade to these versions.

Credit:

Unbbal (finder)

References:

https://mina.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-56452

