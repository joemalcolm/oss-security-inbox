X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/09/4
Message-ID: <CADsFsETQ_eC5L3feKu43nyx1qKoMwdCDq7a3DS2TTz=TnQ4_tg@mail.gmail.com>
Date: Wed, 9 Sep 2026 03:02:21 -0400
From: "Mr. Gatto" <drew.morana@...il.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-37171: SuperTokens Core cross-tenant session isolation bypass (6.0.0-11.4.0)
Content-Type: text/plain; charset=utf-8

Hello,

This is a disclosure for CVE-2026-37171, a cross-tenant authorization flaw
in
SuperTokens Core, the self-hosted authentication server by SuperTokens Inc.

Affected: SuperTokens Core (supertokens-core) versions 6.0.0 through 11.4.0.
CWE: CWE-863 (Incorrect Authorization).
CVE: CVE-2026-37171 (published; NVD and GitHub Advisory
GHSA-j7vw-hh5c-2w6x).

Summary
-------
SuperTokens Core lacks tenant separation in session operations. The Core
derives
the tenant identifier from the access token's "tId" claim and trusts it
without
comparing it to the tenant specified in the HTTP request path. As a result,
an
authenticated party operating in one tenant can verify, read, regenerate,
and
otherwise act on sessions, data, and endpoints belonging to another tenant.

Impact
------
In a multi-tenant deployment, a party with a valid session in one tenant can
reach another tenant's sessions and data. This is a cross-tenant
confidentiality
and integrity breach within a single SuperTokens Core deployment.

Example
-------
A request such as:

POST /<tenantB>/recipe/session/verify

carrying an access token whose "tId" claim is tenantA is served in tenantA's
context rather than being rejected for the tenantB path. The Core reads the
tenant from the token, not the path.

Mitigation
----------
- Treat the SuperTokens Core service as sensitive infrastructure. Keep it
off
any untrusted network; the Core admin interface trusts its callers, and by
default binds to localhost.
- Set api_keys on the Core so the admin interface is not reachable without
a key.
- Upgrade to a fixed release once the vendor ships one. No fixed version is
named
in the current CVE record; operators running 6.0.0-11.4.0 should apply the
network and api_keys mitigations now.

Details / advisory
------------------
Full advisory:
https://www.google.com/url?q=https://whitenbaker.com/supertokens-core-multitenant-advisory&source=gmail&ust=1789023669402000&sa=E
NVD:
https://www.google.com/url?q=https://nvd.nist.gov/vuln/detail/CVE-2026-37171&source=gmail&ust=1789023669402000&sa=E
GitHub Advisory:
https://www.google.com/url?q=https://github.com/advisories/GHSA-j7vw-hh5c-2w6x&source=gmail&ust=1789023669402000&sa=E

Discoverer: Drew Morana (@dmorana), Whitenbaker.

Regards,
Drew Morana
Whitenbaker

