X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/08/29/3
Message-ID: <87zk5dy3dl.fsf@mid.deneb.enyo.de>
Date: Wed, 29 Aug 2012 20:11:50 +0200
From: Florian Weimer <fw@...eb.enyo.de>
To: oss-security@...ts.openwall.com
Subject: CVE-2012-3509: objalloc_alloc integer overflows in libiberty
Content-Type: text/plain; charset=utf-8

Sang Kil Cha discovered that _objalloc_alloc does not guard the
addition of CHUNK_HEADER_SIZE to the length against overflow.  This
can cause _objalloc_alloc to return a pointer to a memory region which
is smaller than expected.

The pointer alignment arithmetic in the objalloc_alloc macro misses an
overflow check as well, with similar consequences.

GCC bug:

http://gcc.gnu.org/bugzilla/show_activity.cgi?id=54411

Patch under review:

http://gcc.gnu.org/ml/gcc-patches/2012-08/msg01986.html

(I believe GCC has the master copy of this file, but does not use it
itself.  libiberty is part of binutils and GDB, too.)
