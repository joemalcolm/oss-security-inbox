X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/25/13
Message-ID: <07b9576f-1065-4443-a76f-71bd472461f9@cpansec.org>
Date: Wed, 25 Nov 2026 22:44:44 +0000
From: Robert Rothenberg <rrwo@...nsec.org>
To: oss-security@...ts.openwall.com
Subject: WWW-Form-UrlEncoded-XS for Perl (2 CVEs)
Content-Type: text/plain; charset=utf-8

CVE-2022-50995
   WWW::Form::UrlEncoded::XS versions before 0.27 for Perl read one byte
   before the input buffer when parsing an empty string

CVE-2022-50996
   WWW::Form::UrlEncoded::XS versions before 0.28 for Perl write past
   the end of the Perl argument stack when parse_urlencoded returns many
   pairs


========================================================================
CVE-2022-50995                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2022-50995

   Distribution:  WWW-Form-UrlEncoded-XS
       Versions:  before 0.27
       MetaCPAN:  https://metacpan.org/dist/WWW-Form-UrlEncoded-XS
       VCS Repo: https://github.com/kazeburo/WWW-Form-UrlEncoded-XS


WWW::Form::UrlEncoded::XS versions before 0.27 for Perl read one byte
before the input buffer when parsing an empty string

Description
-----------
WWW::Form::UrlEncoded::XS versions before 0.27 for Perl read one byte
before the input buffer when parsing an empty string.

parse_urlencoded and parse_urlencoded_arrayref check for a trailing "&"
or ";" by reading the last byte of the input, without first checking
that the input has any bytes.

A remote client that sends an empty query string or request body to an
application parsing it with this module can crash the process.

Problem types
-------------
- CWE-127 Buffer Under-read

Solutions
---------
Upgrade to WWW-Form-UrlEncoded-XS 0.27 or later.

References
----------
https://github.com/kazeburo/WWW-Form-UrlEncoded-XS/commit/3a0a35e7509b42667b19ee027807253adaf07333.patch
https://github.com/kazeburo/WWW-Form-UrlEncoded-XS/pull/7
https://metacpan.org/release/KAZEBURO/WWW-Form-UrlEncoded-XS-0.27/changes

Timeline
--------
- 2022-04-13: Issue reported with a proposed fix.
- 2022-04-14: Fix merged.
- 2022-04-14: Version 0.27 released with fix.

Credits
-------
Brian Fraser, reporter
Brian Fraser, remediation developer


========================================================================
CVE-2022-50996                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2022-50996

   Distribution:  WWW-Form-UrlEncoded-XS
       Versions:  before 0.28
       MetaCPAN:  https://metacpan.org/dist/WWW-Form-UrlEncoded-XS
       VCS Repo: https://github.com/kazeburo/WWW-Form-UrlEncoded-XS


WWW::Form::UrlEncoded::XS versions before 0.28 for Perl write past the
end of the Perl argument stack when parse_urlencoded returns many pairs

Description
-----------
WWW::Form::UrlEncoded::XS versions before 0.28 for Perl write past the
end of the Perl argument stack when parse_urlencoded returns many
pairs.

parse_urlencoded returns its result as a list, pushing each decoded key
and value onto the argument stack without first extending the stack to
fit them. parse_urlencoded_arrayref returns an array reference and is
not affected.

A remote client that sends a query string or request body with many
pairs to an application parsing it with parse_urlencoded can corrupt
memory and crash the process.

Problem types
-------------
- CWE-787 Out-of-bounds Write

Solutions
---------
Upgrade to WWW-Form-UrlEncoded-XS 0.28 or later.

References
----------
https://github.com/kazeburo/WWW-Form-UrlEncoded-XS/commit/9c14314c51f5745da316286131df49d5a53c0bdc.patch
https://github.com/kazeburo/WWW-Form-UrlEncoded-XS/pull/8
https://github.com/kazeburo/WWW-Form-UrlEncoded-XS/issues/6
https://metacpan.org/release/KAZEBURO/WWW-Form-UrlEncoded-XS-0.28/changes

Timeline
--------
- 2019-07-23: Issue reported.
- 2022-09-05: Fix merged.
- 2022-09-05: Version 0.28 released with fix.

Credits
-------
Lars Dieckow, reporter
Leon Timmermans, remediation developer

