X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/07/07/3
Message-ID: <8a1b0d74-3dc0-1228-1bf1-d086ad7d84e1@apache.org>
Date: Fri, 07 Jul 2023 12:34:46 +0000
From: Guillaume Nodet <gnodet@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2023-35887: Apache MINA SSHD: Information disclosure bugs with RootedFilesystem 
Content-Type: text/plain; charset=utf-8

Affected versions:

- Apache MINA SSHD 1.0 before 2.10

Description:

Exposure of Sensitive Information to an Unauthorized Actor vulnerability in Apache Software Foundation Apache MINA.

In SFTP servers implemented using Apache MINA SSHD that use a RootedFileSystem, logged users may be able to discover "exists/does not exist" information about items outside the rooted tree via paths including parent navigation ("..") beyond the root, or involving symlinks.

This issue affects Apache MINA: from 1.0 before 2.10.

Thanks to Andrew Pikler for discovering the issue and helping to fix it.

This issue is being tracked as SSHD-1324 

References:

https://mina.apache.org/
https://www.cve.org/CVERecord?id=CVE-2023-35887
https://issues.apache.org/jira/browse/SSHD-1324

