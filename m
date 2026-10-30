X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/30/14
Message-ID: <0f165efa-39eb-449b-bdf9-e883459e3c02@cpansec.org>
Date: Fri, 30 Oct 2026 13:00:21 +0000
From: Robert Rothenberg <rrwo@...nsec.org>
To: oss-security@...ts.openwall.com
Subject: Business::GoCardless versions before 1.01 for Perl (3 CVEs)
Content-Type: text/plain; charset=utf-8

CVE-2026-119036
   Business::GoCardless versions before 1.01 for Perl allow memory
   exhaustion by flattening legacy webhook payloads before checking
   their signature

CVE-2026-119037
   Business::GoCardless versions before 1.01 for Perl accept forged
   webhooks when a configured webhook secret is undef or empty

CVE-2026-119038
   Business::GoCardless versions before 1.01 for Perl complete redirect
   flows without checking the session token, letting a leaked redirect
   flow ID create payments against another customer's mandate


========================================================================
CVE-2026-119036                                      CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-119036

   Distribution:  Business-GoCardless
       Versions:  before 1.01
       MetaCPAN:  https://metacpan.org/dist/Business-GoCardless
       VCS Repo:  https://github.com/payprop/business-gocardless


Business::GoCardless versions before 1.01 for Perl allow memory
exhaustion by flattening legacy webhook payloads before checking their
signature

Description
-----------
Business::GoCardless versions before 1.01 for Perl allow memory
exhaustion by flattening legacy webhook payloads before checking their
signature.

A webhook body with a top-level "payload" key is verified as a legacy
webhook. To rebuild the signed string, the payload is flattened into
one key and value pair per leaf, each key carrying the full path to
that leaf, and the pairs are then encoded, sorted and joined. A long
key holding a long array costs memory proportional to the key length
times the array length.

A remote attacker can exhaust memory in the process receiving webhooks
with a single request that carries no valid signature.

Problem types
-------------
- CWE-770 Allocation of Resources Without Limits or Throttling

Solutions
---------
Upgrade to Business-GoCardless 1.01 or later.

References
----------
https://metacpan.org/release/LEEJO/Business-GoCardless-1.01/changes


========================================================================
CVE-2026-119037                                      CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-119037

   Distribution:  Business-GoCardless
       Versions:  before 1.01
       MetaCPAN:  https://metacpan.org/dist/Business-GoCardless
       VCS Repo:  https://github.com/payprop/business-gocardless


Business::GoCardless versions before 1.01 for Perl accept forged
webhooks when a configured webhook secret is undef or empty

Description
-----------
Business::GoCardless versions before 1.01 for Perl accept forged
webhooks when a configured webhook secret is undef or empty.

signature_valid uses each configured secret as the HMAC key, and
nothing rejects undef or an empty string, both of which Digest::SHA
treats as an empty key. A secret read from an unset environment
variable, or an empty entry in a list of rotated secrets, is used as
is.

A remote attacker can sign a forged webhook with an empty key and have
it accepted as sent by GoCardless.

Problem types
-------------
- CWE-347 Improper Verification of Cryptographic Signature

Solutions
---------
Upgrade to Business-GoCardless 1.01 or later.

References
----------
https://metacpan.org/release/LEEJO/Business-GoCardless-1.01/changes


========================================================================
CVE-2026-119038                                      CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-119038

   Distribution:  Business-GoCardless
       Versions:  before 1.01
       MetaCPAN:  https://metacpan.org/dist/Business-GoCardless
       VCS Repo:  https://github.com/payprop/business-gocardless


Business::GoCardless versions before 1.01 for Perl complete redirect
flows without checking the session token, letting a leaked redirect
flow ID create payments against another customer's mandate

Description
-----------
Business::GoCardless versions before 1.01 for Perl complete redirect
flows without checking the session token, letting a leaked redirect
flow ID create payments against another customer's mandate.

confirm_resource takes no session token from the caller. It reads the
redirect flow back from the GoCardless API and completes it with the
token from that response, so the check that the flow is completed by
the session that started it always passes. It then creates the
requested payment or subscription against the flow's mandate. Since
version 1.00, a flow that already has a mandate is returned as
confirmed without being completed again, so the same ID creates a new
payment on every call.

A remote attacker who obtains another customer's redirect flow ID can
create payments or subscriptions against that customer's mandate.

Problem types
-------------
- CWE-639 Authorization Bypass Through User-Controlled Key

Solutions
---------
Upgrade to Business-GoCardless 1.01 or later.

References
----------
https://metacpan.org/release/LEEJO/Business-GoCardless-1.01/changes

