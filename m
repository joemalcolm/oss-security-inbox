X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/31/1
Message-ID: <f5db7c46-026f-4ce8-8d8a-9e9cc1990e81@oracle.com>
Date: Fri, 30 Oct 2026 17:23:45 -0700
From: Alan Coopersmith <alan.coopersmith@...cle.com>
To: oss-security@...ts.openwall.com
Subject: Fwd: GNU mtools 4.0.50 released, fixes CVE-2026-118384
Content-Type: text/plain; charset=utf-8

https://www.cve.org/CVERecord?id=CVE-2026-118384 says
"GNU mtools through 4.0.49 has an out-of-bounds write in parse_vses in vfat.c."

https://lists.gnu.org/archive/html/info-mtools/2026-10/msg00002.html
appears to be the bug report.

-------- Forwarded Message --------
Subject: 	GNU mtools 4.0.50 released
Date: 	Fri, 30 Oct 2026 23:31:00 +0100
From: 	Alain Knaff <alain@...ff.lu>
To: 	info-gnu@....org, info-mtools@....org

Hello,

I am pleased to announce the release of GNU mtools version 4.0.50

GNU mtools is available for download from
http://ftp.gnu.org/gnu/mtools and the mirror sites worldwide (see
http://www.gnu.org/prep/ftp.html for the list of those).

The sources can be obtained from ftp.gnu.org and its world-wide mirrors:

    http://ftp.gnu.org/gnu/mtools/mtools-4.0.50.tar.gz    (541K)
    SHA-1: d8aab5f83964b1e2158dd95298ee69f0ef525c3a

    http://ftp.gnu.org/gnu/mtools/mtools-4.0.50.tar.bz2   (455K)
    SHA-1: eb0cdb3ddfeb048b1fd62d273fd0b0931ee685b5

    http://ftp.gnu.org/gnu/mtools/mtools-4.0.50.tar.lz    (391K)
    SHA-1: 319b076eb55677d086cd32b5e93b30f797f6fde3


The same directory also contains pre-compiled Debian packages.

Mtools is a collection of utilities to access MS-DOS disks from GNU
and Unix without mounting them, to change FAT-specific file attributes
(hidden, archive, system), and to format FAT media.

Mtools supports W32 style long file names, FAT32, OS/2 Xdf disks and
2m disks (store up to 1992k on a high density 3 1/2 disk). Mtools also
includes mpartition, a simple partitioning programing. It is also a
convenient tool to work with disk image files (thanks to the -i flag).

For more information on mtools, including links to file downloads,
please see the mtools web page: http://www.gnu.org/software/mtools

Please email bugs or suggestions to <info-mtools@....org>.

Improvements since the 4.0.49 release are:
	- Fix CVE-2026-118384

Copying and distribution of this file, with or without modification,
are permitted in any medium without royalty provided the copyright
notice and this notice are preserved.

Regards,

Alain

