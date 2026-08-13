X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/13/11
Message-ID: <f4fdfbbf-1a71-4123-9c09-8ce4bf32e890@cpansec.org>
Date: Thu, 13 Aug 2026 17:31:58 +0100
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-13051: Form::Processor::Field::HtmlArea versions from 0.06 through 1.162360 for Perl allow attacker selected method dispatch and resource exhaustion via an HTML::Tidy diagnostic that validate passes to add_error as a Locale::Maketext template
Content-Type: text/plain; charset=utf-8


========================================================================
CVE-2026-13051                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-13051
   Distribution:  Form-Processor
       Versions:  from 0.06 through 1.162360

       MetaCPAN:  https://metacpan.org/dist/Form-Processor


Form::Processor::Field::HtmlArea versions from 0.06 through 1.162360
for Perl allow attacker selected method dispatch and resource
exhaustion via an HTML::Tidy diagnostic that validate passes to
add_error as a Locale::Maketext template

Description
-----------
Form::Processor::Field::HtmlArea versions from 0.06 through 1.162360
for Perl allow attacker selected method dispatch and resource
exhaustion via an HTML::Tidy diagnostic that validate passes to
add_error as a Locale::Maketext template.

validate runs HTML::Tidy over the submitted markup and passes each
resulting message to add_error as its first argument, which add_error
hands to the language handle as the Locale::Maketext message key. The
default handle's lexicon sets `_AUTO`, so a message that is not a
lexicon entry is compiled as a bracket notation template instead of
being looked up. Tidy diagnostics quote the offending attribute name or
value, so a bracket group in the submitted markup reaches the template
position, where the first token of the group names a method called on
the language handle and the remaining tokens are its arguments. A group
such as `[0]` makes the compile croak, and neither the field nor the
handle catches it, so the exception leaves validate.
`[sprintf,%2000000000d,7]` reaches CORE::sprintf with an attacker
chosen field width.

One submission of crafted markup to an HtmlArea field throws an
unhandled exception out of form validation or allocates an arbitrary
amount of memory, and an application whose language handle subclass
defines side effecting public methods makes those callable with
attacker chosen arguments. The other field types pass fixed templates
with the submitted value in an argument slot, where it stays inert, and
are unaffected.

Problem types
-------------
- CWE-1336 Improper Neutralization of Special Elements Used in a
   Template Engine
- CWE-470 Use of Externally-Controlled Input to Select Classes or Code
   ('Unsafe Reflection')

Workarounds
-----------
No fixed release is available, and the distribution has not been
updated since 2016. Apply the patch, which passes the tidy message as
an interpolation argument so its brackets are displayed rather than
compiled. Deployments that cannot patch should not use the HtmlArea
field type.

References
----------
https://security.metacpan.org/patches/F/Form-Processor/1.162360/CVE-2026-13051-r1.patch
https://metacpan.org/release/HANK/Form-Processor-1.162360/source/lib/Form/Processor/Field/HtmlArea.pm#L28-31
https://metacpan.org/release/HANK/Form-Processor-1.162360/source/lib/Form/Processor/Field.pm#L163
https://www.cve.org/CVERecord?id=CVE-2012-6329



