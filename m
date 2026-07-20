X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/20/5
Message-ID: <349f70aa-8198-4625-b6ab-3d71c0364b99@cpansec.org>
Date: Mon, 20 Jul 2026 08:11:55 +0100
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-13577: Dancer2 versions through 2.1.0 for Perl generate insecure session ids when CSPRNG modules are unavailable
Content-Type: text/plain; charset=utf-8


========================================================================
CVE-2026-13577                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-13577
   Distribution:  Dancer2
       Versions:  through 2.1.0

       MetaCPAN:  https://metacpan.org/dist/Dancer2
       VCS Repo:  https://github.com/PerlDancer/Dancer2


Dancer2 versions through 2.1.0 for Perl generate insecure session ids
when CSPRNG modules are unavailable

Description
-----------
Dancer2 versions through 2.1.0 for Perl generate insecure session ids
when CSPRNG modules are unavailable.

Dancer2::Core::Role::SessionFactory::generate_id silently falls back to
a built-in rand-derived session id when both Math::Random::ISAAC::XS
and Crypt::URandom are unavailable.

The fallback session id is generated from a SHA-1 hash of a call to the
built-in rand function, the absolute path of the
Dancer2::Core::Role::SessionFactory module, an internal counter, the
process id, the module instance memory address, and a shuffled string
of characters (using the List::Util::shuffle function, which also uses
the built-in rand function).

These are all low-entropy and easily guessed sources.

The built-in rand() function is seeded with 32-bits and considered
unsuitable for security applications.

Predictable session ids could allow an attacker to gain access to
systems.

Problem types
-------------
- CWE-340 Generation of Predictable Numbers or Identifiers
- CWE-338 Use of Cryptographically Weak Pseudo-Random Number Generator

Workarounds
-----------
Ensure Crypt::URandom and Math::Random::ISAAC::XS modules are installed
in the application PERL5LIB path.


References
----------
https://github.com/PerlDancer/Dancer2/blob/v2.1.0/lib/Dancer2/Core/Role/SessionFactory.pm#L142
https://www.cve.org/CVERecord?id=CVE-2026-5080

