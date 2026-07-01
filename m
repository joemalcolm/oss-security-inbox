X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/01/7
Message-ID: <bd7e36ee-b1ac-43f2-8315-be85f0c85bf2@cpansec.org>
Date: Wed, 1 Jul 2026 15:40:44 +0100
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2025-15646: HTML::Gumbo versions before 0.19 for Perl disclose heap memory via type confusion
Content-Type: text/plain; charset=utf-8


========================================================================
CVE-2025-15646                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2025-15646
   Distribution:  HTML-Gumbo
       Versions:  before 0.19

       MetaCPAN:  https://metacpan.org/dist/HTML-Gumbo
       VCS Repo:  https://github.com/bestpractical/HTML-Gumbo


HTML::Gumbo versions before 0.19 for Perl disclose heap memory via type
confusion

Description
-----------
HTML::Gumbo versions before 0.19 for Perl disclose heap memory via type
confusion.

Support for the <template> element was added to libgumbo 0.10.0 in
2015, but the walk_tree function in lib/HTML/Gumbo.xs was not updated
to support it. The element was treated as a text-node, where strlen()
over-reads the heap block that the pointer addresses.

Any caller that runs parse() with the default format => 'string', or
with format => 'tree', on input containing a <template> element
serializes the over-read bytes into the returned result, disclosing
bounded heap contents. format => 'callback' reaches a croak on the
unhandled node type and is unaffected.

Problem types
-------------
- CWE-843 Access of Resource Using Incompatible Type (Type Confusion)
- CWE-125 Out-of-bounds Read

Solutions
---------
Upgrade to HTML-Gumbo 0.19 or later, which adds GUMBO_NODE_TEMPLATE to
the container node types handled by walk_tree.


References
----------
https://github.com/bestpractical/HTML-Gumbo/commit/15c0598909d4a64f47ef0a1abc5051f4e113c186.patch
https://metacpan.org/release/BPS/HTML-Gumbo-0.19/changes
https://bugs.debian.org/1104789

Timeline
--------
- 2015-04-30: Gumbo 0.10.0 released with support for the <template>
   element.
- 2025-05-06: Reported to the Debian bug tracker (#1104789).
- 2025-05-17: Fix committed upstream.
- 2026-05-21: Version 0.19 released with fix.

Credits
-------
Vincent Lefevre, finder
Niko Tyni, remediation developer


