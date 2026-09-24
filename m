X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/24/8
Message-ID: <1f7f1ad0-edb5-4871-a8f8-4e9936b84512@cpansec.org>
Date: Thu, 24 Sep 2026 23:16:04 +0100
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-85491: Catalyst::Seal versions before 0.03 for Perl allow one request to disable a path or route a later one past an authorization check via a dispatch memo keyed on the request path alone
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-85491                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-85491
   Distribution:  Catalyst-Seal
       Versions:  before 0.03

       MetaCPAN:  https://metacpan.org/dist/Catalyst-Seal
       VCS Repo: https://github.com/ThisUsedToBeAnEmail/Catalyst-Seal


Catalyst::Seal versions before 0.03 for Perl allow one request to
disable a path or route a later one past an authorization check via a
dispatch memo keyed on the request path alone

Description
-----------
Catalyst::Seal versions before 0.03 for Perl allow one request to
disable a path or route a later one past an authorization check via a
dispatch memo keyed on the request path alone.

Catalyst::Seal replaces the dispatcher's prepare_action with a version
that memoises how a path resolved: which dispatch type matched, at
which level, and what was left over as arguments. The key is the
request path and nothing else. Action roles that match on the method,
content type, scheme or query make that resolution depend on state the
key does not carry, so the memo answers for a request it was not built
from.

A path that resolves to no action is memoised as well, and replaying
that entry returns without consulting any dispatch type, so no action
is set and the request fails. A GET of a path whose action is declared
POST-only therefore disables that path for every later request, the
correct POST included. An entry that did resolve replays the level the
earlier descent reached. Where a POST-only action sits below a
shallower action on the same path, a GET memoises the shallow route,
and a later POST is dispatched there with an auto() guarding the deeper
controller never running.

The memo is cleared only when an action is registered, which happens at
setup, so an entry lasts for the life of the process, and its cap of
2048 entries bounds how many paths one caller can disable. In the
configuration measured, the misroute lands on the less privileged
action, so it is an authorization check not running rather than a
privilege gain.

Problem types
-------------
- CWE-1023 Incomplete Comparison with Missing Factors
- CWE-706 Use of Incorrectly-Resolved Name or Reference

Workarounds
-----------
For deployments that are not able to upgrade to Catalyst-Seal 0.03, set
CATALYST_SEAL=0 in the application's environment, which leaves the
application as stock Catalyst.

Solutions
---------
Upgrade to Catalyst-Seal 0.03 or later.

References
----------
https://metacpan.org/release/LNATION/Catalyst-Seal-0.02/source/lib/Catalyst/Seal/Dispatch.pm#L237-280
https://metacpan.org/release/LNATION/Catalyst-Seal-0.03/changes

