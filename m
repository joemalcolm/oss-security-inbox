X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/25/11
Message-ID: <aj1JdafbLcKkL1My@pjcj.com>
Date: Thu, 25 Jun 2026 18:26:54 +0200
From: Paul Johnson <paul@...j.net>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-12844: List::SomeUtils::XS versions before 0.59 for Perl have a heap buffer overflow in the pairwise function
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-12844                                       CPAN Security Group
========================================================================

        CVE ID:  CVE-2026-12844
  Distribution:  List-SomeUtils-XS
      Versions:  before 0.59

      MetaCPAN:  https://metacpan.org/dist/List-SomeUtils-XS
      VCS Repo:  https://github.com/houseabsolute/List-SomeUtils-XS


List::SomeUtils::XS versions before 0.59 for Perl have a heap buffer
overflow in the pairwise function

Description
-----------
List::SomeUtils::XS versions before 0.59 for Perl have a heap buffer
overflow in the pairwise function.

pairwise() collects the values returned by the block into a heap buffer
sized to the longer input array, then grows the buffer before each copy
with a single quadrupling (alloc <<= 2) instead of a loop. A block call
that returns more than four times the current allocation in one
invocation outgrows that one quadrupling, and the copy writes past the
end of the buffer.

Any caller of pairwise() whose block returns, for a single pair, more
than four times the longer input array's length writes past the buffer
and corrupts the heap.

Problem types
-------------
- CWE-787 Out-of-bounds Write
- CWE-122 Heap-based Buffer Overflow

Solutions
---------
Upgrade to List::SomeUtils::XS 0.59 or later.


References
----------
https://github.com/houseabsolute/List-SomeUtils-XS/commit/22549f78669b780d6aa338a2d2e49a3dedfffaa6.patch
https://metacpan.org/release/DROLSKY/List-SomeUtils-XS-0.59/changes

-- 
Paul Johnson - paul@...j.net
