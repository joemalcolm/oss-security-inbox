X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/31/3
Message-ID: <20260731093051.36478e82@plasteblaster>
Date: Fri, 31 Jul 2026 09:30:51 +0200
From: "Dr. Thomas Orgis" <thomas.orgis@...-hamburg.de>
To: Marco Benatto <mbenatto@...hat.com>
CC: <oss-security@...ts.openwall.com>, "Darrick J. Wong" <djwong@...nel.org>
Subject: Re: RefluXFS: LPE in the Linux kernel via XFS reflink race (CVE-2026-64600)
Content-Type: text/plain; charset=utf-8

Am Wed, 22 Jul 2026 18:07:03 -0300
schrieb Marco Benatto <mbenatto@...hat.com>:

> While disabling reflink once the filesystem is created is not possible
> we manage to mitigate the issue using the following SystemTap script:

I'm a bit late, but I do wonder if the issue also pertains to XFS fs
exported via NFS. It seems like the reflink feature is passed through,
but so far I was not able reproduce using

	https://github.com/litosmartin/CVE-2026-64600-Refluxfs-PoC/blob/main/refluxfs.c

I guess the race condition is avoided when going through the NFS stack,
but maybe only by chance. The poc ran unsuccessfully for several
minutes over NFS while it is successful _instantly_ locally on the NFS
server.

Anyone got insight on this? XFS behind NFS should also be quite common
… though I had to adapt the exploit code not to work on /etc/password,
which is on on the NFS and thus limits the impact not to system
compromise, but on one user manipulating files of another user, which
is bad enough in my book.


Alrighty then,

Thomas
-- 
Dr. Thomas Orgis
HPC @ Universität Hamburg
