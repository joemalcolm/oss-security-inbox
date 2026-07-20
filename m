X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/20/17
Message-ID: <c4a212b1-4bac-0b0a-3e75-5ad8739011a4@apache.org>
Date: Mon, 20 Jul 2026 20:19:33 +0000
From: Thomas Wolf <twolf@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-56624: Apache MINA SSHD: SSH certificate options lack validations 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache MINA SSHD (org.apache.sshd:sshd-core) 2.0.0 through 2.18.0
- Apache MINA SSHD (org.apache.sshd:sshd-core) 3.0.0-M1 through 3.0.0-M4

Description:

Improper certificate validation in Apache MINA SSHD (server-side). Apache MINA SSHD is a Java library for client-side and server-side SSH.




Server-side OpenSSH user certificate validation during user authentication in an Apache MINA SSHD server did not check for the unsupported force-command or verify-required options that could be embedded in the certificate, nor did it validate these options. As a result it was possible that a user could authenticate with such a certificate that included a force-command option but still was able to execute other commands. What other command exactly would be available to the user depends on the implementation of the server.




This issue is fixed in Apache MINA SSHD 2.19.0 and 3.0.0-M5. Applications are advised to upgrade to these versions.




The fix rejects OpenSSH user certificates that include these options, since Apache MINA SSHD implements neither force-command nor sk-*-cert-v01@...nssh.com user certificates (which are the only ones for which verify-required would make sense).

Credit:

Mitchell Benjamin (finder)

References:

https://mina.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-56624

