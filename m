X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/07/13
Message-ID: <70cd4105-470a-4b2e-a749-bf64cd83c556@cpansec.org>
Date: Tue, 7 Jul 2026 18:42:58 +0100
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-7017: HTTP::Tiny versions before 0.095 for Perl forward credential headers to cross-origin redirect targets
Content-Type: text/plain; charset=utf-8


========================================================================
CVE-2026-7017                                        CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-7017
   Distribution:  HTTP-Tiny
       Versions:  before 0.095

       MetaCPAN:  https://metacpan.org/dist/HTTP-Tiny
       VCS Repo:  https://github.com/Perl-Toolchain-Gang/HTTP-Tiny


HTTP::Tiny versions before 0.095 for Perl forward credential headers to
cross-origin redirect targets

Description
-----------
HTTP::Tiny versions before 0.095 for Perl forward credential headers to
cross-origin redirect targets.

When the server returns a 3xx redirect, `_maybe_redirect` follows the
`Location:` header and `_prepare_headers_and_cb` re-merges the caller's
`headers` argument into the new request, without checking whether the
redirect target shares an origin with the original URL. Caller-supplied
`Authorization`, `Cookie` and `Proxy-Authorization` headers are
therefore re-sent to whatever host the redirect names, across scheme,
host or port boundaries, and including `https` to `http` downgrades
that expose them in plaintext on the wire.

The HTTP::Tiny POD note that "Authorization headers will not be
included in a redirected request" applied only to the URL-userinfo
Basic-auth path, not to headers passed explicitly by the caller.

Problem types
-------------
- CWE-522 Insufficiently Protected Credentials

Solutions
---------
Upgrade to HTTP-Tiny 0.095-TRIAL or later.


References
----------
https://github.com/Perl-Toolchain-Gang/HTTP-Tiny/pull/36
https://github.com/Perl-Toolchain-Gang/HTTP-Tiny/commit/84984ef3930ddd4afcf5eb83b40d3cee200739c3.patch
https://github.com/Perl-Toolchain-Gang/HTTP-Tiny/commit/e7a03aedf2395158f2b0d3bad2df943349227bb3.patch
https://github.com/Perl-Toolchain-Gang/HTTP-Tiny/commit/8f32ca89e21c3ad0422adc698fa6ad17a193f55f.patch
https://metacpan.org/release/HAARG/HTTP-Tiny-0.095-TRIAL/changes

Timeline
--------
- 2026-04-25: Issue discovered.
- 2026-06-03: Version 0.095-TRIAL released with fix.



