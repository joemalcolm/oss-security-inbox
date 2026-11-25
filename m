X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/25/11
Message-ID: <1aefbdd7-c645-4954-b942-35cf66ea3811@cpansec.org>
Date: Wed, 25 Nov 2026 22:31:07 +0000
From: Robert Rothenberg <rrwo@...nsec.org>
To: oss-security@...ts.openwall.com
Subject: Crypt-JWT for Perl (4 CVEs)
Content-Type: text/plain; charset=utf-8

CVE-2018-25445
   Crypt::JWT versions before 0.024 for Perl skip issuer, subject,
   audience and JWT ID checks when the claim is absent or the option is
   a plain string

CVE-2026-8748
   Crypt::JWT versions before 0.037_1 for Perl compare HMAC signatures
   and JWE authentication tags in non-constant time

CVE-2026-136795
   Crypt::JWT versions before 0.037_1 for Perl allow memory exhaustion
   via unbounded inflation of zip DEF payloads

CVE-2026-136796
   Crypt::JWT versions before 0.037_1 for Perl allow CPU exhaustion via
   an unbounded PBES2 iteration count


========================================================================
CVE-2018-25445                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2018-25445

   Distribution:  Crypt-JWT
       Versions:  before 0.024
       MetaCPAN:  https://metacpan.org/dist/Crypt-JWT
       VCS Repo:  https://github.com/DCIT/perl-Crypt-JWT


Crypt::JWT versions before 0.024 for Perl skip issuer, subject,
audience and JWT ID checks when the claim is absent or the option is a
plain string

Description
-----------
Crypt::JWT versions before 0.024 for Perl skip issuer, subject,
audience and JWT ID checks when the claim is absent or the option is a
plain string.

decode_jwt runs the verify_iss, verify_sub, verify_aud and verify_jti
checks only when the token carries the claim, and honours an option
only as a Regexp or CODE reference. Any other value, such as verify_aud
=> 'myapp', is ignored.

An application that relies on these checks accepts a validly signed
token meant for a different issuer, subject or audience.

Problem types
-------------
- CWE-636 Not Failing Securely

Solutions
---------
Upgrade to Crypt-JWT 0.024 or later.

References
----------
https://github.com/DCIT/perl-Crypt-JWT/commit/b0578979b012fd5ce57be2038a3cda1b3e65ae97.patch
https://metacpan.org/release/MIK/Crypt-JWT-0.024/changes


========================================================================
CVE-2026-8748                                        CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-8748

   Distribution:  Crypt-JWT
       Versions:  before 0.037_1
       MetaCPAN:  https://metacpan.org/dist/Crypt-JWT
       VCS Repo:  https://github.com/DCIT/perl-Crypt-JWT


Crypt::JWT versions before 0.037_1 for Perl compare HMAC signatures and
JWE authentication tags in non-constant time

Description
-----------
Crypt::JWT versions before 0.037_1 for Perl compare HMAC signatures and
JWE authentication tags in non-constant time.

decode_jwt compares HS256, HS384 and HS512 signatures, and the
authentication tag of A128CBC-HS256, A192CBC-HS384 and A256CBC-HS512
encrypted tokens, against the computed value with Perl's eq operator.
Its run time depends on the number of matching leading bytes.

An attacker who can submit many candidate tokens and measure the timing
precisely enough may recover the expected signature or tag byte by byte
and forge a token that verifies.

Problem types
-------------
- CWE-208 Observable Timing Discrepancy

Solutions
---------
Upgrade to Crypt-JWT 0.038 or later.

References
----------
https://github.com/DCIT/perl-Crypt-JWT/commit/0dfc0af5cc1f28b799720fa12a5dcaa3f31fd095.patch
https://metacpan.org/release/MIK/Crypt-JWT-0.038/changes


========================================================================
CVE-2026-136795                                      CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-136795

   Distribution:  Crypt-JWT
       Versions:  before 0.037_1
       MetaCPAN:  https://metacpan.org/dist/Crypt-JWT
       VCS Repo:  https://github.com/DCIT/perl-Crypt-JWT


Crypt::JWT versions before 0.037_1 for Perl allow memory exhaustion via
unbounded inflation of zip DEF payloads

Description
-----------
Crypt::JWT versions before 0.037_1 for Perl allow memory exhaustion via
unbounded inflation of zip DEF payloads.

When a token header sets "zip" to "DEF", decode_jwt inflates the
payload with no limit on the output size. A signed token is inflated
after its signature verifies. An encrypted token is inflated after
decryption, and with RSA-OAEP or ECDH-ES key management anyone who
holds the recipient's public key can produce a token that decrypts.

Problem types
-------------
- CWE-409 Improper Handling of Highly Compressed Data (Data
   Amplification)

Solutions
---------
Upgrade to Crypt-JWT 0.038 or later.

References
----------
https://github.com/DCIT/perl-Crypt-JWT/commit/13057ef8f51ddde66f1013e4eab2e0664d69d284.patch
https://github.com/DCIT/perl-Crypt-JWT/commit/18b20fed11ae5d72c8ad298fb0d9f023e47ec953.patch
https://metacpan.org/release/MIK/Crypt-JWT-0.038/changes


========================================================================
CVE-2026-136796                                      CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-136796

   Distribution:  Crypt-JWT
       Versions:  before 0.037_1
       MetaCPAN:  https://metacpan.org/dist/Crypt-JWT
       VCS Repo:  https://github.com/DCIT/perl-Crypt-JWT


Crypt::JWT versions before 0.037_1 for Perl allow CPU exhaustion via an
unbounded PBES2 iteration count

Description
-----------
Crypt::JWT versions before 0.037_1 for Perl allow CPU exhaustion via an
unbounded PBES2 iteration count.

For a token using a PBES2 key management algorithm, decode_jwt passes
the p2c header parameter to PBKDF2 as the iteration count without a
range check, and derives the key before any integrity check. Unless
accepted_alg rules it out, a token can select PBES2 whenever decode_jwt
is given a symmetric key.

Problem types
-------------
- CWE-606 Unchecked Input for Loop Condition

Solutions
---------
Upgrade to Crypt-JWT 0.038 or later.

References
----------
https://github.com/DCIT/perl-Crypt-JWT/commit/13057ef8f51ddde66f1013e4eab2e0664d69d284.patch
https://github.com/DCIT/perl-Crypt-JWT/commit/18b20fed11ae5d72c8ad298fb0d9f023e47ec953.patch
https://metacpan.org/release/MIK/Crypt-JWT-0.038/changes

