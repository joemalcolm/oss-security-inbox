X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/21/9
Message-ID: <3f6272ea-a2ca-41e7-b30c-bee6fcec3643@cpansec.org>
Date: Tue, 21 Jul 2026 20:43:20 +0100
From: Robert Rothenberg <rrwo@...nsec.org>
To: oss-security@...ts.openwall.com
Subject: Multiple vulnerabilities fixed in various Data::*::Shared modules for Perl
Content-Type: text/plain; charset=utf-8

Summary: There are 23 vulnerabilities. See 
https://lists.security.metacpan.org/cve-announce/dates/2026/07/ for details.

Subject: CVE-2026-59139: Data::ReqRep::Shared versions before 0.05 for 
Perl allow an out-of-bounds read via an unvalidated arena offset and 
length in reqrep_recv_locked

Subject: CVE-2026-59140: Data::SortedSet::Shared versions before 0.03 
for Perl allow an out-of-bounds read via unvalidated node indices in the 
rank and min/max query paths

Subject: CVE-2026-59141: Data::RadixTree::Shared versions before 0.02 
for Perl allow an out-of-bounds read via unvalidated node and arena 
indices in rdx_find_locked

Subject: CVE-2026-59142: Data::HashMap::Shared versions before 0.14 for 
Perl allow an out-of-bounds read via an unvalidated arena offset and 
length in shm_str_copy

Subject: CVE-2026-59143: Data::RoaringBitmap::Shared versions before 
0.02 for Perl allow an out-of-bounds read via an unvalidated container 
offset and cardinality in rb_contains_locked

Subject: CVE-2026-59144: Data::RingBuffer::Shared versions before 0.04 
for Perl allow a stack buffer overflow via an unvalidated elem_size in 
ring_read_seq

Subject: CVE-2026-59145: Data::Intern::Shared versions before 0.02 for 
Perl allow an out-of-bounds read via unvalidated slot, reverse and arena 
indices in si_idx_find

Subject: CVE-2026-59146: Data::SpatialHash::Shared versions before 0.02 
for Perl allow out-of-bounds reads and writes via unvalidated bucket, 
link and free-list indices in sph_walk_cell and sph_alloc_slot

Subject: CVE-2026-59147: Data::DisjointSet::Shared versions before 0.02 
for Perl allow out-of-bounds reads and writes via an unvalidated parent 
index in dsu_find

Subject: CVE-2026-64613: Data::Buffer::Shared versions before 0.05 for 
Perl create a world-readable mmap backing file and open it without 
O_NOFOLLOW

Subject: CVE-2026-64614: Data::Deque::Shared versions before 0.06 for 
Perl create a world-readable mmap backing file and open it without 
O_EXCL or O_NOFOLLOW

Subject: CVE-2026-64615: Data::Graph::Shared versions before 0.04 for 
Perl create a world-readable mmap backing file and open it without 
O_EXCL or O_NOFOLLOW

Subject: CVE-2026-64616: Data::NDArray::Shared versions before 0.02 for 
Perl create a world-readable mmap backing file and open it without 
O_EXCL or O_NOFOLLOW

Subject: CVE-2026-64617: Data::PubSub::Shared versions before 0.07 for 
Perl create a world-readable mmap backing file and open it without 
O_EXCL or O_NOFOLLOW

Subject: CVE-2026-65061: Data::ReqRep::Shared versions before 0.05 for 
Perl create a world-readable mmap backing file and open it without 
O_EXCL or O_NOFOLLOW

Subject: CVE-2026-65062: Data::SortedSet::Shared versions before 0.03 
for Perl create a world-readable mmap backing file and open it without 
O_EXCL or O_NOFOLLOW

Subject: CVE-2026-65063: Data::RadixTree::Shared versions before 0.02 
for Perl create a world-readable mmap backing file and open it without 
O_EXCL or O_NOFOLLOW

Subject: CVE-2026-65064: Data::HashMap::Shared versions before 0.14 for 
Perl create a world-readable mmap backing file and open it without 
O_EXCL or O_NOFOLLOW

Subject: CVE-2026-65065: Data::RoaringBitmap::Shared versions before 
0.02 for Perl create a world-readable mmap backing file and open it 
without O_EXCL or O_NOFOLLOW

Subject: CVE-2026-65066: Data::RingBuffer::Shared versions before 0.04 
for Perl create a world-readable mmap backing file and open it without 
O_EXCL or O_NOFOLLOW

Subject: CVE-2026-65067: Data::Intern::Shared versions before 0.02 for 
Perl create a world-readable mmap backing file and open it without 
O_EXCL or O_NOFOLLOW

Subject: CVE-2026-65068: Data::SpatialHash::Shared versions before 0.02 
for Perl create a world-readable mmap backing file and open it without 
O_EXCL or O_NOFOLLOW

Subject: CVE-2026-65069: Data::DisjointSet::Shared versions before 0.02 
for Perl create a world-readable mmap backing file and open it without 
O_EXCL or O_NOFOLLOW

