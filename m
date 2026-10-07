X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/07/33
Message-ID: <87jynt3xnw.fsf@gentoo.org>
Date: Thu, 08 Oct 2026 00:20:51 +0100
From: Sam James <sam@...too.org>
To: oss-security@...ts.openwall.com
Subject: tor-0.4.9.14 released
Content-Type: text/plain; charset=utf-8

"""
@@ -1,3 +1,136 @@
+Changes in version 0.4.9.14 - 2026-10-07
+  Another week, another security release. This again contains major bugfixes
+  related to high severity issues. The fixes affect all Tor components: relay,
+  client, onion service and authority. We strongly recommend upgrading as soon
+  as possible.
+
+  o Major bugfixes (conflux, relay, security):
+    - Only accept a CONFLUX_LINK cell on a plain OR circuit, and refuse
+      to turn a (pending) conflux leg into an introduction or rendezvous
+      point. Previously a client could link a rendezvous-point circuit
+      into a conflux set and then, with a forged sequence number in the
+      LINK cell, make the relay tear the set down from inside the
+      rendezvous splice, triggering a fatal assertion in
+      assert_circuit_ok(). Also reject a LINK/LINKED cell whose
+      last_seqno_recv is above what we ever sent on the set. Fixes bug
+      41328; bugfix on 0.4.8.1-alpha.
+
+  o Major bugfixes (security):
+    - Correctly copy the MiddleOnly flag from routerstatuses to node
+      objects. Without this fix, the MiddleOnly flag was ignored on non-
+      authorities, and clients could use MiddleOnly relays for
+      inappropriate roles in onion service circuits. Fixes bug 41410;
+      bugfix on 0.4.8.15. Tracked as TROVE-2026-067.
+    - Treat a router descriptor as expired if any of its family
+      certificates has expired. Previously, we incorrectly ignored the
+      expiration time of the family certificate. Fixes bug 41413; bugfix
+      on 0.4.9.2-alpha. Tracked as TROVE-2026-062.
+
+  o Major bugfixes (circuit build timeout):
+    - Under certain conditions, the circuit build timeout history could
+      become filled with "abandoned" entries, which would block updating
+      the timeout as network conditions change. This could cause
+      connectivity failure if the timeout value became stuck at a
+      sufficiently low value. Missing first-hop timeout accounting could
+      also prevent the timeout from being reset, when these failures
+      happen at the first hop of the circuit. We've corrected the first-
+      hop accounting, and have fixed two sources of excessive abandoned
+      timeout entries, and added additional reset handling when the
+      timeout history becomes full of abandoned timeout measurements.
+      We've also added diagnostic log messages to help detect any
+      potential remaining cases of timeout miscounting and abandonment
+      accumulation. Fixes bug 41420; bugfix on 0.2.2.14-alpha.
+
+  o Major bugfixes (circuit, channel):
+    - Cancelling a circuit before its first hop completed would cause
+      Tor to stop using a working guard connection for new circuits and
+      abort unrelated pending directory requests. These cancellations
+      could also be triggered remotely, causing additional TLS
+      connections to the same guard that could aid traffic analysis. DoS
+      conditions and/or overly short circuit build timeouts could also
+      cause unnecessary connection replacement, at the exact time when
+      additional connection load would be most harmful. We've restricted
+      this recovery behavior to actual first-hop timeouts, allowing at
+      least the longer of the measurement timeout and the initial
+      preserve recovery from stalled connections without changing guard
+      reachability. Fixes bug 41412; bugfix on 0.1.1.10-alpha.
+
+  o Major bugfixes (directory authority):
+    - When enforcing AuthDirMaxServersPerAddr, only count relays that we
+      have found reachable at that address and stop resetting the uptime
+      history of relays over the limit. This is TROVE-2026-064. Fixes
+      bug 41405; bugfix on 0.2.4.10-alpha.
+
+  o Major bugfixes (onion service client):
+    - When an introduction point NACKs our INTRODUCE1 and we re-extend
+      the same circuit to another introduction point, update the
+      circuit's introduction point authentication key. Fixes bug 41437;
+      bugfix on 0.3.2.1-alpha.
+
+  o Major bugfixes (onion services):
+    - Fix the behavior of HiddenServiceAllowUnknownPorts, which aims to
+      slow down port-scanning on onion services. It was correct as
+      implemented in Tor 0.2.6.3-alpha (ticket 14084), but during the
+      transition to v3 onion services we accidentally inverted its
+      logic. Now onion services will resume closing the client's circuit
+      if it asks to connect to an unconfigured port. Fixes bug 41435;
+      bugfix on 0.3.2.1-alpha.
+
+  o Minor features (fallbackdir):
+    - Regenerate fallback directories generated on October 07, 2026.
+
+  o Minor features (geoip data):
+    - Update the geoip files to match the IPFire Location Database, as
+      retrieved on 2026/10/07.
+
+  o Minor bugfixes (client):
+    - Stop logging a misleading backtrace when the user uses
+      AutomapHostsOnResolve combined with a MapAddress line that maps to
+      a .exit address. Fixes bug 41418; bugfix on 0.3.2.1-alpha.
+
+  o Minor bugfixes (compilation):
+    - Only define the SYS_SECCOMP fallback when using libseccomp. This
+      avoids redefining a system provided macro in builds with
+      --disable-seccomp. Bugfix on 0.4.9.4-rc.
+
+  o Minor bugfixes (compression):
+    - Harden the lzma2 streaming implementation against some kinds of
+      infinite-loop denial of service attacks. This isn't actually a
+      security vulnerability in Tor, since we never use lzma2 in
+      streaming mode. Fixes bug 41324; bugfix on 0.3.1.1-alpha.
+
+  o Minor bugfixes (consensus diff):
+    - Reject consensus diffs at exactly the line-count threshold and
+      above. Previously, a diff with exactly the threshold number of
+      lines passed the limit check. Bugfix on 0.4.9.12.
+
+  o Minor bugfixes (directory authority):
+    - When the votes select an unsupported consensus method, fall back
+      to the newest method supported by the current configuration. This
+      fixes the issue that authorities with AuthDirSupport048Clients
+      enabled could still pick consensus method 36 if the method in the
+      votes was below. Bugfix on 0.4.9.12.
+
+  o Minor bugfixes (fuzzing):
+    - Fix a false positive from fuzzing code caused by an earlier
+      security fix for consensus-diff application. Fixes bug 41385;
+      bugfix on 0.4.9.12.
+
+  o Minor bugfixes (memory management):
+    - Preserve cleanup requests raised during reclamation while memory
+      remains over the limit, leaving further cleanup to the main loop.
+      Bugfix on 0.4.9.12.
+    - Recompute memory usage after cache cleanup so that relay END cells
+      queued while expiring pending DNS resolutions count toward circuit
+      memory reclamation. Bugfix on 0.3.5.1-alpha.
+
+  o Minor bugfixes (onion services):
+    - Stop memory-leaking an address string for every stream begin
+      request to an onion service unix domain socket ("unix:")
+      destination. Fixes bug 41434; bugfix on 0.2.6.3-alpha.
"""

sam

Download attachment "signature.asc" of type "application/pgp-signature" (419 bytes)
