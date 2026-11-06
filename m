X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/06/29
Message-ID: <E33D88AA-DB07-460E-AEAB-88917844F9EB.1@smtp-inbound1.duck.com>
Date: Fri, 06 Nov 2026 13:14:32 -0500
From: theknell@...k.com
To: oss-security@...ts.openwall.com
Subject: InfiniteWP Client: the NOSSL signing key has 31 bits of secret — recovered live in 291.9 seconds
Content-Type: text/plain; charset=utf-8

InfiniteWP Client 1.13.10 — a WordPress management plugin on roughly
200,000 installs — speaks to its management panel through two
authentication branches. The strong branch verifies an RSA
signature. The other, NOSSL, is selected by the enrolling panel
setting one request parameter, on hosts fully capable of RSA. Once
its key is stored, the selection is permanent and the RSA branch is
unreachable.

The stored key is generated as:

md5(base64_encode(panel_public_key) . rand(0, getrandmax()))

The public key is public. The secret is a single rand() result: at
most 2^31 values. The authentication value signs only the action
and message ID — parameters are never signed — and message-ID
ordering is enforced only on the auto_login path, so a captured
request replays with altered parameters.

Live proof, against our own instance only: from one captured
get_stats request and the panel's public key, the key was recovered
offline in 291.9 seconds (~7.36M candidates/sec), byte-identical to
the site-issued key. A forged maintain_site command signed with the
recovered key was accepted and wrote database options that had not
existed before. The key never rotates: recover it once, forge
forever.

Scope, stated plainly: every shipped copy carries the construction;
exploitation requires a NOSSL-enrolled site. The NOSSL-enrolled
share of the 200,000 installs is not externally measurable and is
not claimed here.

Paper: https://archive.org/details/knell-thirty-one-bits
Mirror: https://github.com/the-knell/Thirty-One-Bits
Key: 133883AB9F6EDE5B9BA6B82E27BEDAF0CE152F25 (knell)

Verify: gpg --import knell-public.asc, then
gpg --verify paper-infinitewp-FINAL-2026-11-04.md.asc

— knell

More, signed and timestamped: https://github.com/the-knell
