X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/20/16
Message-ID: <2a3ded49-8743-d330-e514-913835543b1c@apache.org>
Date: Mon, 20 Jul 2026 20:19:18 +0000
From: Thomas Wolf <twolf@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-56623: Apache MINA SSHD: Path traversal in org.apache.sshd:sshd-git on Windows 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache MINA SSHD (org.apache.sshd:sshd-git) 2.0.0 through 2.18.0
- Apache MINA SSHD (org.apache.sshd:sshd-git) 3.0.0-M1 through 3.0.0-M4

Description:

Path traversal on Windows in Apache MINA SSHD component sshd-git. Apache MINA SSHD is a Java library for client-side and server-side SSH.




A git server implemented with Apache MINA SSHD component sshd-git and running on Windows could allow an authenticated remote user access to git repositories outside of the configured server-side root directory. The path validation applied for CVE-2026-48827 in Apache MINA SSHD 2.18.0 and 3.0.0-M4 was partly ineffective for Servers running on Windows.




Applications are affected if they use org.apache.sshd:sshd-git to implement a git server and run on Windows. Applications not using sshd-git or not running on Windows are not affected.




Users are advised to upgrade affected applications to Apache MINA SSHD 2.19.0, which fixes the issue.




The issue also is present in the pre-release milestones 3.0.0-M1 to 3.0.0-M4 for a new upcoming new major version 3.0.0. Again, applications are affected only if they use sshd-git and run on Windows. Upgrade affected applications to 3.0.0-M5.

Credit:

Unbbal (finder)

References:

https://mina.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-56623

