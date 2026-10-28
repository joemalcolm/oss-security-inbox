X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/28/20
Message-ID: <ba705168-3aa5-4fb7-9e44-799d82fe8b51@cpansec.org>
Date: Wed, 28 Oct 2026 17:27:52 +0000
From: Robert Rothenberg <rrwo@...nsec.org>
To: oss-security@...ts.openwall.com
Subject: HTTP::Body versions before 1.24_01 for Perl (9 CVEs)
Content-Type: text/plain; charset=utf-8


CVE-2026-116131
   HTTP::Body versions before 1.23_01 for Perl allow memory and
   temporary file exhaustion via an unlimited number of form fields and
   multipart parts

CVE-2026-116132
   HTTP::Body versions before 1.23_01 for Perl leave the temporary file
   of an incomplete multipart upload on disk

CVE-2026-116133
   HTTP::Body versions before 1.23_01 for Perl allow CPU exhaustion via
   quadratic rescanning of a multipart body with a missing or malformed
   boundary

CVE-2026-116134
   HTTP::Body versions before 1.23_01 for Perl allow memory exhaustion
   via an unbounded multipart part header block

CVE-2026-116135
   HTTP::Body versions before 1.23_01 for Perl drop mixed-case percent
   escapes from urlencoded form fields instead of decoding them

CVE-2026-116285
   HTTP::Body versions before 1.23_01 for Perl allow CPU exhaustion via
   quadratic regex backtracking when parsing chunked request bodies

CVE-2026-116531
   HTTP::Body versions before 1.23_01 for Perl lose track of chunk
   boundaries in chunked request bodies when a read ends inside a chunk

CVE-2026-117500
   HTTP::Body versions before 1.24_01 for Perl allow CPU exhaustion via
   regex backtracking on the filename of a multipart upload

CVE-2026-117501
   HTTP::Body versions before 1.24_01 for Perl allow memory exhaustion
   via unbounded buffering of chunked request bodies


========================================================================
CVE-2026-116131                                      CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-116131

   Distribution:  HTTP-Body
       Versions:  before 1.23_01
       MetaCPAN:  https://metacpan.org/dist/HTTP-Body
       VCS Repo:  https://github.com/libwww-perl/HTTP-Body


HTTP::Body versions before 1.23_01 for Perl allow memory and temporary
file exhaustion via an unlimited number of form fields and multipart
parts

Description
-----------
HTTP::Body versions before 1.23_01 for Perl allow memory and temporary
file exhaustion via an unlimited number of form fields and multipart
parts.

The urlencoded parser splits the whole body on its separators at once,
creating one scalar per separator before any field is stored. This
costs about 90 bytes of memory per separator byte. The multipart parser
creates a temporary file for every part that carries a filename.
Neither parser limits how many fields or parts a body may hold.

A remote attacker can exhaust worker memory with a body made of
separators, or create thousands of temporary files with one request of
small file parts.

Problem types
-------------
- CWE-770 Allocation of Resources Without Limits or Throttling

Solutions
---------
Upgrade to HTTP-Body 1.23_01 or later.

References
----------
https://github.com/libwww-perl/HTTP-Body/commit/47beca524a3062eacfd646664576f005fb4be19b.patch
https://metacpan.org/release/GETTY/HTTP-Body-1.24/changes


========================================================================
CVE-2026-116132                                      CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-116132

   Distribution:  HTTP-Body
       Versions:  before 1.23_01
       MetaCPAN:  https://metacpan.org/dist/HTTP-Body
       VCS Repo:  https://github.com/libwww-perl/HTTP-Body


HTTP::Body versions before 1.23_01 for Perl leave the temporary file of
an incomplete multipart upload on disk

Description
-----------
HTTP::Body versions before 1.23_01 for Perl leave the temporary file of
an incomplete multipart upload on disk.

The multipart parser creates a temporary file as soon as a file part
starts, but adds it to the upload list only when the part completes.
Uploads are only ever deleted from that list, by the cleanup option or
by the caller, so a body that ends inside a file part leaves its
temporary file where nothing can find it.

A remote attacker can fill the temporary directory by repeating such
requests, leaving one file behind for each.

Problem types
-------------
- CWE-459 Incomplete Cleanup

Solutions
---------
Upgrade to HTTP-Body 1.23_01 or later.

References
----------
https://rt.cpan.org/Public/Bug/Display.html?id=84004
https://github.com/libwww-perl/HTTP-Body/commit/29e933b22ff918ccf5412d3513c885208511cfa3.patch
https://metacpan.org/release/GETTY/HTTP-Body-1.24/changes

Timeline
--------
- 2013-07-17: Issue reported.
- 2026-10-26: Version 1.23_01 released with fix.


========================================================================
CVE-2026-116133                                      CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-116133

   Distribution:  HTTP-Body
       Versions:  before 1.23_01
       MetaCPAN:  https://metacpan.org/dist/HTTP-Body
       VCS Repo:  https://github.com/libwww-perl/HTTP-Body


HTTP::Body versions before 1.23_01 for Perl allow CPU exhaustion via
quadratic rescanning of a multipart body with a missing or malformed
boundary

Description
-----------
HTTP::Body versions before 1.23_01 for Perl allow CPU exhaustion via
quadratic rescanning of a multipart body with a missing or malformed
boundary.

Before the first part, and between parts, the multipart parser searches
the whole buffered body for the next boundary. On a miss it keeps
everything and searches again from the start when the next chunk
arrives. A body with no boundary, or with a delimiter followed by
neither CRLF nor "--", is therefore rescanned on every chunk, taking
time quadratic in its size.

A remote attacker can exhaust worker CPU with a few such requests.

Problem types
-------------
- CWE-407 Inefficient Algorithmic Complexity

Solutions
---------
Upgrade to HTTP-Body 1.23_01 or later.

References
----------
https://github.com/libwww-perl/HTTP-Body/commit/bf77eb959bbe1641b77f69eefe98d58ce4c4ec79.patch
https://metacpan.org/release/GETTY/HTTP-Body-1.24/changes


========================================================================
CVE-2026-116134                                      CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-116134

   Distribution:  HTTP-Body
       Versions:  before 1.23_01
       MetaCPAN:  https://metacpan.org/dist/HTTP-Body
       VCS Repo:  https://github.com/libwww-perl/HTTP-Body


HTTP::Body versions before 1.23_01 for Perl allow memory exhaustion via
an unbounded multipart part header block

Description
-----------
HTTP::Body versions before 1.23_01 for Perl allow memory exhaustion via
an unbounded multipart part header block.

The multipart parser takes everything up to the first blank line after
a boundary as the part's header block, with no limit on its size or
number of lines. Every line is stored in the part's header hash, so a
block of short lines costs about 60 bytes of memory per input byte.

A remote attacker can exhaust worker memory with a single request.

Problem types
-------------
- CWE-770 Allocation of Resources Without Limits or Throttling

Solutions
---------
Upgrade to HTTP-Body 1.23_01 or later.

References
----------
https://github.com/libwww-perl/HTTP-Body/commit/c5d13911aabfad4a7ae4b6ee98ac2315400e5ed5.patch
https://metacpan.org/release/GETTY/HTTP-Body-1.24/changes


========================================================================
CVE-2026-116135                                      CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-116135

   Distribution:  HTTP-Body
       Versions:  before 1.23_01
       MetaCPAN:  https://metacpan.org/dist/HTTP-Body
       VCS Repo:  https://github.com/libwww-perl/HTTP-Body


HTTP::Body versions before 1.23_01 for Perl drop mixed-case percent
escapes from urlencoded form fields instead of decoding them

Description
-----------
HTTP::Body versions before 1.23_01 for Perl drop mixed-case percent
escapes from urlencoded form fields instead of decoding them.

The decode table holds only the all-lowercase and all-uppercase
spelling of each hex pair, while the escape pattern matches either
case. An escape such as %aB finds no entry and is replaced with
nothing, joining the bytes on either side. Hex digits in percent
escapes are case-insensitive, and conforming decoders return the byte.

A remote attacker can send a field name or value that a conforming
decoder in front of the application reads differently, so that
pass%aBword reaches the application as password.

Problem types
-------------
- CWE-178 Improper Handling of Case Sensitivity

Solutions
---------
Upgrade to HTTP-Body 1.23_01 or later.

References
----------
https://github.com/libwww-perl/HTTP-Body/commit/336f1a23b4115a5cbeb546f36df5af62c90bdc0d.patch
https://metacpan.org/release/GETTY/HTTP-Body-1.24/changes
https://www.rfc-editor.org/rfc/rfc3986#section-2.1


========================================================================
CVE-2026-116285                                      CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-116285

   Distribution:  HTTP-Body
       Versions:  before 1.23_01
       MetaCPAN:  https://metacpan.org/dist/HTTP-Body
       VCS Repo:  https://github.com/libwww-perl/HTTP-Body


HTTP::Body versions before 1.23_01 for Perl allow CPU exhaustion via
quadratic regex backtracking when parsing chunked request bodies

Description
-----------
HTTP::Body versions before 1.23_01 for Perl allow CPU exhaustion via
quadratic regex backtracking when parsing chunked request bodies.

In chunked mode, used when no content length is given, add() matches
each chunk-size line with `/^([\da-fA-F]+).*\x0D\x0A/`. On a line of
hex digits whose first LF has no CR before it, the digits and `.*`
backtrack against each other, so a single add() takes time quadratic in
the line's length. Nothing limits how long the line can be.

A remote attacker can exhaust CPU in applications that pass chunked
request bodies to HTTP::Body.

Problem types
-------------
- CWE-1333 Inefficient Regular Expression Complexity

Solutions
---------
Upgrade to HTTP-Body 1.23_01 or later.

References
----------
https://github.com/libwww-perl/HTTP-Body/commit/954a5343d2a095b59d357f28759c5388d1169574.patch
https://metacpan.org/release/GETTY/HTTP-Body-1.24/changes


========================================================================
CVE-2026-116531                                      CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-116531

   Distribution:  HTTP-Body
       Versions:  before 1.23_01
       MetaCPAN:  https://metacpan.org/dist/HTTP-Body
       VCS Repo:  https://github.com/libwww-perl/HTTP-Body


HTTP::Body versions before 1.23_01 for Perl lose track of chunk
boundaries in chunked request bodies when a read ends inside a chunk

Description
-----------
HTTP::Body versions before 1.23_01 for Perl lose track of chunk
boundaries in chunked request bodies when a read ends inside a chunk.

In chunked mode, used when no content length is given, add() treats a
chunk as complete once the buffer is as long as the chunk's declared
size, but the buffer still holds the chunk-size line. When a read ends
in the last bytes of a chunk, add() takes the chunk short and parses
the leftover data as the next chunk-size line.

A remote attacker can make a chunked body never complete, hanging a
server that reads until the body is done, and may make it complete
early, leaving the remaining bytes to be read as the next request.

Problem types
-------------
- CWE-130 Improper Handling of Length Parameter Inconsistency

Solutions
---------
Upgrade to HTTP-Body 1.23_01 or later.

References
----------
https://github.com/libwww-perl/HTTP-Body/commit/5869dde9fe6d13f189a435b6583fd63fcc18677a.patch
https://metacpan.org/release/GETTY/HTTP-Body-1.24/changes


========================================================================
CVE-2026-117500                                      CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-117500

   Distribution:  HTTP-Body
       Versions:  before 1.24_01
       MetaCPAN:  https://metacpan.org/dist/HTTP-Body
       VCS Repo:  https://github.com/libwww-perl/HTTP-Body


HTTP::Body versions before 1.24_01 for Perl allow CPU exhaustion via
regex backtracking on the filename of a multipart upload

Description
-----------
HTTP::Body versions before 1.24_01 for Perl allow CPU exhaustion via
regex backtracking on the filename of a multipart upload.

For every file part, the multipart parser finds the suffix of the
uploaded filename by matching the default $basename_regexp,
qr/[^.]+(\.[^\\\/]+)$/, against the whole basename. A basename made of
many dots and ending in a backslash makes the regex backtrack in time
quadratic in its length.

A remote attacker can exhaust CPU with one request, as a basename of
about 32 KB takes several seconds to match and every file part is
matched separately.

Problem types
-------------
- CWE-1333 Inefficient Regular Expression Complexity

Solutions
---------
Upgrade to HTTP-Body 1.24_01 or later.

References
----------
https://github.com/libwww-perl/HTTP-Body/commit/9ab46daaede02fb13ea55a7e3ede34c8b918d8ca.patch
https://github.com/libwww-perl/HTTP-Body/commit/3abc958d78bd84bf4abb87bad79b9432eab7e694.patch
https://metacpan.org/release/GETTY/HTTP-Body-1.24_01/changes


========================================================================
CVE-2026-117501                                      CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-117501

   Distribution:  HTTP-Body
       Versions:  before 1.24_01
       MetaCPAN:  https://metacpan.org/dist/HTTP-Body
       VCS Repo:  https://github.com/libwww-perl/HTTP-Body


HTTP::Body versions before 1.24_01 for Perl allow memory exhaustion via
unbounded buffering of chunked request bodies

Description
-----------
HTTP::Body versions before 1.24_01 for Perl allow memory exhaustion via
unbounded buffering of chunked request bodies.

In chunked mode, used when no content length is given, add() holds each
chunk in memory until all of it has arrived. A line that is not a
chunk-size line, a size line without CRLF, or a size too large to fit
an integer leaves the parser waiting forever, and every later add()
grows the buffer.

A remote attacker can exhaust memory in applications that pass chunked
request bodies to HTTP::Body.

Problem types
-------------
- CWE-770 Allocation of Resources Without Limits or Throttling

Solutions
---------
Upgrade to HTTP-Body 1.24_01 or later.

References
----------
https://github.com/libwww-perl/HTTP-Body/commit/7c6dc1ecd49e30ac405a3959c606ba389718f556.patch
https://metacpan.org/release/GETTY/HTTP-Body-1.24_01/changes

