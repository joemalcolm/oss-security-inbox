X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/29/34
Message-ID: <2e4af329-a6b9-978d-405e-83d37696c608@apache.org>
Date: Tue, 29 Sep 2026 18:07:39 +0000
From: Thomas Wolf <twolf@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-93995: Apache MINA SSHD: Remote execution of JGit "archive -o=file.zip" can write file on the server 
Content-Type: text/plain; charset=utf-8

Severity: moderate 
    CVSS 3.1: 6.5 (medium) CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U/C:N/I:H/A:N

Affected versions:

- Apache MINA SSHD before 2.20.0
- Apache MINA SSHD 3.0.0-M1 before 3.0.0-M6

Description:

Improper input validation in sshd-git in Apache MINA SSHD, versions up to 2.19.0 and 3.0.0-M1 to 3.0.0-M5. Apache 
MINA SSHD is a Java library for client-side and server-side SSH.




Component org.apache.sshd:sshd-git provides though class GitPgmCommandFactory a way to configure an Apache MINA SSHD server such 
that authenticated SSH clients can remotely execute git commands via the JGit library 
on git repositories stored on the server. In CVE-2026-58624 this mechanism was restricted to only a few git commands, including "git archive" without "--output" or "-o" options such that the resulting archive would not be written on the server but instead sent back to the client over the SSH connection.




The fix done for CVE-2026-58624 was insufficient as it missed removing the single-argument "-o=file.zip" version of the command parameter from the "archive" command.




Users are recommended to upgrade to version 2.20.0 or 3.0.0-M6, which fix this issue.

Credit:

Ho1aAs <xxy010605@...il.com> (finder)

References:

https://mina.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-93995

