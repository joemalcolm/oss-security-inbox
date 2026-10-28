X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/28/8
Message-ID: <CAMVt_AxvXqHZoNWsLj1NjGs5LLLMAn99qNPbhusq18PC_P_fnQ@mail.gmail.com>
Date: Wed, 28 Oct 2026 21:47:45 +0530
From: Manikumar <manikumar@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-110952: Apache Kafka: Broker does not enforce JWT issuer and audience validation for SASL/OAUTHBEARER by default
Content-Type: text/plain; charset=utf-8

Severity: moderate

Affected versions:

- Apache Kafka 3.1.0 before 4.4.0

Description:

A Kafka broker that authenticates clients with SASL/OAUTHBEARER using
the bundled JWKS-backed validator always verifies the JWT signature,
but two further checks are only performed when explicitly configured:

- The issuer (iss) claim is verified only when
sasl.oauthbearer.expected.issuer is set. When it is unset, a
validly-signed token carrying the expected audience is accepted
regardless of which issuer minted it.
- An audience (aud) claim is required only when
sasl.oauthbearer.expected.audience is set. When it is unset, a
validly-signed token that omits the aud claim is accepted. (A token
that carries an aud claim is
  still rejected when no expected audience is configured.)

Both options default to unset and have been documented as optional
(Importance LOW) since KIP-768 (3.1.0).

Impact:
  The exposure is realizable mainly in deployments whose JWKS endpoint
serves signing keys for more than one issuer (a multi-tenant identity
provider, an aggregated/shared JWKS, or shared signing keys): a token
  minted for a different issuer, or a token lacking an audience, may
be accepted to authenticate — potentially as a higher-privileged
principal. In a single-issuer deployment where the provider controls
the iss
  claim and issues audience-scoped tokens, exposure is limited. The
signature trust anchor remains enforced in all cases. This is distinct
from CVE-2026-33557 (acceptance of unsigned/unvalidated tokens); here
the
  signature is validated and only the issuer/audience checks are not
enforced by default.

Mitigation (all affected versions, no upgrade required):
  Set both sasl.oauthbearer.expected.issuer (to your provider's exact
iss value) and sasl.oauthbearer.expected.audience (to the audience(s)
your brokers expect), per listener. Brokers that set these perform
  exact-match issuer/audience checks and are not affected. Both have
been available since 3.1.0.

Resolution:
  From Apache Kafka 4.4.0: a broker configured with a JWKS endpoint
fails to start unless both sasl.oauthbearer.expected.issuer and
sasl.oauthbearer.expected.audience are set (secure by default).
Deployments that
  intentionally do not restrict the issuer and/or audience may opt out
per axis with sasl.oauthbearer.allow.unverified.issuer=true and/or
sasl.oauthbearer.allow.unverified.audience=true.

Credit:

Kai Aizen <kai.aizen.dev@...il.com>, SnailSploit (reporter)
Evan Zhou <ezhou@...fluent.io> (remediation developer)

References:

https://kafka.apache.org/cve-list
https://www.cve.org/CVERecord?id=CVE-2026-110952
