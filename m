X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/24/5
Message-ID: <e6d73d03-e325-f1c9-2568-942a1b9a1b80@apache.org>
Date: Tue, 24 Nov 2026 08:23:05 +0000
From: Jean-Baptiste Onofré <jbonofre@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-129959: Apache Karaf: SFTP SCP file transfer on the SSH port bypasses the command ACL entirely 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Karaf through 4.4.12

Description:

When sftpEnabled=true (the default configuration in etc/org.apache.karaf.shell.cfg), the SSH server exposes the karaf.base directory tree through the MINA SSHD SFTP subsystem and SCP command factory without verifying the authenticated user's roles beyond the initial sshRole login check. Consequently, an authenticated user with only low-privileged roles (such as viewer and ssh) can read sensitive configuration and key files (including etc/users.properties and etc/host.key) or write arbitrary bundles/configurations into monitored directories (such as deploy/ or etc/), leading to privilege escalation and arbitrary code execution.


Apache Karaf 4.4.13 and 4.5.0 introduce the sftpRole configuration property in org.apache.karaf.shell (defaulting to admin) and enforce role-based access control on SFTP subsystem creation, SCP command execution, and virtual filesystem access.

Mitigation / WorkaroundUsers are recommended to upgrade to Apache Karaf 4.4.13 or 4.5.0.




On earlier versions where SFTP/SCP access is not required, set sftpEnabled=false in etc/org.apache.karaf.shell.cfg and restart the SSH server bundle (or Karaf instance).

Credit:

"wict0rious ." <wict0rious@...look.com> (reporter)

References:

https://karaf.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-129959

