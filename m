X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/29/33
Message-ID: <8dfd7223-113b-fdc8-8f71-2bf6f3a700b3@apache.org>
Date: Tue, 29 Sep 2026 18:06:55 +0000
From: Thomas Wolf <twolf@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-93994: Apache MINA SSHD: Repeated-publickey policy bypass on server 
Content-Type: text/plain; charset=utf-8

Severity: important 
    CVSS 3.1: 8.1 (high) CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U/C:H/I:H/A:N

Affected versions:

- Apache MINA SSHD before 2.20.0
- Apache MINA SSHD 3.0.0-M1 before 3.0.0-M6

Description:

Apache MINA SSHD is a Java library for client-side and server-side SSH. SSH servers can be configured to require multi-authentication schemes, for instance two different public keys, not just one. In OpenSSH, this would be done by setting in sshd_config AuthenticationMethods "publickey,publickey". Apache MINA SSHD provides an equivalent configuration mechanism.




In Apache MINA SSHD versions up to 2.19.0 and 3.0.0-M1 to 3.0.0-M5 the server code in component sshd-core does not enforce that the two public keys presented are different. A user can thus successfully authenticate with only one of the two key pairs required by presenting this single key twice. This is a partial authentication bypass.






Users are recommended to upgrade to version 2.20.0 or 3.0.0-M6, which fix this issue.

Credit:

Abhishek Kushwaha (finder)

References:

https://mina.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-93994

