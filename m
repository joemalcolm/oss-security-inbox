X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/17/10
Message-ID: <44427891-49fe-41d5-a763-12be8867cee9@cpansec.org>
Date: Fri, 17 Jul 2026 16:21:11 +0100
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-14741: HTTP::Date versions before 6.08 for Perl allow CPU exhaustion via polynomial regex backtracking in parse_date
Content-Type: text/plain; charset=utf-8


========================================================================
CVE-2026-14741                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-14741
   Distribution:  HTTP-Date
       Versions:  before 6.08

       MetaCPAN:  https://metacpan.org/dist/HTTP-Date
       VCS Repo:  https://github.com/libwww-perl/HTTP-Date


HTTP::Date versions before 6.08 for Perl allow CPU exhaustion via
polynomial regex backtracking in parse_date

Description
-----------
HTTP::Date versions before 6.08 for Perl allow CPU exhaustion via
polynomial regex backtracking in parse_date.

parse_date() matches the date string against a chain of alternative
regexes, and str2time() delegates to it. Several of these patterns
place unbounded quantifiers next to each other before a trailing `\s*$`
anchor. A valid date prefix followed by a long interior run of digits,
letters, or whitespace and a single trailing byte that defeats the
final match forces the engine to repartition the run, giving polynomial
(about quadratic) backtracking. A header value of a few tens of
kilobytes runs for tens of seconds of CPU.

HTTP::Date parses timestamps such as HTTP `Date`, `Expires`, and
`Last-Modified` headers, which commonly originate from untrusted
sources. Any caller that passes an untrusted date header to str2time()
or parse_date() can be driven to consume unbounded CPU, a denial of
service.

Problem types
-------------
- CWE-1333 Inefficient Regular Expression Complexity

Solutions
---------
Upgrade to HTTP::Date 6.08 or later, which rejects input longer than 64
characters before the date-parsing regexes run.


References
----------
https://github.com/libwww-perl/HTTP-Date/commit/78c20952cdfbf11e03cf1199ad70f13298a84c5c.patch
https://github.com/libwww-perl/HTTP-Date/pull/33
https://metacpan.org/release/OALDERS/HTTP-Date-6.08/changes

Timeline
--------
- 2026-07-09: Version 6.08 released with the fix.



