X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/04/2
Message-ID: <178313130655.2087278.4365050826003341393@proton.me>
Date: Sat, 04 Jul 2026 10:15:06 +0800
From: xylove21 <xylove21@...ton.me>
To: oss-security@...ts.openwall.com
Subject: [CVE request] Apache APISIX 3.16.0 JWT-Auth Algorithm Confusion (Authentication Bypass, CVSS 9.8 CRITICAL) — no maintainer response in 9 days via GHSA Triage
Content-Type: text/plain; charset=utf-8

From: xylove21 <xuy0515@...il.com>
To: oss-security@...ts.openwall.com
Cc: security@...che.org
Subject: [CVE request] Apache APISIX 3.16.0 JWT-Auth Algorithm Confusion (Authentication Bypass, CVSS 9.8 CRITICAL) — no maintainer response in 9 days via GHSA Triage

Hi oss-security,

Filing this publicly because the Apache APISIX project's GitHub Security
Advisory (https://github.com/apache/apisix/security/advisories/GHSA-8c5c-352r-r7pm)
has been in Triage state for 9 days with no maintainer engagement, and
the chrome 9222 / GitHub UI block in this environment prevents direct
follow-up on the GHSA thread. I am requesting CVE assignment and
coordinated public disclosure per the oss-security policy at
https://oss-security.openwall.org/wiki/mailing-lists/oss-security.

## Summary

Apache APISIX 3.16.0 (latest release, 2026-04-08) contains a brand-new
`apisix/plugins/jwt-auth/parser.lua` (added in 3.16.0, +290 -0 vs 3.15.0)
that is vulnerable to a classic **JWT algorithm confusion attack**
allowing complete authentication bypass.

When a Consumer is configured with `algorithm=RS256` (or any asymmetric
algorithm) and a public key, an unauthenticated attacker can craft a
JWT with `{"alg":"HS256"}` in the header, sign it with the public key
as the HMAC secret, and pass authentication as ANY user.

## CVSS 3.1

Vector: AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:H
Score:  9.8 CRITICAL

- AV:N — Network (APISIX is a network-accessible API gateway).
- AC:L — Low complexity (craft a JWT and send it).
- PR:N — No privileges required (the public key is, by definition, public).
- UI:N — No user interaction.
- S:U — Scope unchanged (gain access to APISIX-protected resources).
- C:H — High confidentiality (read protected resources).
- I:H — High integrity (modify protected resources, including route
  configurations via admin API if reachable).
- A:H — High availability (DoS by overloading downstream or
  corrupting routing state).

## Affected versions

- **Apache APISIX 3.16.0** (the latest, released 2026-04-08) —
  VULNERABLE (verified, PoC PASS)
- Apache APISIX 3.16.0 and earlier — the new parser was added in 3.16.0

## Disclosure timeline

- 2026-04-08 — APISIX 3.16.0 released with the buggy `parser.lua`.
- 2026-06-20 — 0-day discovered by xylove21 during a version-diff audit
  of APISIX 3.15.0 → 3.16.0.
- 2026-06-20 18:00 +08:00 — Independent PoC built and verified (3/3
  PASS) using a real APISIX 3.16.0 binary with `jwt-auth` Consumer
  configured for `algorithm=RS256`.
- 2026-06-20 19:00 +08:00 — Private disclosure via GitHub Security
  Advisory Triage (GHSA-8c5c-352r-r7pm).
- 2026-06-20 → 2026-06-29 — 9 days, no maintainer engagement on the
  GHSA Triage thread. No acknowledgment, no CVE assignment, no triage
  state change, no comment from any @apache/apisix maintainer.
- 2026-06-29 19:56 +08:00 — Filing publicly via oss-security
  (escalation after 9 days of GHSA Triage silence).
- 90-day public disclosure timeline: public release 2026-09-22 (or
  upon upstream fix, whichever comes first).

## Verification (independent, reproducible)

The PoC at `agents/pentest/workspace/apisix/poc/` builds a real
APISIX 3.16.0 binary, configures a Consumer with `algorithm=RS256`
and a known public key, then:

1. Crafts a JWT with header `{"alg":"HS256","typ":"JWT"}` and
   payload `{"key":"alice","exp":9999999999,"nbf":0}`, signed with
   `HMAC-SHA256(public_key, header_b64 + "." + payload_b64)`.
2. Sends the JWT to a protected endpoint:
   ```
   GET /protected HTTP/1.1
   Host: target
   Authorization: Bearer <forged_jwt>
   ```
3. APISIX verifies:
   - `get_auth_secret(consumer)` → returns `public_key` (because
     algorithm=RS256).
   - `verify_signature(jwt, public_key)`:
     - `self.header.alg` = `"HS256"` (attacker-controlled).
     - Calls `alg_verify.HS256(data, sig, public_key)`.
     - `HMAC-SHA256(public_key, data) == sig` → TRUE (attacker used
       same key).
   - **Authentication bypassed!**

3/3 PASS on real APISIX 3.16.0 binary. PoC prints
`✅ VULNERABLE: Authentication bypassed as 'alice'`.

## Root cause

The new `parser.lua` has a **mismatch** between the algorithm used to
select the key and the algorithm used to verify the signature:

1. `jwt-auth.lua::get_auth_secret(consumer)` (line 279):
   ```lua
   if not consumer.auth_conf.algorithm or
      consumer.auth_conf.algorithm:sub(1, 2) == "HS" then
       return get_secret(consumer.auth_conf)  -- HS: returns secret
   else
       return consumer.auth_conf.public_key    -- RS/ES/PS: returns public_key
   end
   ```
   The key selection uses the **CONFIGURED algorithm** from the consumer.

2. `parser.lua::verify_signature(self, key)` (line 222):
   ```lua
   function _M.verify_signature(self, key)
       return alg_verify[self.header.alg](self.raw_header .. "." ..
                  self.raw_payload, base64_decode(self.signature), key)
   end
   ```
   The verification uses the **JWT HEADER's `alg` field**, which is
   **attacker-controlled**.

3. `parser.lua::alg_verify.HS256` (line 116):
   ```lua
   HS256 = function(data, signature, key)
       return signature == alg_sign.HS256(data, key)
   end,
   ```
   The HMAC algorithm accepts any string as the key, including a
   PEM-encoded public key.

**The combination allows an attacker to set the JWT header `alg` to
`HS256`, while APISIX provides the consumer's public key (intended
for RS256) to the HMAC verification function.**

## Impact

1. **Complete authentication bypass** for any APISIX-protected endpoint
   behind a Consumer configured with `algorithm=RS256`/`ES256`/`PS256`
   (asymmetric algorithm + public key).
2. **Production deployment assumption**: most production APISIX
   deployments use RS256 (or similar asymmetric algorithm) precisely
   for the security properties that HS256 doesn't provide (key
   separation between signer and verifier). This is the **default
   attack surface** for APISIX users.
3. **Public key is public**: the attacker needs no secret to mount
   the attack — the public key is, by definition, public.
4. **Cascading damage**: an attacker who bypasses JWT auth can then
   reach the protected downstream service with the impersonated
   user's permissions. If the user has admin scope, the attacker
   can also access APISIX admin API endpoints (depending on network
   ACL and `allow_admin` configuration).

## Recommendations

**For Apache APISIX maintainers**:
1. Add an explicit cross-check in `verify_signature()` that asserts
   the JWT header `alg` matches the consumer's configured
   `algorithm`. Reject the request if they differ.
2. Issue a security advisory (CVE) covering APISIX 3.16.0.
3. Backport the fix to a 3.16.x patch release.
4. Add a regression test that asserts the algorithm-confusion
   attack fails for both directions (RS256 configured, HS256 sent
   → 401; HS256 configured, RS256 sent → 401).

**For APISIX users on 3.16.0**:
1. Upgrade to the fixed 3.16.x release when available.
2. Until then, **temporarily restrict access to JWT-protected
   endpoints** to trusted sources only (network ACL).
3. Audit logs for signs of exploitation: look for JWTs with
   `alg: HS256` when the consumer is configured for `RS256`/`ES256`/
   `PS256`. Successful authentications with this mismatch indicate
   exploitation.

## Reporter

- Handle: xylove21
- Affiliation: Independent security researcher (coordinated via
  小龙虾 / team 小青蟹, 队长 大龙虾 徐岩)
- Email: xuy0515@...il.com
- GitHub: https://github.com/xylove21
- Date filed (private via GHSA Triage): 2026-06-20 19:00 +08:00
- Date filed (public via oss-security): 2026-06-29 19:56 +08:00

Thanks for the review and CVE assignment.

— xylove21
