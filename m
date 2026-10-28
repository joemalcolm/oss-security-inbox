X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/28/9
Message-ID: <CAMVt_Az_FmG84hK0-_mnvnqV1CZg2EQNB1D5EBG5rgVSbyVT1Q@mail.gmail.com>
Date: Wed, 28 Oct 2026 21:49:31 +0530
From: Manikumar <manikumar@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-110985: Apache Kafka: Broker silently skips JWT signature verification for SASL/OAUTHBEARER when the JWKS endpoint URL is not configured
Content-Type: text/plain; charset=utf-8

Severity: important

Affected versions:

- Apache Kafka 4.1.0 through 4.1.2
- Apache Kafka 4.2.0 through 4.2.1
- Apache Kafka 4.3.0

Description:

A Kafka broker using SASL/OAUTHBEARER with the default validator
(sasl.oauthbearer.jwt.validator.class=DefaultJwtValidator) selects its
implementation from configuration. When
sasl.oauthbearer.jwks.endpoint.url is set, the validator verifies the
JWT signature. When that URL is unset (the default) and no
verification key resolver is supplied, DefaultJwtValidator silently
falls back to ClientJwtValidator, which does not verify the JWT
signature, algorithm, or issuer - and the broker starts with no
warning or error. This is the residual of CVE-2026-33557, whose fix
restored signature verification only on the path where the JWKS
endpoint URL is set.


Impact:

A broker in this state accepts any structurally valid JWT, including
"alg":"none" tokens. An unauthenticated remote attacker who can reach
the listener can forge a token asserting any principal - including
configured superusers - and gain full access to the cluster. Only
brokers that enable SASL/OAUTHBEARER validation without a JWKS
endpoint URL (and without a custom verification key resolver) are
affected; brokers that set the URL verify signatures and are not
affected. Unlike CVE-2026-110952 (issuer/audience not enforced by
default), here no signature is verified at all.


Mitigation (all affected versions, no upgrade required):

Set sasl.oauthbearer.jwks.endpoint.url for every listener/mechanism
that uses OAuthBearerValidatorCallbackHandler, or configure a
signature-verifying sasl.oauthbearer.jwt.validator.class.

Resolution:

>From Apache Kafka 4.2.2, 4.3.1, and 4.4.0: a broker that would fall
back to the non-verifying ClientJwtValidator fails to start with a
ConfigException instead of running without signature verification
(secure by default).

Credit:

San Zhang <falaxe1642@...il.com> (reporter)
Kaixuan Li <kaixuanli0131@...il.com> (reporter)
Evan Zhou <ezhou@...fluent.io> (remediation developer)

References:

https://kafka.apache.org/cve-list
https://www.cve.org/CVERecord?id=CVE-2026-110985
