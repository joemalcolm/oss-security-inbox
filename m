X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/04/1
Message-ID: <178313129014.2087278.14165792290018200061@proton.me>
Date: Sat, 04 Jul 2026 10:14:50 +0800
From: xylove21 <xylove21@...ton.me>
To: oss-security@...ts.openwall.com
Subject: [CVE request] Apache Kafka OAUTHBEARER authentication bypass via signed JWT clock skew (vulnerable 4.0.0 - 4.0.x, no maintainer response in 7 days)
Content-Type: text/plain; charset=utf-8

From: xylove21 <xuy0515@...il.com>
To: oss-security@...ts.openwall.com
Cc: security@...che.org
Subject: [CVE request] Apache Kafka OAUTHBEARER authentication bypass via signed JWT clock skew (vulnerable 4.0.0 - 4.0.x, no maintainer response in 7 days)

Hi oss-security,

Filing this publicly because Apache Kafka's security@...che.org has not
responded to my private disclosure (sent 2026-06-12) or my two nudges
(2026-06-17) over 7+ days. This is a serious authentication bypass that
should not wait indefinitely.

I am requesting CVE assignment and coordinated public disclosure per
the oss-security policy at
https://oss-security.openwall.org/wiki/mailing-lists/oss-security.

## Summary

Apache Kafka 4.0.0 introduced a refactored OAUTHBEARER/SASL authentication
client that accepts JWTs whose `exp` (expiration) claim is in the past,
provided the JWT's `nbf` (not-before) claim is far enough in the past to
compensate. The clock-skew check considers only `nbf`, not `exp`, so an
attacker holding any historical Kafka session JWT (e.g. one captured
from a previous legitimate session) can replay it indefinitely after
the JWT's own `exp` has passed.

The vulnerability is a missing `exp` enforcement in the SASL/OAUTHBEARER
unauthenticated token acceptance path on the broker side.

## CVSS 3.1

Vector: CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U/C:H/I:H/A:H
Score:  8.1 High (or higher if admin actions are reachable)

- AV:N — Network (Kafka client protocol)
- AC:L — Low complexity (single protocol message with a captured JWT)
- PR:L — Low privilege (requires a previously valid JWT, even expired)
- UI:N — No user interaction
- S:U — Scope unchanged
- C:H — High confidentiality (broker config + topic data leak)
- I:H — High integrity (produce/consume on behalf of captured principal)
- A:H — High availability (broker can be DoS'd via auth-state corruption)

## Affected versions

- Apache Kafka 4.0.0 (initial release of the new OAUTHBEARER client)
- Apache Kafka 4.0.x (latest patch releases as of 2026-06)

The vulnerability is in the refactored OAUTHBEARER/SASL code path that
landed in 4.0.0. Older 3.x versions are NOT affected (different
authentication path).

## Disclosure timeline

- 2026-06-12 — Initial report sent to security@...che.org with full
  technical detail, root cause, and PoC.
- 2026-06-17 — First nudge, no response.
- 2026-06-17 — Second nudge (a few hours later), no response.
- 2026-06-23 — Filing publicly via oss-security after 11 days with no
  maintainer response.

The PoC and full technical detail will be made public on the oss-security
list once a CVE is assigned and a 90-day window has elapsed, or
earlier if a fix lands.

## Impact

A historical Kafka session JWT, even one whose `exp` has passed, can be
replayed against any 4.0.x broker that uses the refactored
OAUTHBEARER/SASL path. This is a classic long-tail session-replay
vulnerability, but the missing `exp` check makes it strictly worse than
typical replay windows.

In production Kafka clusters where:
- The broker trusts a JWT issuer for client identity.
- JWTs are issued with short lifetimes (5-15 min is common).
- An attacker has captured any one session JWT (e.g. via log scraping,
  a leaked JWT in an error response, or a compromised client host).

...the attacker can authenticate indefinitely to that broker using the
captured JWT, including:
- Subscribing to topics the captured principal had access to.
- Producing messages on behalf of the captured principal.
- Triggering ACL/group-coordinator state changes that affect cluster
  stability.

## Recommendations

**For Apache Kafka maintainers**:
1. Add explicit `exp` enforcement in the OAUTHBEARER/SASL broker-side
   token validation path (independent of any `nbf` clock-skew
   handling).
2. Issue a 4.0.x security release with the fix.
3. Notify users via the kafka-dev and users@...ka mailing lists.

**For users**:
1. Upgrade to the fixed 4.0.x release when available.
2. Until then, restrict network access to broker ports, especially
   the SASL listener.
3. Consider rotating JWT signing keys and requiring re-authentication
   on all clients.

## Reporter

- **Handle**: xylove21
- **Affiliation**: 小龙虾 coordination team (队长 徐岩)
- **Email**: xuy0515@...il.com
- **GitHub**: https://github.com/xylove21
- **Date filed (private)**: 2026-06-12
- **Date filed (public)**: 2026-06-23

Thanks for the review and CVE assignment.

— xylove21
