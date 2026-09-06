X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/06/2
Message-ID: <87v78ib6bt.fsf@v45346.1blu.de>
Date: Sun, 06 Sep 2026 20:08:54 +0200
From: Stefan Bodewig <bodewig@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-78254: Apache Ant: Path traversal in ftp and scp tasks allows arbitrary file write 
Content-Type: text/plain; charset=utf-8

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

Severity: moderate 

Affected versions:

- - Apache Ant (org.apache.ant:ant) 1.2 before 1.10.18

Description:

The ftp and scp tasks of Apache Ant can download files from a remote
server. A malicious server can provide relative paths that allow it to
write outside of the dedicated target directory for the download, making
it possible to overwrite files of the attacker's choice using the
permissions of the user running Ant in versions prior to Ant 1.10.18.

In order to exploit this vulnerability, the server would either have to
be malicious or be subject to a machine-in-the-middle
attack. Additionally in the case of scp or the ftp task using ftps the
server must pass the server identity checks performed by the tasks.

For ftp tasks not using ftps a malicious server could act as a
machine-in-the-middle to provide malicious files.

Starting with Ant 1.10.18 both tasks will prevent writing outside of the
destination directory by default. An option is available to disable this
behavior in the unlikely case that the old behavior is required by
existing build files.

Mitigations:

Users of scp and ftp (when using ftps) in any version of Ant should not
bypass server identity checks. Users of ftp not using ftps should switch
to ftps where possible.

All users are recommended to upgrade to Apache Ant 1.10.18, which fixes
this issue.

References:

https://ant.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-78254
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAmqdrDYACgkQohFa4V9ri3I5qACfcG2HDTmYacy8+gH61R+JXo5k
qJoAnR8LgcxQirXqj5mwVacgFR5ZXVLX
=iAQR
-----END PGP SIGNATURE-----
