X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/24/2
Message-ID: <87ecejcink.fsf@cmpct.info>
Date: Thu, 24 Sep 2026 06:39:27 +0100
From: Sam James <sam@...too.org>
To: oss-security@...ts.openwall.com
Subject: Fwd: Tor Project Forum: Security Release 0.4.9.13
Content-Type: text/plain; charset=utf-8

Here's the relevant release notes at the link in the email below:
"""
+Changes in version 0.4.9.13 - 2026-09-23
+  This security release includes several high severity fixes, once again
+  originating from the LLM report firehose. The fixes affect all Tor
+  components: relays, clients, and onion services. We strongly recommend
+  upgrading as soon as possible.
+
+  o Major bugfixes (security):
+    - Avoid a set of possible memory corruption, double-free, and null
+      pointer dereference bugs that could occur with some reverse DNS
+      virtual address configurations. Fixes bug 41381; bugfix on
+      0.1.0.1-rc. Tracked as TROVE-2026-051.
+    - Avoid cacheing DNS PTR responses when DNS caching is disabled.
+      Previous code to prevent this caching parsed the response
+      addresses incorrectly, and defaulted to caching when the address
+      could not be parsed. Fixes bug 41380; bugfix on 0.2.4.7-alpha.
+      Tracked as TROVE-2026-050.
+
+  o Major bugfixes (client stream handling):
+    - Stop trying to reattach BEGIN_DIR directory streams. Previously we
+      would look at the reason field in the END cell and consider
+      retrying it like a normal BEGIN exit request, which led to bizarre
+      behavior. TROVE-2026-052. Fixes bug 41369; bugfix on 0.1.2.5-alpha.
+
+  o Major bugfixes (client, guard):
+    - Stop blaming guards for circuit, stream, directory-request, and
+      generic channel-close failures, and instead only record guard
+      failure once per unsuccessful outgoing connection establishment.
+      This also covers directory guards, synchronous failures, and proxy
+      or pluggable transport paths.
+      This fixes TROVE-2026-030, TROVE-2026-038, TROVE-2026-041.
+      Fixes bug 41360; bugfix on 0.3.0.1-alpha, bug 41365;
+      bugfix on 0.3.0.1-alpha, and bug 41366; bugfix on 0.3.0.1-alpha.
+
+  o Major bugfixes (connection handling):
+    - Fix a use-after-free when a TCP connection succeeds immediately
+      but starting its TLS handshake fails. Fixed by detaching the OR
+      connection from its channel before freeing the channel, so
+      deferred connection cleanup cannot access freed memory. This fixes
+      TROVE-2026-056. Fixes bug 41398; bugfix on 0.2.4.4-alpha.
+
+  o Major bugfixes (onion service):
+    - A service-side rendezvous circuit that failed before reaching the
+      rendezvous point was relaunched twice (once when marked for close
+      and once more when freed), producing two concurrent circuits that
+      carried the same rendezvous cookie and key material and, with
+      repeated failures, 2^(N+1)-1 circuit builds per INTRODUCE2 instead
+      of N+1. It is now relaunched exactly once. TROVE-2026-058. Fixes
+      bug 41408; bugfix on 0.4.7.11.
+    - Rotate intro point at the service if the INTRODUCE2 replay cache
+      is at capacity. TROVE-2026-012. Fixes bug 41256; bugfix
+      on 0.3.2.1-alpha.
+
+  o Major bugfixes (onion service, TROVE):
+    - Reject INTRODUCE2 cells containing a zeroed rendezvous point ntor
+      onion key. Previously, we would record a first-hop failure against
+      a guard that was never contacted. This is trove TROVE-2026-030.
+      Fixes bug 41360; bugfix on 0.4.9.1-alpha.
+
+  o Major bugfixes (relay, ):
+    - Remove circuits waiting for a channel from the pending channel
+      list as soon as they are marked for close instead of waiting until
+      they are freed. Fixes bug 41393; bugfix on 0.2.8.1-alpha.
+
+  o Major bugfixes (stream isolation):
+    - When a client establishes a circuit to an onion service, but the
+      original stream had already closed, we were mistakenly clearing
+      the isolation parameters on that circuit, allowing it to be reused
+      by a future stream from a different isolation context. A malicious
+      onion service or HSDir relay could use this technique to break
+      first-party isolation (FPI) in Tor Browser. TROVE-2026-053. Fixes
+      bug 41368; bugfix on 0.2.3.3-alpha.
+
+  o Minor features (fallbackdir):
+    - Regenerate fallback directories generated on September 23, 2026.
+
+  o Minor features (geoip data):
+    - Update the geoip files to match the IPFire Location Database, as
+      retrieved on 2026/09/23.
+
+  o Minor features (HSDirs):
+    - Rate limit "Service descriptor has an invalid signature length"
+      messages at HSDir relays. This step only makes a flooding attack
+      more tolerable; it does not resolve or explain a flooding attack.
+      Improves the situation for ticket 41339. Bugfix on 0.3.0.1-alpha.
+
+  o Minor bugfixes (client, stream handling):
+    - When an exit or onion service answers a BEGIN with an END cell
+      whose reason byte is 0, report the stream to the application and
+      to controllers as a generic remote failure. Previously reason 0
+      turned into the internal "succeeded" value, so SOCKS clients got a
+      success reply, HTTP CONNECT clients got "200 OK", and controllers
+      got a STREAM SUCCEEDED event for a stream that never connected.
+      Also fix the formatting of unrecognized END reasons in controller
+      STREAM events. Fixes bug 41353; bugfix on 0.1.2.3-alpha.
+
+  o Minor bugfixes (controller):
+    - No longer seg fault if a local authenticated controller connection
+      asks for SETCIRCUITPURPOSE with no arguments. Fixes bug 41332;
+      bugfix on 0.4.1.1-alpha.
+
+  o Minor bugfixes (directory parsing):
+    - When parsing an authority certificate with an explicit length, do
+      not skip trailing whitespace beyond that length. All current
+      callers pass NUL-terminated strings, so no bug was reachable in
+      practice. Fixes bug 41378; bugfix on 0.4.0.1-alpha.
+
+  o Minor bugfixes (metrics):
+    - Fix an off-by-one in metrics_store_hist_entry_get_value() that
+      read one histogram bucket past the end of the array when asked for
+      a bucket boundary that does not exist. No in-tree caller currently
+      passes such a value. Fixes bug 41376; bugfix on 0.4.8.1-alpha.
+
+  o Minor bugfixes (pluggable transports):
+    - Bridge clients or bridge relays no longer mangle memory the second
+      time a pluggable transport or socksproxy configuration is changed,
+      such as by setconf, resetconf, or sighup. Fixes bug 41375; bugfix
+      on 0.4.0.1-alpha.
+
"""

-------------------- Start of forwarded message --------------------
Date: Wed, 23 Sep 2026 20:33:05 +0000
From: David Goulet <noreply@...um.torproject.org>
To: sam@...ct.info
Subject: Tor Project Forum: Security Release 0.4.9.13




# Where to Download

* [Tarballs](https://dist.torproject.org/)
* [Gitlab Repository](https://gitlab.torproject.org/tpo/core/tor)
* [Bug Report](https://gitlab.torproject.org/tpo/core/tor/-/issues/new)

# Changes

Below are the major changes of the released versions and links to more detailed release notes.

## Stable

Today, we released stable version **0.4.9.13** to again address a series of high-severity security issues and some minor fixes.

We expect to make the related tickets public roughly one week from today. Until then, the only publicly available details about these security issues can be found in the `ReleaseNotes` file (see below).

We **strongly** recommend updating as soon as possible. Debian packages are already available [here](https://deb.torproject.org), and packages for other distributions should follow shortly after this announcement.

These issues affect all entities that is clients, onion services and relays.

#### Release Notes

* [0.4.9.x](https://gitlab.torproject.org/tpo/core/tor/-/raw/release-0.4.9/ReleaseNotes)





---
[Visit Topic](https://forum.torproject.org/t/security-release-0-4-9-13/22178/1) or reply to this email to respond.

To unsubscribe from these emails, [click here](https://forum.torproject.org/email/unsubscribe/2a894c70a56b1df8286c9023d551f5adb718ebf3174e0c96f6a6ba5e5e3e220a).

Content of type "text/html" skipped

-------------------- End of forwarded message --------------------


Download attachment "signature.asc" of type "application/pgp-signature" (419 bytes)
