X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/16/14
Message-ID: <aqq9PbKgAITNSYEl@v4bel>
Date: Thu, 17 Sep 2026 01:01:01 +0900
From: Hyunwoo Kim <imv4bel@...il.com>
To: oss-security@...ts.openwall.com
Cc: imv4bel@...il.com
Subject: CVE-2026-89775: Guest-to-Host Escape in KVM/arm64
Content-Type: text/plain; charset=utf-8

Hi,

The embargo agreed with the maintainers of
linux-distros@...openwall.org has expired, so I am posting this report.

CVE-2026-89775 is a guest-to-host escape in KVM/arm64 on hosts where
nested virtualization is enabled.

The root cause is a type truncation of the stage-1 walk level, which
makes the size computation return 0, the value that means "size
unknown". The VNCR pseudo-TLB invalidation path interprets that 0 as a
valid size, so the invalidation range becomes an empty interval and the
invalidation is always skipped.

As a result, a freed host page stays mapped writable at a fixed address
in the host kernel, and the attacking guest obtains 64-bit reads and
writes to that page without any trap or VM exit.

An attacker can escape to the host after creating an instance that
provides nested virtualization on a multi-tenant arm64 public cloud. On
distributions such as RHEL, /dev/kvm is world-writable (0666), so if
nested virtualization is enabled on the host, an unprivileged user can
use this vulnerability as a reliable LPE to gain root.

This vulnerability was reported and is now patched in mainline. It
covers the range from 7270cc9157f47 (2025-05-14) to 8053393680d4
(2026-08-06):
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=8053393680d4


Best regards,
Hyunwoo Kim
