X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/04/12/17
Message-ID: <4DA4C9C5.7020806@pre-sense.de>
Date: Tue, 12 Apr 2011 23:53:09 +0200
From: Timo Warns <warns@...-sense.de>
To: oss-security@...ts.openwall.com
Subject: CVE Request: kernel: fs/partitions: Corrupted GUID partition tables can cause kernel oops
Content-Type: text/plain; charset=utf-8

The Linux kernel automatically evaluates partition tables of storage
devices. The code for evaluating EFI GUID partitions (in
fs/partitions/efi.c) contains a bug that causes a kernel oops on certain
corrupted GUID partition tables.

A patch is available at
http://www.spinics.net/lists/mm-commits/msg83274.html

Cheers, Timo
