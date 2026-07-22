X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/22/17
Message-ID: <7ff8bf6b-a00a-4eb3-b321-a6b8b1980956@cpansec.org>
Date: Wed, 22 Jul 2026 21:32:10 +0100
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-13089: OIDC::Lite versions through 0.12.1 for Perl allow ID Token signature verification bypass via a token-controlled algorithm allowlist in verify
Content-Type: text/plain; charset=utf-8


========================================================================
CVE-2026-13089                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-13089
   Distribution:  OIDC-Lite
       Versions:  through 0.12.1

       MetaCPAN:  https://metacpan.org/dist/OIDC-Lite
       VCS Repo:  https://github.com/ritou/p5-oidc-lite


OIDC::Lite versions through 0.12.1 for Perl allow ID Token signature
verification bypass via a token-controlled algorithm allowlist in
verify

Description
-----------
OIDC::Lite versions through 0.12.1 for Perl allow ID Token signature
verification bypass via a token-controlled algorithm allowlist in
verify.

When the caller does not pin an algorithm,
OIDC::Lite::Model::IDToken::verify sets
$self->alg($self->header->{alg}) from the token's own header and then
calls decode_jwt(token, key, 1, [$self->alg]), handing JSON::WebToken
an accepted-algorithm allowlist taken from the untrusted token. A token
with alg=none yields ['none'], so decode_jwt returns the claims with no
signature check, and a token with alg=HS256 is verified with the RP's
RSA public key as the HMAC secret (RS to HS confusion).

The ID Token is the OpenID Connect authentication assertion delivered
to the Relying Party. Any caller that verifies an ID Token through the
unpinned load(token)->verify path, or load(token, key) with only the
key pinned, accepts a forged token carrying attacker-chosen claims such
as sub and is authenticated as any user. Passing an explicit algorithm
so $self->alg is already set bypasses the header-derived allowlist and
is not affected.

Note that the latest version uploaded to CPAN is 0.10. Later versions
are available in the git repository.

Problem types
-------------
- CWE-347 Improper Verification of Cryptographic Signature

Workarounds
-----------
Apply the patch.

Otherwise, pin the expected signature algorithm at the call site, for
example OIDC::Lite::Model::IDToken->load($token, $key, $alg) with an
explicit non-none $alg, so verify uses the pinned algorithm instead of
the value in the token header.


References
----------
https://datatracker.ietf.org/doc/html/rfc8725#section-3.1
https://github.com/ritou/p5-oidc-lite/pull/31
https://security.metacpan.org/patches/O/OIDC-Lite/0.10/CVE-2026-13089-r1.patch



