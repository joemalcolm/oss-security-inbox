X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/08/26/4
Message-ID: <20140826083308.GD29372@suse.de>
Date: Tue, 26 Aug 2014 10:33:08 +0200
From: Marcus Meissner <meissner@...e.de>
To: OSS Security List <oss-security@...ts.openwall.com>
Subject: CVE Request: Linux Kernel unbound recursion in ISOFS
Content-Type: text/plain; charset=utf-8

Hi,

>From the google security research team:
https://code.google.com/p/google-security-research/issues/detail?id=88

fixed in
https://github.com/torvalds/linux/commit/410dd3cf4c9b36f27ed4542ee18b1af5e68645a4
commit 410dd3cf4c9b36f27ed4542ee18b1af5e68645a4
Author: Jan Kara <jack@...e.cz>
Date:   Sun Aug 17 11:49:57 2014 +0200

    isofs: Fix unbounded recursion when processing relocated directories

    We did not check relocated directory in any way when processing Rock
    Ridge 'CL' tag. Thus a corrupted isofs image can possibly have a CL
    entry pointing to another CL entry leading to possibly unbounded
    recursion in kernel code and thus stack overflow or deadlocks (if there
    is a loop created from CL entries).

    Fix the problem by not allowing CL entry to point to a directory entry
    with CL entry (such use makes no good sense anyway) and by checking
    whether CL entry doesn't point to itself.

    CC: stable@...r.kernel.org
    Reported-by: Chris Evans <cevans@...gle.com>
    Signed-off-by: Jan Kara <jack@...e.cz>

This still needs a CVE.

Ciao, Marcus
