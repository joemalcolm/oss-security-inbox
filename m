X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/31/7
Message-ID: <25e570ce-d383-46e3-9295-823866f59ee7@cpansec.org>
Date: Mon, 31 Aug 2026 11:08:26 +0100
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-19873: HTML::FormFu versions through 2.08 for Perl allow resource exhaustion via an unbounded repeat count from the query string in Repeatable elements
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-19873                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-19873
   Distribution:  HTML-FormFu
       Versions:  through 2.08

       MetaCPAN:  https://metacpan.org/dist/HTML-FormFu
       VCS Repo:  https://github.com/FormFu/HTML-FormFu


HTML::FormFu versions through 2.08 for Perl allow resource exhaustion
via an unbounded repeat count from the query string in Repeatable
elements

Description
-----------
HTML::FormFu versions through 2.08 for Perl allow resource exhaustion
via an unbounded repeat count from the query string in Repeatable
elements.

When a Repeatable element has counter_name set, its process method
reads the repeat count from the named query string parameter, checks
only that it is a positive integer, and passes it to repeat, which
deep-clones the element's child subtree once per iteration. Nothing
caps the value, and no attribute lets an application impose a limit.

The count is read on every request, before the form decides whether it
was submitted, so a plain GET reaches the clone loop with no
credentials, no session and no request body. Nesting multiplies: a
Repeatable inside a Repeatable takes a counter at each level, so an
outer and an inner value of 100 build 10,000 clones.

Once the form is submitted, each cloned field's constraints scan the
whole element tree in _find_field_value, so cost grows faster than
linearly with the count. A single request exhausts memory and CPU.

The latest release on CPAN is 2.07, from 2018. Version 2.08 exists only
in the git repository.

Problem types
-------------
- CWE-1284 Improper Validation of Specified Quantity in Input
- CWE-770 Allocation of Resources Without Limits or Throttling

Workarounds
-----------
For deployments that cannot apply the patch, reject or clamp the
counter parameter before passing the query to process. Where the
client-side repeat feature is not needed, unsetting counter_name stops
the count being read from the query string.

Solutions
---------
Apply the patch. There is no fixed release.

References
----------
https://github.com/FormFu/HTML-FormFu/issues/71
https://security.metacpan.org/patches/H/HTML-FormFu/2.08/CVE-2026-19873-r1.patch



