X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/20/18
Message-ID: <5d698b02-5bce-2adb-52c9-2f1f0bc385a2@apache.org>
Date: Mon, 20 Jul 2026 20:19:51 +0000
From: Thomas Wolf <twolf@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-58624: Apache MINA SSHD: Remote execution of JGit commands can write files on the server 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache MINA SSHD (org.apache.sshd:sshd-git) 2.0.0 through 2.18.0
- Apache MINA SSHD (org.apache.sshd:sshd-git) 3.0.0-M1 through 3.0.0-M4

Description:

Improper input validation in sshd-git in Apache MINA SSHD. Apache MINA SSHD is a Java library for client-side and server-side SSH.




Component org.apache.sshd:sshd-git provides though its GitPgmCommandFactory a way to configure an Apache MINA SSHD server such that SSH clients can remotely execute git commands via the JGit library on git repositories stored on the server.




This GitPgmCommandFactory allowed a user authenticated via SSH to run any JGit command available, including commands that could write files at arbitrary places such as git archive with the --output option.




Affected are SSH servers implemented with Apache MINA SSHD and using the GitPgmCommandFactory. If the GitPgmCommandFactory is not configured on the server, the server is not affected.




It is recommended to upgrade affected servers to Apache MINA SSHD 2.19.0 or 3.0.0-M5, which fix this issue.




The issue is fixed by restricting the available commands to a small whitelist of uncritical commands (such as git log). git archive is also allowed, but its --output argument is ignored and the archive is always sent through the SSH channel to the client.

Credit:

Unbbal (finder)

References:

https://mina.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-58624

