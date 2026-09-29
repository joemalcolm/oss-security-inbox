X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/29/35
Message-ID: <70d16e72-e163-6a82-0bbf-68160059cf4f@apache.org>
Date: Tue, 29 Sep 2026 18:08:03 +0000
From: Thomas Wolf <twolf@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-93996: Apache MINA SSHD: Memory exhaustion DoS via unbounded SCP command line read 
Content-Type: text/plain; charset=utf-8

Severity: moderate 
    CVSS 3.1: 6.5 (medium) CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U/C:N/I:N/A:H

Affected versions:

- Apache MINA SSHD before 2.20.0
- Apache MINA SSHD 3.0.0-M1 before 3.0.0-M6

Description:

Uncontrolled resource consumption in component ssd-scp in Apache MINA SSHD versions up to 2.19.0 or 3.0.0-M1 to 3.0.0-M5. Apache MINA SSHD is a Java library for client-side and server-side SSH.




Component sshd-scp of Apache MINA SSHD provides a Java implementation of SCP. The SCP command protocol is line-oriented with LF-terminated lines. The protocol handler in sshd-scp did not impose any limit on the length of such protocol lines. A malicious peer just sending a junk command containing a never-ending sequence of characters but never a LF would cause the receiver to allocate memory to store this whole junk command, exhausting memory and crashing the application with an OutOfMemoryError.




Users are recommended to upgrade to version 2.20.0 or 3.0.0-M6, which fix this issue by enforcing an upper limit on the length of SCP protocol lines.

Credit:

Ho1aAs <xxy010605@...il.com> (finder)

References:

https://mina.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-93996

