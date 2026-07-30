X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/30/20
Message-ID: <bb5fa6f3-75af-48b8-bd11-cd62931ed6f0@cpansec.org>
Date: Thu, 30 Jul 2026 14:44:19 +0100
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-60075: Date::Manip versions through 6.99 for Perl allow CPU exhaustion via quadratic backtracking in the unanchored time substitution in _parse_time
Content-Type: text/plain; charset=utf-8


========================================================================
CVE-2026-60075                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-60075
   Distribution:  Date-Manip
       Versions:  through 6.99

       MetaCPAN:  https://metacpan.org/dist/Date-Manip
       VCS Repo:  https://github.com/SBECK-github/Date-Manip


Date::Manip versions through 6.99 for Perl allow CPU exhaustion via
quadratic backtracking in the unanchored time substitution in
_parse_time

Description
-----------
Date::Manip versions through 6.99 for Perl allow CPU exhaustion via
quadratic backtracking in the unanchored time substitution in
_parse_time.

_parse_time removes a time from anywhere in the string with the
unanchored substitution `s/$timerx/ /`, where $timerx is an
auto-generated alternation of time patterns reached through a leading
`(?:$atrx|^|\s+)`. The engine therefore retries the match at every
position of an interior whitespace run: at each start position the
leading `\s+` consumes the rest of the run greedily, the time
alternation fails because the run holds no digits, and the engine
backtracks a space at a time across the run before advancing the start
position, which is quadratic in the length of the run. No time need be
present in the string for this to happen, only a long run of
whitespace, and the parse time rises about fourfold for each doubling
of the run: a few kilobytes of whitespace costs seconds of CPU per
parse and tens of kilobytes costs minutes.

Any caller that passes an untrusted string of unbounded length to
ParseDate(), Date::Manip::Date->parse() or ->parse_time() can be made
to spend unbounded CPU in a single parse, a denial of service.

Problem types
-------------
- CWE-1333 Inefficient Regular Expression Complexity

Workarounds
-----------
No fixed release is available. Apply the patch, which rejects a string
longer than 256 characters at the parse entries, or cap the length of
untrusted input before parsing it; legitimate date strings are well
under 100 characters.


References
----------
https://security.metacpan.org/patches/D/Date-Manip/6.99/CVE-2026-60075-r1.patch
https://metacpan.org/release/SBECK/Date-Manip-6.99/source/lib/Date/Manip/Date.pm#L1811
https://metacpan.org/release/SBECK/Date-Manip-6.99/source/lib/Date/Manip/Date.pm#L1526



