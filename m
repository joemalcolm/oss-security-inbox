X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/04/30/1
Message-ID: <20080430134352.GA14352@suse.de>
Date: Wed, 30 Apr 2008 15:43:53 +0200
From: Marcus Meissner <meissner@...e.de>
To: oss-security@...ts.openwall.com, security@...nel.org
Subject: security problem in ESP fragment handling?
Content-Type: text/plain; charset=utf-8

Hi folks,

We came across this commit and think it is security relevant...

http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commitdiff;h=920fc941a9617f95ccb283037fe6f8a38d95bb69

This will at least hang the networking of the system if triggered.


According to Karsten Keil just ESP fragment packets need to be accepted
by the kernel to trigger the condition.
We think this might be true for all 2.6 kernels (ever since esp.c got added).

Ciao, Marcus
