X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/16/35
Message-ID: <CAGypqWx1S3hHNxn1OMFjKJY4r3Mj2JibFptRBDoGPwAeUoY7gA@mail.gmail.com>
Date: Fri, 16 Oct 2026 06:53:03 +0000
From: Bharath SM <bharathsm.hsk@...il.com>
To: oss-security@...ts.openwall.com
Cc: Pavel Shilovsky <piastryyy@...il.com>, Paulo Alcantara <pc@...guebit.org>,  Johnathan Benge <johnathanbenge@...il.com>, Shyam Prasad N <sprasad@...rosoft.com>
Subject: CVE-2026-104715: cifs-utils 4.2-7.8 mount-option injection in mount.cifs
Content-Type: text/plain; charset=utf-8

cifs-utils 7.9 fixes a mount-option injection vulnerability in
mount.cifs that can allow local privilege escalation in affected
privileged mounting configurations.

Affected versions: cifs-utils-4.2 - cifs-utils-7.8

Users are recommended to upgrade to version cifs-utils 7.9,
which fixes the issue. Distributors can alternatively backport
the fixes.


Credit:
Johnathan Benge (reporter)
Paulo Alcantara (patch author)

cifs-utils 7.9 release:
webpage: https://wiki.samba.org/index.php/LinuxCIFS_utils
tarball: https://download.samba.org/pub/linux-cifs/cifs-utils/
git: git://git.samba.org/cifs-utils.git
gitweb: http://git.samba.org/?p=cifs-utils.git;a=summary
