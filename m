X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/29/36
Message-ID: <1c209b9c-8329-35cf-a2b2-697c601bda96@apache.org>
Date: Tue, 29 Sep 2026 18:08:36 +0000
From: Thomas Wolf <twolf@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-94002: Apache MINA SSHD: Memory exhaustion in SFTP client via unsolicited SFTP replies 
Content-Type: text/plain; charset=utf-8

Severity: moderate 
    CVSS 3.1: 7.5 (high) CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H

Affected versions:

- Apache MINA SSHD 0.9.0 before 2.20.0
- Apache MINA SSHD 3.0.0-M1 before 3.0.0-M6

Description:

Possible memory exhaustion in SFTP clients (DefaultSftpClient) in component sshd-sftp in Apache MINA SSHD versions 0.9.0 to 2.19.0 and 3.0.0-M1 to 3.0.0-M5.




Apache 
MINA SSHD is a Java library for client-side and server-side SSH. The sshd-sftp component provides support for SFTP.




The SFTP client implementation, when receiving a reply, did not check that this reply corresponded to a request sent earlier. Unsolicited replies would be stored but never consumed. A malicious server could keep sending unsolicited replies until available memory in the client was exhausted.




Users are recommended to upgrade to version 2.20.0 or 3.0.0-M6, which fix this issue.

Credit:

Ho1aAs <xxy010605@...il.com> (finder)

References:

https://mina.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-94002

