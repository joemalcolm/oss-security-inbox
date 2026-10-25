X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/26/11
Message-ID: <d5af87b5-9669-4c27-8a2f-e69a1ab5a148@cpansec.org>
Date: Sun, 25 Oct 2026 16:57:23 +0000
From: Robert Rothenberg <rrwo@...nsec.org>
To: oss-security@...ts.openwall.com
Subject: Starman versions before 0.4019 for Perl (4 CVEs)
Content-Type: text/plain; charset=utf-8

CVE-2026-115817
   Starman versions before 0.4019 for Perl allow a stalled request body
   to hold a worker indefinitely, as read_timeout covers only the
   headers

CVE-2026-115822
   Starman versions before 0.4019 for Perl allow CPU exhaustion via
   quadratic regex backtracking when parsing chunked request bodies

CVE-2026-115823
   Starman versions before 0.4019 for Perl send response bodies for HEAD
   requests, desynchronizing responses on keep-alive connections

CVE-2026-115824
   Starman versions before 0.4019 for Perl allow memory exhaustion via
   unbounded buffering of chunked request bodies


========================================================================
CVE-2026-115817                                      CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-115817

   Distribution:  Starman
       Versions:  before 0.4019
       MetaCPAN:  https://metacpan.org/dist/Starman
       VCS Repo:  https://github.com/miyagawa/Starman


Starman versions before 0.4019 for Perl allow a stalled request body to
hold a worker indefinitely, as read_timeout covers only the headers

Description
-----------
Starman versions before 0.4019 for Perl allow a stalled request body to
hold a worker indefinitely, as read_timeout covers only the headers.

Content-Length and chunked request bodies are read with blocking reads
and no deadline. A client that sends complete headers and then stalls
or trickles the body keeps the worker waiting until it disconnects.

A remote attacker can take every worker with a few such connections,
five with the default worker count, so the server stops answering
requests.

Version 0.4019 applies read_timeout to each wait for body data and adds
a body_timeout limit, 300 seconds by default, on the total time to read
a body.

Problem types
-------------
- CWE-770 Allocation of Resources Without Limits or Throttling

Solutions
---------
Upgrade to Starman 0.4019 or later.

References
----------
https://github.com/miyagawa/Starman/commit/89dffd3bdc9baa1cbe1b48a43615586ba2588558.patch
https://github.com/miyagawa/Starman/commit/a30533c03051502d6b67cd48b3a95a61e129691b.patch
https://metacpan.org/release/MIYAGAWA/Starman-0.4019/changes


========================================================================
CVE-2026-115822                                      CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-115822

   Distribution:  Starman
       Versions:  before 0.4019
       MetaCPAN:  https://metacpan.org/dist/Starman
       VCS Repo:  https://github.com/miyagawa/Starman


Starman versions before 0.4019 for Perl allow CPU exhaustion via
quadratic regex backtracking when parsing chunked request bodies

Description
-----------
Starman versions before 0.4019 for Perl allow CPU exhaustion via
quadratic regex backtracking when parsing chunked request bodies.

Starman decodes chunked request bodies before calling the application,
matching each chunk-size line with `s/^(([0-9a-fA-F]+).*\015\012)//`. A
line of hex digits followed by a bare LF and then CRLF never matches,
because `.` does not match LF, and each failed attempt backtracks in
time quadratic in the length of the hex run. Nothing limits the length
of the line.

A remote attacker can exhaust worker CPU by sending such requests to
any route.

Problem types
-------------
- CWE-1333 Inefficient Regular Expression Complexity

Solutions
---------
Upgrade to Starman 0.4019 or later.

References
----------
https://github.com/miyagawa/Starman/commit/0f33f9b132b5e410d6cce722ff71988e22476acf.patch
https://metacpan.org/release/MIYAGAWA/Starman-0.4019/changes


========================================================================
CVE-2026-115823                                      CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-115823

   Distribution:  Starman
       Versions:  before 0.4019
       MetaCPAN:  https://metacpan.org/dist/Starman
       VCS Repo:  https://github.com/miyagawa/Starman


Starman versions before 0.4019 for Perl send response bodies for HEAD
requests, desynchronizing responses on keep-alive connections

Description
-----------
Starman versions before 0.4019 for Perl send response bodies for HEAD
requests, desynchronizing responses on keep-alive connections.

For a HEAD request Starman omits chunked framing but still writes the
body returned by the application, on both the array and streaming
response paths. Responses with a 1xx, 204 or 304 status also carry the
body.

On a keep-alive or pipelined connection the client reads those bytes as
the start of the next response. A front-end proxy that reuses upstream
connections may then pair responses with the wrong requests.

Problem types
-------------
- CWE-444 Inconsistent Interpretation of HTTP Requests ('HTTP
   Request/Response Smuggling')

Workarounds
-----------
For deployments that cannot upgrade to 0.4019, enable
Plack::Middleware::Head, which removes the body from HEAD responses.

Solutions
---------
Upgrade to Starman 0.4019 or later.

References
----------
https://github.com/miyagawa/Starman/commit/91c47c529cd1e100f938486896ea9083ec3ec7bf.patch
https://metacpan.org/release/MIYAGAWA/Starman-0.4019/changes


========================================================================
CVE-2026-115824                                      CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-115824

   Distribution:  Starman
       Versions:  before 0.4019
       MetaCPAN:  https://metacpan.org/dist/Starman
       VCS Repo:  https://github.com/miyagawa/Starman


Starman versions before 0.4019 for Perl allow memory exhaustion via
unbounded buffering of chunked request bodies

Description
-----------
Starman versions before 0.4019 for Perl allow memory exhaustion via
unbounded buffering of chunked request bodies.

The chunked body decoder keeps each chunk in memory until the whole
chunk and its CRLF have arrived, and sets no limit on the length of a
chunk-size line. A client that declares a huge chunk size and streams
data, or sends a chunk-size line that never ends, grows the buffer for
as long as it keeps sending.

A remote attacker can exhaust worker memory with a single connection.

Problem types
-------------
- CWE-770 Allocation of Resources Without Limits or Throttling

Solutions
---------
Upgrade to Starman 0.4019 or later.

References
----------
https://github.com/miyagawa/Starman/commit/d789a02dbe5408ef5f7a4659078d0008dd84c308.patch
https://github.com/miyagawa/Starman/commit/0f33f9b132b5e410d6cce722ff71988e22476acf.patch
https://metacpan.org/release/MIYAGAWA/Starman-0.4019/changes



