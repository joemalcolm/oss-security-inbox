X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/13/10
Message-ID: <b94a8f72-736f-4ec1-a7de-1d608466f6bd@cpansec.org>
Date: Thu, 13 Aug 2026 17:31:17 +0100
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-13048: Data::MuForm::Localizer versions through 0.05 for Perl execute Perl from a message catalog header, reached at an arbitrary path because load_lexicon interpolates the language attribute into the catalog filename
Content-Type: text/plain; charset=utf-8


========================================================================
CVE-2026-13048                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-13048
   Distribution:  Data-MuForm
       Versions:  through 0.05

       MetaCPAN:  https://metacpan.org/dist/Data-MuForm
       VCS Repo:  https://github.com/gshank/data-muform


Data::MuForm::Localizer versions through 0.05 for Perl execute Perl
from a message catalog header, reached at an arbitrary path because
load_lexicon interpolates the language attribute into the catalog
filename

Description
-----------
Data::MuForm::Localizer versions through 0.05 for Perl execute Perl
from a message catalog header, reached at an arbitrary path because
load_lexicon interpolates the language attribute into the catalog
filename.

load_lexicon builds the catalog path by appending `Messages/$lang.po`
to the directory holding Localizer.pm, where $lang is the language
attribute, with no check that it names a bare locale tag. A value
holding `../` segments walks out of the message directory, so any
readable path with a `.po` suffix is loaded. While parsing the catalog,
extract_header_msgstr takes the `Plural-Forms:` header, prefixes `$` to
the bare words nplurals, plural and n, and passes the rest verbatim
into a string that is evaluated: the nplurals form evaluates the header
expression immediately, and the plural_code form compiles it into a
subroutine whose body runs when a plural message is localized. A header
of `nplurals=2; plural=(system('...'),0);` therefore runs that command
as the catalog loads. The evaluation inherits strict, so an expression
that assigns to an undeclared variable fails to compile, while one
built from calls alone does not.

An application that sets the language attribute from request data, an
Accept-Language header or a locale parameter, and an attacker who can
place a file with a `.po` suffix and chosen contents at a readable
path, together give code execution as the application user. The message
expansion path is not affected: expand_named substitutes only the
placeholder names the caller supplies, and _mangle_value returns the
value unchanged.

Problem types
-------------
- CWE-95 Improper Neutralization of Directives in Dynamically Evaluated
   Code ('Eval Injection')
- CWE-22 Improper Limitation of a Pathname to a Restricted Directory
   ('Path Traversal')

Workarounds
-----------
No fixed release is available, and the distribution has not been
updated since 2018. Apply the patch, which requires the language
attribute to be a bare locale tag and parses the Plural-Forms header
against the gettext plural grammar before it is evaluated. Deployments
that cannot patch should not set the language attribute from request
data, and should map any request supplied locale through a fixed table
of supported tags before passing it to a form or localizer.

References
----------
https://security.metacpan.org/patches/D/Data-MuForm/0.05/CVE-2026-13048-r2.patch
https://metacpan.org/release/GSHANK/Data-MuForm-0.05/source/lib/Data/MuForm/Localizer.pm#L56-63
https://metacpan.org/release/GSHANK/Data-MuForm-0.05/source/lib/Data/MuForm/Localizer.pm#L381-428



