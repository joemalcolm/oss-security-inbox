X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/13/11
Message-ID: <CAPC5pGTROE2ouaN1uV9Q+6a+sUym-yijZYtvL8=TP6c+SUqL1g@mail.gmail.com>
Date: Tue, 13 Oct 2026 18:01:36 +0200
From: Thomas GERBET <thomas@...bet.me>
To: oss-security@...ts.openwall.com
Subject: Nix and Lix: multiple vulnerabilities leading to local root privilege escalation - October 2026
Content-Type: text/plain; charset=utf-8

Hello,

The Nix and Lix projects are jointly disclosing a set of
vulnerabilities that can be combined to escalate privileges to root on
systems running the Nix or Lix daemon. Fixed releases of both projects
are available today. This is a coordinated disclosure between the Nix
and Lix projects. CVE IDs have not yet been requested.


Issues affecting both Nix and Lix
=========================

CVE-2026-XXXXX [list overflow]
  Unsigned integer overflow when allocating Nix lists. It leads to a
  heap out-of-bounds write while evaluating untrusted Nix expressions.

CVE-2026-XXXXX [repair]
  Unprivileged `repair` operations could delete and replace a
  legitimate store path before its contents were verified. This leads
  to local privilege escalation.

CVE-2026-XXXXX [seatbelt]
  macOS Seatbelt sandbox escape. When the generated sandbox profile
  crossed an internal size threshold at a missing optional path, an
  unqualified `(allow ...)` form could be emitted. The build then ran
  unconfined.


Issues affecting Nix only (Lix is not affected)
==================================

CVE-2026-XXXXX [installer], GHSA-hf6w-2rg9-v84g
  Bug in the multi-user installer. The script left the contents of the
  store (not the store directory itself) owned by the invoking user
  rather than root.

CVE-2026-XXXXX [daemon authz], GHSA-92x5-h528-wrmw
  Improper authorisation of Nix daemon clients. Unsandboxed
  configurations on macOS and FreeBSD did not reject connections from
  build users. This makes the `repair` issue above more severe.


Am I affected?
===========

All systems that build untrusted derivations are affected.

- List overflow: affects any evaluation of untrusted Nix code,
  including `nix eval`, builds, and anything else that evaluates
  expressions from untrusted sources. In Nix, the impact depends on the
  optimisations performed by the compiler used to build Nix.

- Repair privilege escalation: affects multi-user daemon installations
  where unprivileged users can connect to the daemon, on both Linux and
  macOS.

- Seatbelt escape: macOS only, and only when `sandbox = true` or
  `sandbox = relaxed` is configured. `sandbox` defaults to `false` on
  macOS. The escape can be triggered deliberately, and in some
  configurations by accident.


Affected and fixed versions
=====================

Nix
  Affected: <= 2.35.2, <= 2.34.8, <= 2.31.5, <= 2.30.5, <= 2.28.7
  Fixed:    2.35.3, 2.34.9, 2.31.6, 2.30.6, 2.28.8
  Older versions are impacted to varying degrees and should be assumed
vulnerable.
  2.29.x, 2.32.x and 2.33.x lineages are no longer maintained and will
  not receive these fixes.

Lix
  Affected: <= 2.95.3, <= 2.94.2
  Fixed:    2.95.4, 2.94.3
  The 2.93 branch and older are also affected. They are no longer
  maintained and will not receive fixes.

References
=========

[1] Lix blogpost announcement: https://lix.systems/blog/2026-10-13-lix-cves/
[2] Shared announcement on NixOS Discourse forum:
https://discourse.nixos.org/t/security-advisory-for-nix-and-lix-october-2026/80547
[3] Nix list overflow GHSA:
https://github.com/NixOS/nix/security/advisories/GHSA-25vp-6h23-hj3g
[4] Nix repair GHSA:
https://github.com/NixOS/nix/security/advisories/GHSA-jwvx-xq5j-gc56
[5] Nix seatbelt GHSA:
https://github.com/NixOS/nix/security/advisories/GHSA-m4vq-qf6v-82pj
[6] Nix installer GHSA:
https://github.com/NixOS/nix/security/advisories/GHSA-hf6w-2rg9-v84g
[7] Nix daemon auth GHSA:
https://github.com/NixOS/nix/security/advisories/GHSA-92x5-h528-wrmw
