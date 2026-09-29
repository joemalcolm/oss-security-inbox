X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/29/37
Message-ID: <9aa2f452-4aaf-494b-3cb4-2787d15178d6@apache.org>
Date: Tue, 29 Sep 2026 18:08:57 +0000
From: Thomas Wolf <twolf@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-94029: Apache MINA SSHD: Memory exhaustion in SFTP v6 check-file-name/check-file-handle extension 
Content-Type: text/plain; charset=utf-8

Severity: moderate 
    CVSS 3.1: 6.5 (medium) CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U/C:N/I:N/A:H

Affected versions:

- Apache MINA SSHD 1.0.0 before 2.20.0
- Apache MINA SSHD 3.0.0-M1 before 3.0.0-M6

Description:

Server-side memory exhaustion in Apache MINA SSHD 1.0.0 to 2.19.0 and 3.0.0-M1 to 3.0.0-M5, component sshd-sftp, in the SFTP v6 check-file-name/check-file-handle extension. Apache MINA SSHD is a Java library for client-side and server-side SSH.




Using a very small "block size" (for instance 256, which is the minimum) on a huge file generates many (file size / block size) hashes. The resulting SFTP reply message was accumulated fully in memory server-side, which could, with a suitably large (possibly sparse) file exhaust the server-side memory, taking down the server.




Users are recommended to upgrade to version 2.20.0 or 3.0.0-M6, which fix this issue by imposing a maximum limit on the size of the reply. Many SFTP implementations have a general limit on the size of SFTP messages anyway; typically 256kB as in OpenSSH or also in Apache MINA SSHD.

Credit:

Ho1aAs <xxy010605@...il.com> (finder)

References:

https://mina.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-94029

