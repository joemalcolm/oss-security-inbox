X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/30/19
Message-ID: <8bd3e66a-4adb-4be7-8827-653dd7085d77@cpansec.org>
Date: Thu, 30 Jul 2026 14:43:45 +0100
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-60074: Date::Manip versions through 6.99 for Perl return corrupted dates via non-ASCII decimal digits that pass the numeric range tests in check
Content-Type: text/plain; charset=utf-8


========================================================================
CVE-2026-60074                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-60074
   Distribution:  Date-Manip
       Versions:  through 6.99

       MetaCPAN:  https://metacpan.org/dist/Date-Manip
       VCS Repo:  https://github.com/SBECK-github/Date-Manip


Date::Manip versions through 6.99 for Perl return corrupted dates via
non-ASCII decimal digits that pass the numeric range tests in check

Description
-----------
Date::Manip versions through 6.99 for Perl return corrupted dates via
non-ASCII decimal digits that pass the numeric range tests in check.

The parse regexes capture year, month and day with the `\d` shorthand,
which on a character string matches the whole Unicode decimal digit
property `\p{Nd}` and not just `[0-9]`. Date::Manip::Base::check then
validates the captured fields with numeric comparisons alone (`$y<1 ||
$y>9999`, `$m<1 || $m>12`, `$d<1 || $d>$days`), and _parse_check stores
the numified fields (`$y+0`). Perl truncates a string at the first
character that is not an ASCII digit, so a field whose leading
characters are ASCII digits numifies to an in-range prefix and
satisfies every test: a year field of three ASCII digits followed by
U+0664 ARABIC-INDIC DIGIT FOUR numifies to 202, giving the year 0202,
and one non-ASCII digit in the month or day field shifts those fields
the same way. The hour, minute and second fields match explicit ASCII
character classes (`0?[0-9]`, `[0-5][0-9]`) and do not shift, though a
non-ASCII digit in a fractional hour or minute field truncates the
fraction.

Any caller that passes an untrusted character string to ParseDate() or
Date::Manip::Date->parse() can get back a date that differs from the
string it parsed, with no parse error. Where the parsed date gates
logic such as an expiry check or a retention window, the shift goes
unnoticed.

Problem types
-------------
- CWE-1289 Improper Validation of Unsafe Equivalence in Input

Workarounds
-----------
No fixed release is available. Apply the patch, which spells the
numeric field captures as `[0-9]` and requires the date fields to be
ASCII digit strings, or reject untrusted date strings containing
non-ASCII characters before parsing them.


References
----------
https://security.metacpan.org/patches/D/Date-Manip/6.99/CVE-2026-60074-r1.patch
https://metacpan.org/release/SBECK/Date-Manip-6.99/source/lib/Date/Manip/Base.pm#L602-614
https://metacpan.org/release/SBECK/Date-Manip-6.99/source/lib/Date/Manip/Date.pm#L1536-1539



