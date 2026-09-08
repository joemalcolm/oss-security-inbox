X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/08/20
Message-ID: <8733vjcvc1.fsf@cmpct.info>
Date: Tue, 08 Sep 2026 22:00:14 +0100
From: Sam James <sam@...ct.info>
To: oss-security@...ts.openwall.com
Subject: Fwd: Tor Project Forum: Security Release 0.4.9.12
Content-Type: text/plain; charset=utf-8

Here's the relevant release notes at the link in the email below:
"""
Changes in version 0.4.9.12 - 2026-09-08
  Another security release containing several high security fixes reported by
  the exciting and controversial world of LLMs. One important note is that new
  protocol versions are recommended for clients and relays (41316).
  Furthermore, authorities will NOT accept relay descriptor containing TAP keys
  anymore hence the importance for all relays to upgrade to the latest 0.4.9.x
  stable version. We very strongly recommend upgrading as soon as possible.

  o Major bugfixes (security):
    - Do not purge memory for OOM from within low-level code.
      Previously, we would handle OOM conditions from within
      append_cell_to_circuit_queue, which could appear at various places
      within our call stack, and lead to objects being freed at
      surprising points in the code, with attendent risk of use-after-
      free errors. Now we only check for OOM conditions there, and
      handle them from much higher in the stack. Fixes bugs 41341,
      41336, 41326, and 41363; bugfix on 0.2.4.14-alpha. Root-cause fix
      for TROVE-2026-043.
    - Fix a bug where a hostile cache could trick a client into falsely
      believing that certain relays' microdescriptors or router
      descriptors were unusable. Fixes bug 41358; bugfix on 0.2.6.1-alpha
      or earlier. Tracked as TROVE-2026-034.
    - Fix a use-after-free error that could occur if
      AutomapHostsOnResolve was set. Applications using
      AutomapHostsOnResolve with IPv4, or with small VirtualAddrNetwork
      values, are especially vulnerable. Fixes bug 41319; bugfix on
      0.2.1.29. Tracked as TROVE-2026-036.
    - Limit the size of consensus diffs, in bytes and in lines, to
      prevent a class of memory-based denial-of-service attacks. Fixes
      bug 41329; bugfix on 0.3.1.1-alpha. This is tracked
      as TROVE-2026-042.
    - Negotiate CGO cryptography with every hop that supports it.
      Previously, we failed to negotiate CGO with hops other than the
      final hop of a circuit, since we did not enable congestion-control
      with those hops. Now, we negotiate congestion-control _and_ CGO
      whenever we can. Fixes bug 41348; bugfix on 0.4.9.3-alpha. Tracked
      as TROVE-2026-033.
    - Reject the CC_RESPONSE extension in any handshakes for which
      congestion control was _not_ requested. Previously, clients would
      interpret this extension, which could put congestion control into
      an invalid state, leading to a possible remote crash attack. Fixes
      bug 41345; bugfix on 0.4.9.3-alpha. Tracked as TROVE-2026-032.
    - Validate DNS names for complience whenever providing or receiving
      them from evdns, to limit exposure to a class of application and
      library bugs. Fixes bug 41320; bugfix on 0.1.1.23.
      Resolves TROVE-2026-035.

  o Major bugfixes (conflux, client, stream isolation):
    - Keep the stream isolation state in sync of a linked conflux set on
      every leg when attaching new streams. This is TROVE-2026-040.
      Fixes bug 41325; bugfix on 0.4.8.1-alpha.

  o Minor feature (authority):
    - Reject 0.4.8.x series at the authority level. Closes ticket 41234.

  o Minor features (directory authority):
    - Authorities now recommend additional protocols for clients and
      relays. Part of ticket 41316.
    - Provide a new `AuthDirSupport048Clients` option, which is disabled
      by default. When this option is disabled, authorities will accept
      router descriptors that do not contain TAP keys, and will be
      willing to generate microdescriptors without TAP keys in response
      to such descriptors. This introduces a new consensus method (36).
      Part of ticket 41316.

  o Minor features (fallbackdir):
    - Regenerate fallback directories generated on September 08, 2026.

  o Minor features (geoip data):
    - Update the geoip files to match the IPFire Location Database, as
      retrieved on 2026/09/08.

  o Minor features (portability):
    - Fix seccomp compilation with recent versions of glibc. (Closes
      ticket 41317.)

  o Minor bugfixes (controller):
    - Fix an assert that can happen if a controller requests an HSFETCH
      naming a relay that has a local descriptor but isn't in the
      consensus. Fixes bug 41367; bugfix on 0.2.7.1-alpha.

  o Minor bugfixes (directory authorities):
    - If two shared-random-value commitments are equal, directory
      authorities now tie-break by authority identity during the reveal
      phase. Equal commits could happen if an evil authority republishes
      another's public commitment (and later its public reveal) as its
      own. Previously the two tied entries could cause honest
      authorities to disagree about the resulting SRV. Fixes bug 41356;
      bugfix on 0.2.9.1-alpha.

  o Removed features:
    - Tor clients no longer accept consensus instructions to downgrade
      the congestion control algorithm. This is defense-in-depth for
      issues like 41345. Implements ticket 41361.
"""

-------------------- Start of forwarded message --------------------
Date: Tue, 08 Sep 2026 20:14:49 +0000
From: David Goulet <noreply@...um.torproject.org>
To: sam@...ct.info
Subject: Tor Project Forum: Security Release 0.4.9.12




# Where to Download

* [Tarballs](https://dist.torproject.org/)
* [Gitlab Repository](https://gitlab.torproject.org/tpo/core/tor)
* [Bug Report](https://gitlab.torproject.org/tpo/core/tor/-/issues/new)

# Changes

Below are the major changes of the released versions and links to more detailed release notes.

## Stable

Today, we released stable version **0.4.9.12** to address a series of high-severity security issues and some minor new features.

We expect to make the related tickets public roughly one week from today. Until then, the only publicly available details about these security issues can be found in the `ReleaseNotes` file (see below).

We **strongly** recommend updating as soon as possible. Debian packages are already available [here](https://deb.torproject.org), and packages for other distributions should follow shortly after this announcement.

Final note: We are actively working on additional important security issues, so starting today, we are moving C-tor releases to a **two-week** cadence. This means that the next release, 0.4.9.13, is expected around September 22.

Nothing is set in stone, however, as the recent flurry of security issues may require us to adapt quickly.

#### Release Notes

* [0.4.9.x](https://gitlab.torproject.org/tpo/core/tor/-/raw/release-0.4.9/ReleaseNotes)





---
[Visit
Topic](https://forum.torproject.org/t/security-release-0-4-9-12/22096/1)
or reply to this email to respond.

[stripped HTML content]
-------------------- End of forwarded message --------------------


Download attachment "signature.asc" of type "application/pgp-signature" (419 bytes)
