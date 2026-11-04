X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/04/4
Message-ID: <ba90fbe7-4694-4f48-9630-6c70d05850b3@cpansec.org>
Date: Wed, 4 Nov 2026 14:24:40 +0000
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-121632: Data::MuForm versions through 0.05 for Perl render attribute values and option labels into HTML without escaping
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-121632                                      CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-121632

   Distribution:  Data-MuForm
       Versions:  through 0.05
       MetaCPAN:  https://metacpan.org/dist/Data-MuForm
       VCS Repo:  https://github.com/gshank/data-muform


Data::MuForm versions through 0.05 for Perl render attribute values and
option labels into HTML without escaping

Description
-----------
Data::MuForm versions through 0.05 for Perl render attribute values and
option labels into HTML without escaping.

process_attrs writes each attribute value into the markup as is. The
select, radio group and checkbox group renderers pass each option to
it, so an option's value becomes an unescaped attribute. Option and
option group labels are also unescaped, the group label inside a label
attribute and the others in element content.

Any application whose option list is built from data rather than
literals, using an options_<field_name> method, a build_options method
or a DBIC model, allows attacker-influenced text in an option value or
label that can embed JavaScript in rendered pages. Attribute values
built from data, such as through element_attr, are affected the same
way.

Problem types
-------------
- CWE-79 Improper Neutralization of Input During Web Page Generation
   ('Cross-site Scripting')

Solutions
---------
No fixed CPAN release is currently available. Apply the patch.

References
----------
https://github.com/gshank/data-muform/pull/18
https://metacpan.org/release/GSHANK/Data-MuForm-0.05/source/lib/Data/MuForm/Renderer/Base.pm#L202-228

