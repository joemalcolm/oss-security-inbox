X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/07/2
Message-ID: <1e7caa35-92c5-4cc4-848e-6e5e12df7103@cpansec.org>
Date: Mon, 7 Sep 2026 19:40:48 +0100
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-16028: Protocol::HTTP2 versions before 1.14 for Perl allow memory exhaustion via closed streams that stream_state never removes from the connection stream table
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-16028                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-16028
   Distribution:  Protocol-HTTP2
       Versions:  before 1.14

       MetaCPAN:  https://metacpan.org/dist/Protocol-HTTP2
       VCS Repo:  https://github.com/vlet/p5-Protocol-HTTP2


Protocol::HTTP2 versions before 1.14 for Perl allow memory exhaustion
via closed streams that stream_state never removes from the connection
stream table

Description
-----------
Protocol::HTTP2 versions before 1.14 for Perl allow memory exhaustion
via closed streams that stream_state never removes from the connection
stream table.

When a stream reaches the CLOSED state, stream_state returns the
concurrency slot and clears most of the stream's keys, but the entry
itself stays in the connection stream table and nothing in the
distribution removes it. Stream identifiers increase monotonically, so
a peer can open and close streams on one connection indefinitely, each
close leaving a residual entry that is retained for the life of the
connection.

SETTINGS_MAX_CONCURRENT_STREAMS does not bound this. That setting caps
how many streams are live at once and is enforced, while the growth is
made of streams the cap has already released, so it accumulates with
concurrency never exceeding one. The client keeps the same table and
grows the same way against a hostile server.

Measured against a server built on this module, roughly 920 bytes are
retained per closed stream for about 19 bytes on the wire, so 100,000
sequential streams on one connection grow server resident memory by
about 88 MiB. The streams are ordinary requests that the application
accepts and completes.

Problem types
-------------
- CWE-401 Missing Release of Memory after Effective Lifetime

Workarounds
-----------
For deployments that are not able to upgrade to Protocol-HTTP2 1.14,
close each connection after a fixed number of requests, which discards
its stream table.

Solutions
---------
Upgrade to Protocol-HTTP2 1.14 or later.

References
----------
https://metacpan.org/release/CRUX/Protocol-HTTP2-1.13/source/lib/Protocol/HTTP2/Stream.pm#L113-126
https://github.com/vlet/p5-Protocol-HTTP2/commit/27a488a34d74fd16f123e5e6186d4f677faa246f.patch
https://metacpan.org/release/CRUX/Protocol-HTTP2-1.14/changes



