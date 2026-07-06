X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/06/2
Message-Id: <54A879D5-4133-4624-9BED-CFA185BE0AA0@stig.io>
Date: Mon, 6 Jul 2026 03:38:50 +0200
From: Stig Palmquist <stig@...g.io>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-14803: Mojo::JSON versions before 9.47 for Perl allow memory exhaustion via unbounded recursion in the pure-Perl decoder
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-14803                                       CPAN Security Group
========================================================================

        CVE ID:  CVE-2026-14803
  Distribution:  Mojolicious
      Versions:  before 9.47

      MetaCPAN:  https://metacpan.org/dist/Mojolicious
      VCS Repo:  https://github.com/mojolicious/mojo


Mojo::JSON versions before 9.47 for Perl allow memory exhaustion via
unbounded recursion in the pure-Perl decoder

Description
-----------
Mojo::JSON versions before 9.47 for Perl allow memory exhaustion via
unbounded recursion in the pure-Perl decoder.

The pure-Perl decode path (`_decode_value` dispatching to
`_decode_array` and `_decode_object`) recurses with no depth limit, so
a small deeply nested JSON document can consume excessive memory.

This path is the default when Cpanel::JSON::XS is not installed or
`MOJO_NO_JSON_XS=1` is set; the Cpanel::JSON::XS fast path is not
affected.

Any caller that decodes an untrusted JSON body, for example
`Mojo::Message::json` reached through `$c->req->json`, can exhaust
process memory and cause denial of service.

Problem types
-------------
- CWE-674 Uncontrolled Recursion

Workarounds
-----------
Where upgrading is not possible, install Cpanel::JSON::XS in the
include path and leave `MOJO_NO_JSON_XS` unset.


Solutions
---------
Upgrade to Mojolicious 9.47 or later.


References
----------
https://github.com/mojolicious/mojo/commit/cc38b0554275c4d84f6b8b49bcbbc1bec2068fe1.patch
https://metacpan.org/release/SRI/Mojolicious-9.47/changes

Timeline
--------
- 2026-07-05: Version 9.47 released with fix.

