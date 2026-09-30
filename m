X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/30/15
Message-ID: <6463cb8e-210f-4ce0-967d-852b154cb8a5@cpansec.org>
Date: Wed, 30 Sep 2026 16:22:03 +0100
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-80490: Algorithm::AhoCorasick::XS versions through 0.04 for Perl read the haystack string length before the scalar is stringified
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-80490                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-80490

   Distribution:  Algorithm-AhoCorasick-XS
       Versions:  through 0.04
       MetaCPAN: https://metacpan.org/dist/Algorithm-AhoCorasick-XS
       VCS Repo: https://github.com/richardjharris/Algorithm-AhoCorasick-XS


Algorithm::AhoCorasick::XS versions through 0.04 for Perl read the
haystack string length before the scalar is stringified

Description
-----------
Algorithm::AhoCorasick::XS versions through 0.04 for Perl read the
haystack string length before the scalar is stringified.

The matches, first_match and match_details methods use the T_STD_STRING
typemap to translate Perl scalars (SVs) into strings via the
std::string constructor, using the SvPV macro to stringify the haystack
input, and the SvCUR macro to determine the length of the SV.

When the input SVs are references, integers (IVs) or floats (NVs), the
SvCUR macro will return an invalid length if it is run before the input
is stringified, leading to an out-of-bounds read which can abort the
process.

Note that the evaluation order of arguments to std::string is
unspecified. Depending on the compiler, SvCUR may be run first and lead
to an abort that cannot be caught within Perl.

This can be triggered when the haystack is a numeric value, for
example,

     my $ac = Algorithm::AhoCorasick::XS->new( [ "11", "22" ] );
     $ac->matches( 211 );

This can occur when the haystack is the result of reading data from
decoded JSON or a numeric database column. It can also be triggered
when using a blessed object as a haystack.

Problem types
-------------
- CWE-125 Out-of-bounds Read

Workarounds
-----------
No fixed release is available. Apply the patch or the change in the
linked pull request.

For deployments that cannot apply the patch, ensure that all input
passed to the matching functions is stringified, for example

     $ac->matches( "$input" );

References
----------
https://rt.cpan.org/Ticket/Display.html?id=181560
https://metacpan.org/release/RJH/Algorithm-AhoCorasick-XS-0.04/source/typemap#L14
https://github.com/richardjharris/Algorithm-AhoCorasick-XS/pull/1
https://security.metacpan.org/patches/A/Algorithm-AhoCorasick-XS/0.04/CVE-2026-80490-r1.patch



