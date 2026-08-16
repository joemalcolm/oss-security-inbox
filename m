X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/16/3
Message-ID: <fbcc8138-2383-422c-8326-6d8f2a0fd54a@cpansec.org>
Date: Sun, 16 Aug 2026 14:51:32 +0100
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-72887: Net::OAuth::Client versions before 0.32 for Perl allow the service provider to silently downgrade OAuth 1.0a to OAuth 1.0 in get_request_token
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-72887                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-72887
   Distribution:  Net-OAuth
       Versions:  before 0.32

       MetaCPAN:  https://metacpan.org/dist/Net-OAuth
       VCS Repo:  https://github.com/vurtdev/Net-OAuth


Net::OAuth::Client versions before 0.32 for Perl allow the service
provider to silently downgrade OAuth 1.0a to OAuth 1.0 in
get_request_token

Description
-----------
Net::OAuth::Client versions before 0.32 for Perl allow the service
provider to silently downgrade OAuth 1.0a to OAuth 1.0 in
get_request_token.

Passing a callback to the constructor selects OAuth 1.0a.
get_request_token then revokes that choice when the request token
response omits oauth_callback_confirmed, with no exception, no warning
and no option to require 1.0a. The access token request is built from
the OAuth 1.0 message class, which has no verifier parameter, so
oauth_verifier is dropped from the request even when get_access_token
was passed one.

oauth_verifier is the binding that OAuth 1.0a added between the
authorization step and the token exchange. An application that asked
for 1.0a and gets 1.0 is open to OAuth 1.0 session fixation, where an
attacker obtains a request token, has the victim authorize it, and then
completes the exchange themselves, linking the victim's provider
account to a session the attacker controls. No attacker action sets up
the downgrade: a provider that does not confirm the callback is enough.

Problem types
-------------
- CWE-757 Selection of Less-Secure Algorithm During Negotiation
   ('Algorithm Downgrade')

Solutions
---------
Upgrade to Net-OAuth 0.32 or later.

References
----------
https://github.com/vurtdev/Net-OAuth/security/advisories/GHSA-jh72-4qq2-8j6g
https://metacpan.org/release/RRWO/Net-OAuth-0.32/changes
https://github.com/vurtdev/Net-OAuth/commit/fd505dac1988723ed96721657663f2e4ac731644.patch
https://datatracker.ietf.org/doc/html/rfc5849#section-2.1
https://datatracker.ietf.org/doc/html/rfc5849#section-2.3



