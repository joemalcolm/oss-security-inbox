X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/29/32
Message-ID: <deb8726f-12be-c45d-9d70-b501edd25a14@apache.org>
Date: Tue, 29 Sep 2026 18:06:15 +0000
From: Thomas Wolf <twolf@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-77185: Apache MINA SSHD: Asynchronous authentication can bypass signature verification 
Content-Type: text/plain; charset=utf-8

Severity: critical 
    CVSS 3.1: 9.1 (critical) CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:N

Affected versions:

- Apache MINA SSHD (org.apache.sshd:sshd-core) 2.0.0 before 2.20.0
- Apache MINA SSHD (org.apache.sshd:sshd-core) 3.0.0-M1 before 3.0.0-M6

Description:

Authentication bypass in sshd-core in Apache MINA SSHD versions 2.0.0 to 2.19.0 and 3.0.0-M1 to 3.0.0-M5 for a certain (presumed rare) way to implement an SSH server.




Apache MINA SSHD is a Java library for client- and server-side SSH. In the server part of the library, a mechanism to perform "asynchronous authentication" exists. A server implemented with Apache MINA SSHD must contain explicit code to make use of this feature. The implementation of this feature was flawed and could potentially lead to skipping checking the signature in public-key or hostbased authentication, or returning a wrong result.




Users are recommended to upgrade to Apache MINA SSHD 2.20.0 or 3.0.0-M6, which fix the logic error and which additionally forbid the use of this "asynchronous authentication" mechanism with the public-key or hostbased authentication schemes: if used, the SSH session will be closed and the server will log an entry indicating that asynchronous authentication may be used only with password or keyboard-interactive authentication.

Credit:

Chris Jarret-Davies, OpenAI Security Research Team (finder)

References:

https://mina.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-77185

