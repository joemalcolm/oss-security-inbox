X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/11/16/1
Message-ID: <9de91c88-8c85-77d2-8846-07244ed4630e@apache.org>
Date: Tue, 15 Nov 2022 23:08:17 +0000
From: Thomas Wolf <twolf@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2022-45047: Apache MINA SSHD: Java unsafe deserialization vulnerability 
Content-Type: text/plain; charset=utf-8

Severity: important

Description:

Class org.apache.sshd.server.keyprovider.SimpleGeneratorHostKeyProvider in Apache MINA SSHD <= 2.9.1 uses Java deserialization to load a serialized java.security.PrivateKey. The class is one of several implementations that an implementor using Apache MINA SSHD can choose for loading the host keys of an SSH server.

Mitigation:

For Apache MINA SSHD <= 2.9.1, do not use org.apache.sshd.server.keyprovider.SimpleGeneratorHostKeyProvider to generate and later load your server's host key. Use separately generated host key files, for instance in OpenSSH format, and load them via a org.apache.sshd.common.keyprovider.FileKeyPairProvider instead. Or use a custom implementation instead of SimpleGeneratorHostKeyProvider that uses the OpenSSH format for storing and loading the host key (via classes OpenSSHKeyPairResourceWriter and OpenSSHKeyPairResourceParser).

The issue was fixed in Apache MINA SSHD 2.9.2. 

Credit:

The Apache MINA SSHD team would like to thank Zhang Zewei, NOFOCUS, for reporting this issue.

