X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/01/8
Message-ID: <d23d48e4-078a-49a6-bbdd-49dd97482480@gmail.com>
Date: Sat, 1 Aug 2026 11:36:27 +0100
From: Robert Rothenberg <robrwo@...il.com>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-18536: Data::Entropy versions before 0.010 for Perl read remote entropy sources over plain HTTP
Content-Type: text/plain; charset=utf-8


========================================================================
CVE-2026-18536                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-18536
   Distribution:  Data-Entropy
       Versions:  before 0.010

       MetaCPAN:  https://metacpan.org/dist/Data-Entropy
       VCS Repo:  https://github.com/robrwo/Data-Entropy


Data::Entropy versions before 0.010 for Perl read remote entropy
sources over plain HTTP

Description
-----------
Data::Entropy versions before 0.010 for Perl read remote entropy
sources over plain HTTP.

The Data::Entropy::RawSource::RandomOrg and
Data::Entropy::RawSource::RandomnumbersInfo remote sources are accessed
over plain HTTP.

The Data::Entropy::RawSource::RandomOrg integrity check trivially
matches any non-empty byte string.

Any on-path attacker, such as open WiFi, a compromised ISP, captive
portal, or a hostile egress proxy substitutes the response and thereby
chooses the bytes returned by rand_bits and rand_int for every
application that selected one of these sources via with_entropy_source.
The _checkbuf method response is equally attacker-controlled, so the
retry/sleep behaviour is steerable too.

Problem types
-------------
- CWE-319 Cleartext Transmission of Sensitive Information
- CWE-353 Missing Support for Integrity Check

Workarounds
-----------
Deployments should not use the RandomOrg or RandomnumbersInfo sources,
as these are flawed.

They have been removed from Data::Entropy 0.010. (There was a change to
use HTTPS to connect to these sources in version 0.009 that did not
work.)

Note that Data::Entropy has been deprecated since version 0.008. Users
are advised to migrate to alternative solutions that use system sources
of random data, such as Crypt::SysRandom, Crypt::URandom or
Crypt::PRNG.


References
----------
https://github.com/robrwo/Data-Entropy/security/advisories/GHSA-845w-rcqw-jwvv
https://metacpan.org/release/RRWO/Data-Entropy-0.010/changes
https://metacpan.org/release/RRWO/Data-Entropy-0.008/view/lib/Data/Entropy.pm#STATUS
https://security.metacpan.org/docs/guides/random-data-for-security.html



