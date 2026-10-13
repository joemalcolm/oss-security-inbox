X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/13/12
Message-ID: <CADk+mPDKPYUuMWK05bOs_6bX57a-wFw7+ah1DTZfNDoxhVJcgA@mail.gmail.com>
Date: Tue, 13 Oct 2026 19:00:00 +0200
From: Rainer Gerhards <rgerhards@...adiscon.com>
To: oss-security@...ts.openwall.com
Subject: rsyslog RainerScript replace() output length overflow (GHSA-48f2-29wv-5jgc)
Content-Type: text/plain; charset=utf-8

Hello,

rsyslog has disclosed GHSA-48f2-29wv-5jgc, an output length overflow in
RainerScript replace(). The three-argument form of wrap() uses the same
helper. This is not exposed by rsyslog's default small-message configuration.

An affected deployment needs both an explicit ruleset that passes
attacker-influenced values to replace() or three-argument wrap(), and a
maxMessageSize large enough to accept the source and replacement values.
The reported TCP trigger used a 131,133-byte message with a 200k limit.

The original sizing pass held the expanded result length in a 32-bit
unsigned integer. An expansion to exactly 2^32 bytes wrapped that length
to zero, causing an undersized allocation. The construction pass then
wrote replacement bytes beyond the allocated buffer. The reporter
demonstrated a network-triggered heap out-of-bounds write and daemon
termination under ASan. No code execution, confidentiality loss, or
integrity loss has been demonstrated.

The upstream fix in grammar/rainerscript.c computes the result length in
size_t and rejects any result above maxMessageSize before allocation. The
affected replace() and wrap() calls return an empty string and issue a
warning when this limit is reached. Two-argument wrap() is also bounded.

The private advisory listed rsyslog >= 8.6.0 through 8.2608.0 and later
vulnerable daily builds as affected. The reporter checked this range;
upstream has not independently verified the first affected release.
A fixed daily-stable build dated 2026-10-13 is planned; its availability
and exact package identifiers should be checked in the published advisory.
The next scheduled stable release will also include the fix.

CVSS v3.1: 7.5 (AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H). This score describes
the vulnerable path once configured; the required configuration is
unusual in ordinary deployments.

Until updated, operators can keep the default small maximum message size,
avoid attacker-influenced replacement values in affected rulesets, or
restrict access to affected listeners.

Advisory: https://github.com/rsyslog/rsyslog/security/advisories/GHSA-48f2-29wv-5jgc
CVE: requested through GitHub; identifier pending.
Reporter: Akhil Koul (akoul).

AI assistance was used in the report and upstream fix preparation. The
reporter manually verified the ASan reproducer and negative control.

Regards,
Rainer Gerhards
rsyslog project
