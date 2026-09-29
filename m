X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/29/39
Message-ID: <3e118e07-dfd2-a71f-f790-6e903e54a146@apache.org>
Date: Tue, 29 Sep 2026 18:09:48 +0000
From: Thomas Wolf <twolf@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-94053: Apache MINA SSHD: LDAP injection in sshd-ldap 
Content-Type: text/plain; charset=utf-8

Severity: critical 
    CVSS 3.1: 9.1 (critical) CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:N

Affected versions:

- Apache MINA SSHD 1.2.0 before 2.20.0
- Apache MINA SSHD 3.0.0-M1 before 3.0.0-M6

Description:

Authentication bypass via LDAP injection in component sshd-ldap in Apache MINA SSHD versions 1.2.0 to 2.19.0 and 3.0.0-M1 to 3.0.0-M5.




Apache MINA SSHD is a Java library for client-side and server-side SSH. 
The optional sshd-ldap component provides support for integrating 
password and publickey authentication on the server side with an LDAP 
server.




sshd-ldap is an optional component. SSH servers implemented with Apache 
MINA SSHD are affected only if they use sshd-ldap and do configure it to be used for password of public key authentication.

Other Apache MINA SSHD servers are not affected.




Lack of escaping LDAP filter metacharacters enabled successful authentication with username "*" and password "*".




Users are recommended to upgrade affected applications to version 2.20.0 or 3.0.0-M6, which fix this issue by properly escaping filter parameters according to RFC 4515.

Credit:

Dilrevx (finder)
Ho1aAs <xxy010605@...il.com> (finder)

References:

https://mina.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-94053

