X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/04/3
Message-ID: <5e2dad8b-1ce5-4b13-bc9e-f75792f05c54@cpansec.org>
Date: Fri, 4 Sep 2026 13:22:06 +0100
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-82309: Robots::Validate versions from 0.3.2 before 0.3.11 for Perl allow unbounded outbound DNS queries per validation via a forward-confirmation loop that does not bound the names it queries
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-82309                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-82309
   Distribution:  Robots-Validate
       Versions:  from 0.3.2 before 0.3.11

       MetaCPAN:  https://metacpan.org/dist/Robots-Validate
       VCS Repo:  https://github.com/robrwo/Robots-Validate


Robots::Validate versions from 0.3.2 before 0.3.11 for Perl allow
unbounded outbound DNS queries per validation via a
forward-confirmation loop that does not bound the names it queries

Description
-----------
Robots::Validate versions from 0.3.2 before 0.3.11 for Perl allow
unbounded outbound DNS queries per validation via a
forward-confirmation loop that does not bound the names it queries.

_check_dns issues one PTR query for the client address, keeps the
returned names matching the rule's domain, and issues a forward query
for each until one resolves back to that address. Nothing bounds that
list, and a client controls the reverse zone for its own address, so it
chooses how many names the PTR answer holds. Net::DNS refetches a
truncated answer over TCP by default, so the 512-byte UDP payload does
not cap it either.

Any client whose User-Agent matches a rule with a domain reaches
_check_dns. Each forward name is distinct and client-chosen, so every
query misses the local cache and is resolved against the authoritative
servers for that domain. The queries are synchronous, so the caller is
held until all of them answer or time out.

Problem types
-------------
- CWE-770 Allocation of Resources Without Limits or Throttling
- CWE-405 Asymmetric Resource Consumption (Amplification)

Solutions
---------
Upgrade to Robots-Validate 0.3.11 or later.

References
----------
https://github.com/robrwo/Robots-Validate/security/advisories/GHSA-6399-5qhh-48h5
https://github.com/robrwo/Robots-Validate/commit/6426178c49ff6c440922f31a92a6feb3c661b143.patch
https://metacpan.org/release/RRWO/Robots-Validate-v0.4.0/changes

