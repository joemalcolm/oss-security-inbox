X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/30/13
Message-ID: <0b9acc77-4268-49fa-a07b-ceb511e4a2bb@cpansec.org>
Date: Fri, 30 Oct 2026 12:51:33 +0000
From: Robert Rothenberg <rrwo@...nsec.org>
To: oss-security@...ts.openwall.com
Subject: Starlet versions before 0.33 for Perl (4 CVEs)
Content-Type: text/plain; charset=utf-8

CVE-2026-115865
   Starlet versions before 0.33 for Perl allow a request declaring a
   large Content-Length to kill a worker by exhausting memory

CVE-2026-115866
   Starlet versions from 0.20 before 0.33 for Perl allow CPU exhaustion
   via regular expression backtracking when decoding chunked request
   bodies

CVE-2026-116127
   Starlet versions before 0.33 for Perl send a body in responses to
   HEAD requests, corrupting the next response on a persistent or
   pipelined connection

CVE-2026-116128
   Starlet versions from 0.20 before 0.33 for Perl allow memory
   exhaustion via unbounded buffering when decoding chunked request
   bodies


========================================================================
CVE-2026-115865                                      CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-115865

   Distribution:  Starlet
       Versions:  before 0.33
       MetaCPAN:  https://metacpan.org/dist/Starlet
       VCS Repo:  https://github.com/kazuho/Starlet


Starlet versions before 0.33 for Perl allow a request declaring a large
Content-Length to kill a worker by exhausting memory

Description
-----------
Starlet versions before 0.33 for Perl allow a request declaring a large
Content-Length to kill a worker by exhausting memory.

The request body is read in a loop that asks sysread for all of the
remaining declared length at once. Perl grows the read buffer to that
size before any data arrives, so a length larger than available memory
makes the worker exit with an uncatchable out of memory error before
the application is called.

A remote attacker can force a worker restart with each request of a few
bytes.

Problem types
-------------
- CWE-789 Memory Allocation with Excessive Size Value

Solutions
---------
Upgrade to Starlet 0.33 or later.

References
----------
https://github.com/kazuho/Starlet/commit/598947ac620fd31b390335c683d79fa244770782.patch
https://metacpan.org/release/KAZUHO/Starlet-0.33/changes


========================================================================
CVE-2026-115866                                      CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-115866

   Distribution:  Starlet
       Versions:  from 0.20 before 0.33
       MetaCPAN:  https://metacpan.org/dist/Starlet
       VCS Repo:  https://github.com/kazuho/Starlet


Starlet versions from 0.20 before 0.33 for Perl allow CPU exhaustion
via regular expression backtracking when decoding chunked request
bodies

Description
-----------
Starlet versions from 0.20 before 0.33 for Perl allow CPU exhaustion
via regular expression backtracking when decoding chunked request
bodies.

A chunk-size line is matched as a run of hex digits, then .* and a
CRLF. A run followed by a bare LF and then a CRLF can never match, and
the engine retries the match once for each digit, so the time taken
grows with the square of the run length. Nothing limits the length of
the run, which can span several reads.

A remote attacker can occupy a worker for about a minute of CPU time
with one 128 KiB request, before the application is called.

Problem types
-------------
- CWE-1333 Inefficient Regular Expression Complexity

Solutions
---------
Upgrade to Starlet 0.33 or later.

References
----------
https://github.com/kazuho/Starlet/commit/229ea56b3b50028e2a644156317e8d0e7cf68a1f.patch
https://metacpan.org/release/KAZUHO/Starlet-0.33/changes


========================================================================
CVE-2026-116127                                      CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-116127

   Distribution:  Starlet
       Versions:  before 0.33
       MetaCPAN:  https://metacpan.org/dist/Starlet
       VCS Repo:  https://github.com/kazuho/Starlet


Starlet versions before 0.33 for Perl send a body in responses to HEAD
requests, corrupting the next response on a persistent or pipelined
connection

Description
-----------
Starlet versions before 0.33 for Perl send a body in responses to HEAD
requests, corrupting the next response on a persistent or pipelined
connection.

The request method is not passed to the response writer, so whatever
body the application returns for a HEAD request is sent. With
Plack::Middleware::Head the body is empty, but an HTTP/1.1 response
without a Content-Length header still gets the chunked encoding
terminator. Responses with status 204 or 304 are also sent with their
body.

Pipelined GET and HEAD requests keep the connection open even when
keep-alive is disabled, which is the default. A client or proxy reading
the connection takes the extra bytes as the start of the next response,
which may desynchronize a proxy that shares the connection across
clients.

Problem types
-------------
- CWE-444 Inconsistent Interpretation of HTTP Requests

Solutions
---------
Upgrade to Starlet 0.33 or later.

References
----------
https://github.com/kazuho/Starlet/commit/859e0c9572cdbed4bb45706d3957b3c025dc0ede.patch
https://metacpan.org/release/KAZUHO/Starlet-0.33/changes


========================================================================
CVE-2026-116128                                      CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-116128

   Distribution:  Starlet
       Versions:  from 0.20 before 0.33
       MetaCPAN:  https://metacpan.org/dist/Starlet
       VCS Repo:  https://github.com/kazuho/Starlet


Starlet versions from 0.20 before 0.33 for Perl allow memory exhaustion
via unbounded buffering when decoding chunked request bodies

Description
-----------
Starlet versions from 0.20 before 0.33 for Perl allow memory exhaustion
via unbounded buffering when decoding chunked request bodies.

The decoder adds each read to one buffer of unconsumed input. Nothing
limits the length of a chunk-size line, so a line without a CRLF grows
the buffer for as long as the client keeps sending, and the read
timeout restarts after every read. The data of a large chunk is also
held in the buffer until the whole chunk has arrived.

A remote attacker can exhaust a worker's memory with a single request.

Problem types
-------------
- CWE-770 Allocation of Resources Without Limits or Throttling

Solutions
---------
Upgrade to Starlet 0.33 or later.

References
----------
https://github.com/kazuho/Starlet/commit/f3472712fff64329a43d86368768d80b61714106.patch
https://metacpan.org/release/KAZUHO/Starlet-0.33/changes

