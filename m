X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/24/2
Message-ID: <20260723215628.732241-1-sultan@kerneltoast.com>
Date: Thu, 23 Jul 2026 14:56:26 -0700
From: Sultan Alsawaf <sultan@...neltoast.com>
To: oss-security@...ts.openwall.com
Subject: Re: 432 Linux kernel CVEs
Content-Type: text/plain; charset=utf-8

On Tue, 21 Jul 2026 at 14:54:46 -0400, Jan Schaumann <jschauma@...meister.org> wrote:
> I understand the position that CVEs were always a flawed way to track
> or prioritize security changes, and "but it's the only thing we have"
> isn't a great argument in favor. But this onslaught really shows it's
> not feasible to attempt to prioritize individual kernel changes.
>
> You might attempt to process this large set of changes by pointing an
> LLM at the intake and asking it to prioritize them for your
> environment based on the additional context you may be able to feed it
> with, but if it spits out a dozen today and another 25 the next, you
> haven't won much.

Hi Jan,

I'm a member of the kernel team at CIQ, a distro vendor. We are definitely
feeling the same pain here with piles of kernel CVEs yet without real-world
impact adequately conveyed for any of them. CVSS scores have a very low
signal-to-noise ratio for identifying which CVEs *actually matter* versus ones
that are theoretical or affect almost no one in reality.

A good example: CVE-2026-31431 is scored as 7.8 and turned out to be Copy Fail.

I decided to take the LLM route to triaging all 481 kernel CVEs published since
2026-07-01 and generated a detailed report that follows below. While it *is*
LLM-generated, I've taken care to polish the report itself for public
consumption without drowning the reader in pure slop.

The long story short: none of the 481 CVEs appear to be a true industry-wide
emergency, with the caveat that some less-common setups are indeed at risk.

The details are in the report below. I hope you and others on the list find it
helpful.

Sultan

---

Linux kernel CVEs published since 2026-07-01: a severity and exposure triage
============================================================================

Bottom line
===========

All 481 Linux kernel CVEs published on or after 2026-07-01 were triaged by
assessed severity and real-world exposure. Generally speaking, none warrants an
emergency, out-of-cycle patch. A few are urgent, but only for a specific
deployment. Check whether any of these describes your systems:

- You run untrusted guests under AMD SEV-SNP: CVE-2026-53360, a guest-to-host
  escape to root.

- A local process on an AMD SEV host can drive the debug ioctl of a
  debug-enabled guest: CVE-2026-63794, a local escalation to root (a guest
  cannot reach it).

- You use an Intel 82599 SR-IOV virtual function in VEPA switching mode:
  CVE-2026-64113, unauthenticated RCE from the local network segment.

- You mount a network-filesystem share from a server you do not control, or one
  an in-path attacker can alter: CVE-2026-64061, RCE.

- You run the in-kernel SMB server (ksmbd), serve storage as an iSCSI target
  (the storage-server side, not an iSCSI client), mount a 9p share, or use
  IP-TFS IPsec: see the narrow-exposure table below.

If a line describes your systems, treat that fix as urgent, higher if that
service is reachable from an untrusted network. If none do, patch on the normal
cycle. Everything else in the batch is lower severity, not security-relevant, or
reachable only in the configurations noted below.

The rest of the report is ranked by assessed impact and real-world exposure, not
by bug class. The most serious findings and the narrow-exposure table each give
the upstream version that introduced the bug, so you can check your own trees.

The narrow-exposure table holds issues that are high-impact once a specific
service or build option is enabled, and that affect a meaningful span of shipped
kernels.

The disposition table at the end holds everything else, for one of two reasons.
Either the primitive is reachable in a default configuration but is not assessed
to reach full root compromise, or its affected-version window is too narrow to
matter. The strongest examples of the first kind are the bridge and vsock
use-after-frees, CVE-2026-64032 and CVE-2026-63970. Both are real,
default-reachable primitives, not harmless bugs; they are in the disposition
table rather than among the most serious findings only because neither was
assessed to reach a full root compromise. Neither is a universal emergency. The
vsock underflow in particular reaches only recent kernels, and only after a
large refcount grind.

How this was produced
=====================

This triage was done by a pipeline of LLMs (Anthropic's Claude), not by hand. I
am sharing the method and its cost as a data point on whether LLMs can help
absorb the volume of Linux kernel CVEs now being published.

Each CVE passed through escalating levels of analysis and dropped out at the
cheapest one that could dismiss it. A dismissal is a one-line entry in the
disposition table at the end; only the survivors advanced to the more expensive
analysis.

- Level 1: Claude Sonnet 4.6 screened all 481 by metadata, with Claude Haiku 4.5
  for cheap double-checks, and set aside 214 as clearly not urgent.

- Level 2: Claude Sonnet read the fix diff and assigned an impact tier to the
  267 that remained, dropping 204.

- Level 3: Claude Opus 4.8 ran a deep, source-grounded exploitability analysis
  on the 63 that still looked serious, dropping 36.

- Level 4: Claude Opus put the 27 survivors through an adversarial pass built to
  refute each finding.

- Level 5: Claude Opus ranked what came through and wrote it up. The deepest
  survivors are the detailed and narrow-exposure findings below; everything
  dismissed earlier is in the disposition table with its reason.

Claude Opus 4.8 orchestrated the pipeline, which across two sessions spawned
about a hundred short-lived sub-agents.

A single model pass is not reliable on its own; the value is in the layering and
the adversarial re-checking, which caught real errors from earlier passes. Two
issues were first rated local LPE primitives, then refuted from source and moved
to the disposition table (the IP-TFS shared-fragment entry CVE-2026-53363 and
the rxrpc entry CVE-2026-64026); a third, the vsock entry CVE-2026-63970, had
its severity rationale corrected once the exploitation path was fully traced. A
one-shot classifier would have shipped those mistakes. The honest reading is not
"LLMs triage CVEs cheaply and correctly," but that they can with layering and
adversarial verification on top.

Cost
====

Triaging all 481 cost about $192, over roughly 150 million tokens of model
context (almost all of it served from cache) and about 3.5 million tokens of
output, across the two sessions and their sub-agents. Opus was most of that
cost; the screening models were a small fraction. That figure is the triage
alone, measured before this writeup began. It excludes the later work: reworking
the first pass into this public post, checking whether chaining several issues
reaches something none of them reaches alone, and a deeper adversarial
re-analysis of the page-cache-corruption issues.

Most serious findings
=====================

These are the highest-impact issues that are reachable without an unusual build
option (RCE, a guest escaping to root on the host, or a local escalation to
root). Each is detailed with how it is reached, what an attacker needs, the
upstream version that introduced it, and the upstream fix.

1. CVE-2026-64113: ixgbevf network driver (RCE from the local network)
----------------------------------------------------------------------

ixgbevf drives the virtual function of Intel 82599 network cards (the card slice
handed to a VM or exposed on the host). In VEPA mode (a switch mode where a port
drops frames that would loop back to their own sender), the receive path frees
the skb of a rejected frame and continues to the next descriptor without
clearing the pointer, so processing that descriptor reuses the freed skb (it
reads skb_shinfo(skb)->nr_frags): a use-after-free in softirq context. An
attacker on the same segment sends a frame forged with the receiver's own source
address to trigger the prune-and-free, then a following frame drives the reuse:
a remote, unauthenticated use-after-free that is an RCE primitive.

Requires: a foothold on the target's local network segment (same Ethernet
broadcast domain), and the target using an Intel 82599 SR-IOV virtual function.
No credentials. Not a universal emergency: the 82599 is a roughly 2009-era
controller, its SR-IOV virtual functions are a specific configuration, and VEPA
is the non-default switching mode; the intersection, plus L2 adjacency, is
uncommon. Introduced in upstream v3.19.

2. CVE-2026-63794: KVM / AMD SEV (local escalation to root)
-----------------------------------------------------------

AMD SEV encrypts a guest VM's memory under KVM. The host side exposes a debug
ioctl (KVM_SEV_DBG_ENCRYPT on /dev/kvm) that the process managing a guest uses
to encrypt or decrypt guest memory. Its encrypt path bounds the copy only by the
space left in the source page and never checks the destination offset, so the
copy runs up to about 16 bytes past the end of a 4 KB page into the next host
kernel page: a controlled out-of-bounds write into the adjacent kernel page, a
primitive that can be leveraged to root. The ioctl is issued by host userspace,
not by the guest, so this is a local escalation to root, not a guest escape.

Requires: a local process that can drive the SEV debug ioctl, that is, manage a
debug-enabled SEV guest, on SEV-capable AMD hardware. No capability check stands
in the way once /dev/kvm is reachable. Not a universal emergency: /dev/kvm is
not exposed to untrusted local users by default, the hardware must be
SEV-capable, and the target guest must have debugging enabled. Introduced in
upstream v4.16.

3. CVE-2026-53360: KVM / AMD SEV-SNP (guest-to-host escape to root)
-------------------------------------------------------------------

SEV-SNP is the newer, hardened AMD VM memory encryption. When an SNP guest asks
the host to change the state of its memory pages, it hands the host a scratch
buffer. The host checks only the maximum entry count, not the real size of that
buffer, and trusts the guest-supplied buffer without confirming it lies inside
the shared guest-host memory region. A malicious guest can make the host read
past the too-small buffer and write into the host kernel heap: an out-of-bounds
read and write. That is a guest-to-host escape primitive whose ceiling is code
execution in the host kernel, i.e. root on the host.

Requires: control of an SNP guest on SNP-capable AMD (EPYC) hardware. Not a
universal emergency for general hosts, but urgent for anyone running untrusted
SEV-SNP guests, the exact boundary SNP is built to enforce. Introduced in
upstream v6.10.

4. CVE-2026-64061: netfs (RCE from a malicious server)
------------------------------------------------------

netfs is the shared helper library the kernel's network filesystems (SMB, 9p,
ceph, afs) use to read files. In one read path it releases the sink page (the
scratch page for a gap in the read) before the read that fills it has finished,
and nothing else holds that page, so it is freed while the read is still in
flight. The data the server sends is then written into the freed page over a
wide window: a use-after-free write. Because those bytes come from the file
server, a malicious server (or an attacker between client and server) controls
them, so this is an RCE primitive.

Requires: the victim to read from a network-filesystem share the attacker
controls or can alter in transit. Not a universal emergency: it needs the client
to mount an attacker-controlled or man-in-the-middle share, and the affected
read path is recent. Introduced in upstream v6.12.

Significant, but narrow real-world exposure
===========================================

These are high-impact issues (RCE, escalation to root, or a LPE primitive) that
reach only systems where a specific build option or service is explicitly
enabled, and that are present across a meaningful span of shipped kernels. A row
is here because of that gating, not because a root compromise was established:
several are assessed primitives rather than end-to-end compromises, and their
cells say so. They are not a general-fleet emergency, but where the gating
condition holds they are serious and worth a prompt fix. The "Introduced" column
is the upstream kernel version the bug entered.

CVE-2026-63887 (scsi / LIO iSCSI target)
  Vulnerability: Pre-auth heap overflow via unbounded login text-response
    encoding; a pre-auth RCE primitive
  Exposure: Only on a host serving storage as an iSCSI target, not an iSCSI
    client. LIO is the default in-kernel target on common Linux server distros,
    so the code is not exotic, but the flaw is pre-auth (credentials never
    mitigate) and needs network reach to the target portal, which is normally on
    an isolated storage network.
  Introduced: v3.1

CVE-2026-63886 (scsi / LIO iSCSI target)
  Vulnerability: CHAP base64 answer overflows a 16/32-byte digest buffer during
    login; a pre-auth RCE primitive
  Exposure: Only on a host serving storage as an iSCSI target, not an iSCSI
    client; fires pre-auth during login, so credentials never mitigate, but the
    LIO target portal is normally on an isolated storage network.
  Introduced: v6.0

CVE-2026-63795 (9p (Plan 9) filesystem client)
  Vulnerability: On a walk failure p9_client_walk() drops a fid reference the
    caller still owns (with clone disabled the fid is aliased), causing a
    refcount underflow and use-after-free; an LPE primitive.
  Exposure: Only where a 9p share is mounted (common in VM guests via virtio-9p,
    WSL, and some container setups); then reachable by any unprivileged local
    user, no malicious server needed.
  Introduced: v6.0

CVE-2026-63911 (xfrm IP-TFS (IPsec) mode)
  Vulnerability: A failed IP-TFS state migration destroys a shallow clone that
    still points at the original security association's live queues and timers,
    freeing its skbs twice; use-after-free and double-free, an LPE primitive.
  Exposure: Only where CONFIG_XFRM_IPTFS (added in v6.14) is enabled; triggering
    the migration needs CAP_NET_ADMIN, which an unprivileged user holds over an
    owned network namespace where unprivileged namespaces are permitted.
  Introduced: v6.14

CVE-2026-64142 (ksmbd in-kernel SMB server)
  Vulnerability: The durable-handle scavenger unlinks and frees an expired
    handle after dropping the global lock, while concurrent list walkers still
    hold it; list corruption and use-after-free reachable over SMB; an RCE
    primitive.
  Exposure: Only on hosts running the in-kernel SMB server (ksmbd) with a share
    exporting durable handles; needs an authenticated, low-privilege SMB
    session.
  Introduced: v6.11

Does combining these issues change the picture?
===============================================

Chaining two or more of these limited findings was also examined, to see whether
together they reach something none reaches alone, a full local escalation to
root or RCE. They do not.

The one pairing that fits the classic pattern, an information leak that defeats
KASLR followed by a write primitive that consumes that leak, combines an IPv6
extension-header out-of-bounds read that leaks kernel memory (CVE-2026-63920)
with the bridge use-after-free (CVE-2026-64032). Both are reachable by a single
unprivileged local user, so the pairing is not idle speculation. But it rests on
two findings this triage did not confirm as exploitable, it needs several
unproven steps to line up (grooming a pointer-bearing object next to the leaked
memory, winning a narrow teardown race, and reclaiming the freed object with a
controlled function pointer), and it depends on unprivileged user namespaces
being enabled. It is a plausible hypothesis, not an established escalation.

The tightest clustering, the iSCSI target issues, raises the reliability of an
exploit but not its severity: the pre-authentication RCE already present there
is the ceiling, and combining the issues does not widen the surface beyond a
host configured as an iSCSI target. The SEV and remote-execution findings
covered above are likewise already at their ceiling, so pairing them with a
second issue adds nothing.

In short, no combination in this batch lifts a narrow or partial issue over the
bar into a universal emergency.

Full CVE disposition (472)
==========================

Every remaining CVE from the batch, with a one-line reason it does not warrant
urgent patching.

CVE-2026-53326 (debugobjects):
  Affects only very recent mainline kernels, not current stable releases.

CVE-2026-53327 (debugobjects):
  Requires CONFIG_DEBUG_OBJECTS together with CONFIG_PREEMPT_RT; DEBUG_OBJECTS
  is a debugging option not enabled in production kernel builds.

CVE-2026-53328 (sched_ext):
  Spurious warning with no memory corruption; panics only under non-default
  panic_on_warn; already fixed upstream.

CVE-2026-53329 (drm/amd/display):
  Driver for AMD GPU display hardware; needs that device present and local
  access; already fixed upstream.

CVE-2026-53330 (drm/amd/display):
  One-byte out-of-bounds read in the AMD display driver DisplayPort
  link-training (LTTPR) path; requires that display hardware present and local
  access.

CVE-2026-53331 (slimbus):
  Driver for SLIMbus audio hardware; reachable only with that device present and
  local access.

CVE-2026-53332 (slimbus):
  Driver for SLIMbus audio bus hardware; reachable only with that device present
  and local access.

CVE-2026-53333 (mm/mincore):
  Affects only kernels built without swap support (CONFIG_SWAP); nearly all
  distributions enable it.

CVE-2026-53334 (mm/damon/reclaim):
  Null-pointer dereference in DAMON reclaim requires root writing a module
  parameter during out-of-memory; local denial of service only.

CVE-2026-53335 (mm/damon/lru_sort):
  Optional DAMON memory-tuning module; inactive without explicit configuration
  and not active by default.

CVE-2026-53336 (nvmem):
  Driver for NVMEM peripheral hardware; reachable only with that device present
  and local access.

CVE-2026-53337 (net):
  Bonding driver null dereference reachable via network ioctl; caps at local
  denial of service, no LPE.

CVE-2026-53338 (net):
  Architecture-specific to Airoha SoC hardware; absent on mainstream x86/arm64
  systems.

CVE-2026-53339 (i2c):
  Qualcomm camera-control-interface I2C driver; NULL-pointer dereference on
  driver removal, reachable only on Qualcomm SoCs with local access.

CVE-2026-53340 (i2c):
  NXP i.MX SoC I2C controller driver; a runtime-PM state inconsistency reachable
  only on i.MX hardware with local access.

CVE-2026-53341 (fhandle):
  Real use-after-free but assessed as capped at denial of service and a minor
  non-secret leak; no LPE.

CVE-2026-53342 (arm64):
  Memory hotplug frees page-table pages without the required destructor, causing
  counter mismatch and bad-page-state errors; denial of service only.

CVE-2026-53343 (ARM):
  Affects only 32-bit ARM (arch/arm) assembly code; not present in x86-64 or
  arm64 kernels.

CVE-2026-53344 (pinctrl):
  Driver for GPIO pinctrl hardware; the flaw affects only very recent mainline
  kernels, not current stable releases.

CVE-2026-53345 (KVM):
  False-positive warning during VM teardown; no memory corruption or
  attacker-useful primitive.

CVE-2026-53346 (rust):
  Boot crash only under a specific non-default build option; already fixed
  upstream.

CVE-2026-53347 (drm/virtio):
  virtio-GPU display driver; a driver-removal bug reachable only by privileged
  module unbind on systems with a virtio GPU.

CVE-2026-53348 (ASoC):
  Driver for ASoC sound codec hardware; the flaw affects only very recent
  mainline kernels, not current stable releases.

CVE-2026-53349 (netfilter):
  Dangling NAT expectation pointer requires CAP_SYS_MODULE to trigger; caps at a
  kernel crash, no privilege gain.

CVE-2026-53350 (ASoC):
  Driver for ASoC sound codec hardware; reachable only with that device present
  and local access.

CVE-2026-53351 (riscv/ptrace):
  Architecture-specific to RISC-V; also affects only very recent mainline
  kernels, not current stable releases.

CVE-2026-53352 (signal):
  Stale job-control flags after exec cause spurious process stops; no memory
  corruption or privilege gain.

CVE-2026-53353 (hsr):
  HSR protocol teardown warning panics only with non-default panic_on_warn=1; no
  memory corruption; narrow race window.

CVE-2026-53354 (arm64):
  ARM TLB ordering erratum on specific Cortex/Neoverse CPUs; stale-TLB risk
  limited to those CPU models; hardware-specific impact.

CVE-2026-53355 (net):
  Already fixed upstream; apply on the normal cycle.

CVE-2026-53356 (drm/i915/gem):
  Driver for Intel i915 GPU hardware; needs that device present and local
  access; already fixed upstream.

CVE-2026-53357 (Bluetooth):
  Driver for Bluetooth L2CAP hardware; reachable only with that device present
  and local access.

CVE-2026-53358 (Bluetooth):
  Driver for Bluetooth L2CAP wireless hardware; reachable only with that device
  present and local access.

CVE-2026-53359 (KVM):
  Real host use-after-free with escalation potential, but already fixed
  upstream.

CVE-2026-53361 (af_unix):
  Found not exploitable: GC serialization via file-static flag and gc_lock means
  the race caps at benign throttle inaccuracy, not UAF.

CVE-2026-53362 (ipv6):
  Already fixed upstream; also unreachable on older kernels due to a prior error
  guard.

CVE-2026-53363 (xfrm):
  The omitted flag is harmless: ESP never encrypts the shared IP-TFS frags in
  place, so read-only pages are not corrupted.

CVE-2026-53364 (Bluetooth):
  Driver for Bluetooth HCI hardware; reachable only with that device present and
  local access.

CVE-2026-53365 (vsock/virtio):
  Pinned-page leak causing a userspace hang; capped at denial of service with no
  LPE.

CVE-2026-53366 (ipv4):
  IPv4 fragmentation writes up to 7 bytes past the buffer, absorbed by tail
  padding; no heap overflow.

CVE-2026-53367 (selinux):
  SELinux audit log may miss entries due to stale cached access-decision bits;
  enforcement decisions are unaffected.

CVE-2026-53368 (f2fs):
  F2FS reads NAT entry flags without a lock during checkpoint; worst outcome is
  fsck inconsistency, no memory-safety issue.

CVE-2026-53369 (udf):
  Requires a privileged filesystem mount to trigger; already fixed upstream.

CVE-2026-53370 (perf/x86/intel):
  Wrong performance-counter results from PMU misconfiguration; no memory
  corruption.

CVE-2026-53371 (RDMA/ionic):
  out-of-bounds read only; discloses adjacent kernel memory, no write or control

CVE-2026-53372 (iommu/vt-d):
  IOMMU PASID dirty-tracking bypass loses dirty pages under concurrent nested
  domain use; requires CAP_SYS_ADMIN, no memory corruption.

CVE-2026-53373 (mm/vma):
  Bug affecting only very recent mainline kernels, not current stable releases.

CVE-2026-53374 (drm/amdgpu):
  Driver for AMD GPU hardware; needs that device present and local access;
  already fixed upstream.

CVE-2026-53375 (drm/amdgpu/vce):
  Driver for AMD GPU video-codec hardware; needs that device present and local
  access; already fixed upstream.

CVE-2026-53376 (drm/amdkfd):
  Driver for AMD GPU compute hardware; needs that device present and local
  access; already fixed upstream.

CVE-2026-53377 (drm/msm):
  Driver for Qualcomm Adreno GPU hardware; hang-recovery skip requires that
  device and local access.

CVE-2026-53378 (drm/colorop):
  DRM color-operations code affects only very recent mainline kernels, not
  current stable releases.

CVE-2026-53379 (media):
  Driver for camera media hardware; reachable only with that device present and
  local access.

CVE-2026-53380 (media):
  Driver for video media hardware; the flaw affects only very recent mainline
  kernels, not current stable releases.

CVE-2026-53381 (virtiofs):
  VirtioFS use-after-free during submount teardown causes a kernel crash; caps
  at denial of service, not LPE.

CVE-2026-53382 (media):
  Media subsystem test driver; reachable only with that module loaded and local
  access.

CVE-2026-53383 (ksmbd):
  NULL-pointer dereference; denial of service (kernel Oops / worker wedge) only

CVE-2026-53384 (serial):
  Driver for serial/TTY hardware; reachable only with that device present and
  local access.

CVE-2026-53385 (vc_screen):
  Race in the /dev/vcs* virtual-console driver; a NULL-pointer dereference crash
  requiring concurrent local writes to those devices.

CVE-2026-53386 (iio):
  Texas Instruments ADS1298 biopotential-sensor driver; out-of-bounds index
  reachable only with that sensor present and local access.

CVE-2026-53387 (iio):
  VEML6075 UV-light-sensor driver; out-of-bounds index reachable only with that
  sensor present and local access.

CVE-2026-53388 (fuse):
  FUSE use-after-free during concurrent splice and connection abort;
  exploitation requires a FUSE mount and the specific concurrent operation.

CVE-2026-53389 (net/tcp-ao):
  use-after-free read of key material; information disclosure only, not a
  write/control primitive

CVE-2026-53390 (ksmbd):
  bounded out-of-bounds read; information disclosure only and requires an
  authenticated session

CVE-2026-53391 (NFSv4/pNFS):
  Malicious pNFS server can send a zero-length address to dereference a null
  pointer, panicking the NFS client; denial of service.

CVE-2026-53392 (NFSv4/flexfiles):
  Malicious pNFS flexfiles server sends zero filehandle count, causing a
  null-sized allocation dereference that panics the NFS client.

CVE-2026-53393 (nfsd):
  NFS protocol violation may cause client data loss; no memory-safety impact;
  already fixed upstream.

CVE-2026-53394 (nfsd):
  NFS server race slowly leaks one slab allocation per state-owner collision; no
  write primitive or privilege gain, only eventual out-of-memory.

CVE-2026-53395 (nfsd):
  NFSv4 ACL slab-exhaustion denial of service affecting only very recent
  mainline kernels, not current stable releases.

CVE-2026-53396 (nfsd):
  NFSv4 ACL leak on failed create, affecting only very recent mainline kernels,
  not current stable releases.

CVE-2026-53397 (nfsd):
  NFS ACL decode failure leaks a POSIX ACL allocation per crafted SETACL
  request; no write primitive, slow out-of-memory path only.

CVE-2026-53398 (NFSD):
  Real remote refcount-underflow UAF but no controlled-reclaim primitive; RCE
  was overstated, impact is denial-of-service.

CVE-2026-53399 (nfsd):
  pNFS layout stid freed without IDR removal; subsequent IDR walk dereferences
  freed memory, causing a kernel crash.

CVE-2026-53400 (i2c):
  Registration race in the I2C core; reachable only while a bus adapter is
  registering or unregistering, not by unprivileged users.

CVE-2026-53401 (fbdev):
  confined to legacy TI OMAP2 display hardware; the driver binds only on that
  SoC family (a genuine hardware gate)

CVE-2026-53402 (fbdev):
  Out-of-bounds read in the framebuffer console (fbcon) font-set error path;
  requires local console access to set a font.

CVE-2026-53403 (fbdev):
  NULL-pointer dereference in the framebuffer core when setting a video mode;
  requires local access to a framebuffer device.

CVE-2026-63793 (ntfs):
  Use-after-free race in the legacy NTFS driver; requires elevated privilege to
  trigger.

CVE-2026-63796 (ocfs2):
  Requires a privileged filesystem mount to trigger; already fixed upstream.

CVE-2026-63797 (rpmsg):
  Driver for remote-processor messaging hardware; reachable only with that
  device present and local access.

CVE-2026-63798 (irqchip/imgpdc):
  Imagination PDC interrupt-controller driver for Imagination SoCs; a resource
  leak on driver removal, present only on those platforms.

CVE-2026-63799 (sched/mmcid):
  Narrow race in MM CPU-ID accounting, affecting only very recent mainline
  kernels, not current stable releases.

CVE-2026-63800 (pNFS):
  Real use-after-free but requires root to arm the triggering tracepoint; no
  privilege boundary is crossed, making it unexploitable.

CVE-2026-63801 (tipc):
  use-after-free read only; information disclosure or crash, not a write/control
  primitive

CVE-2026-63802 (blk-cgroup):
  UAF reachable only via cgroup destroy or device teardown; neither path is
  drivable by unprivileged users.

CVE-2026-63803 (hdlc_ppp):
  Already fixed upstream; apply on the normal cycle.

CVE-2026-63804 (gfs2):
  Use-after-free requires a privileged filesystem mount; unreachable without
  privileges and already fixed upstream.

CVE-2026-63805 (crypto):
  PowerPC NX crypto accelerator crash due to wrong context pointer type;
  hardware absent on x86_64 and aarch64 systems.

CVE-2026-63806 (KVM):
  Crafted cross-page guest MMIO store triggers a host BUG_ON, panicking the host
  kernel; guest-to-host denial of service only.

CVE-2026-63807 (KVM):
  KVM MMU negative index into huge-page info causes host page fault from guest;
  guest-to-host denial of service only.

CVE-2026-63808 (exfat):
  Requires a privileged filesystem mount to trigger.

CVE-2026-63809 (bpf):
  Wrong allocator free in cgroup BPF sysctl hook; requires privileges and is
  already fixed upstream.

CVE-2026-63810 (block):
  Any user with namespace access can trigger a deterministic kernel panic via
  the block-device pseudo-filesystem; denial of service only.

CVE-2026-63811 (f2fs):
  NULL-pointer dereference; denial of service (panic) only

CVE-2026-63812 (f2fs):
  race resolves to a kernel panic; denial of service only

CVE-2026-63813 (f2fs):
  GC folio-cache ordering bug panics the kernel; affects only very recent
  mainline kernels, not current stable releases.

CVE-2026-63814 (f2fs):
  F2FS up-to-8-byte out-of-bounds read in ACL parsing on crafted images;
  requires CAP_SYS_ADMIN or user-namespace mount access.

CVE-2026-63815 (f2fs):
  F2FS inode sanity check misses upper bound on xattr size; crafted image can
  skew xattr address calculations, no direct exploit.

CVE-2026-63816 (f2fs):
  Use-after-free that lands on a BUG_ON panic; the GC side is not
  attacker-drivable, so it reduces to a hard-to-win crash.

CVE-2026-63817 (f2fs):
  F2FS meta inode check mis-classifies max node ID, allowing crafted directory
  to instantiate an uninitialized inode; no exploit path found.

CVE-2026-63818 (f2fs):
  F2FS out-of-bounds read of orphan inode array on crafted filesystem image
  triggers a kernel panic at mount.

CVE-2026-63819 (f2fs):
  F2FS corrupted dnode bypasses node type check, triggering a kernel panic;
  exploitable only via a crafted filesystem image.

CVE-2026-63820 (f2fs):
  causes a hang/deadlock; denial of service only

CVE-2026-63821 (wifi):
  Driver for Wi-Fi wireless hardware; reachable only with that device present
  and local access.

CVE-2026-63822 (wifi):
  Driver for Qualcomm ath11k Wi-Fi hardware; needs that device present and local
  access; already fixed upstream.

CVE-2026-63823 (keys):
  Use-after-free via request_key() racing with auth-key teardown on page fault;
  race-window UAF with no established LPE.

CVE-2026-63824 (KEYS):
  Controlled OOB only with AMD CCP hardware RSA accelerator, which lacks the
  software backend's range checks; not deterministic.

CVE-2026-63825 (gcov):
  Out-of-bounds write requires the kernel coverage build option, which
  production kernels leave disabled.

CVE-2026-63826 (fbdev):
  Use-after-free in the framebuffer sysfs store_modes path; requires privileged
  (root) writes to a framebuffer sysfs attribute.

CVE-2026-63827 (apparmor):
  Use-after-free in the AppArmor policy-load (rawdata dedup) path; reachable
  only by a process privileged to load policy (CAP_MAC_ADMIN).

CVE-2026-63828 (apparmor):
  AppArmor failed to mediate the implicit connect in TCP Fast Open sendmsg; a
  network-policy-mediation bypass for confined processes.

CVE-2026-63829 (net):
  Traffic-redirect auth bypass with no memory corruption primitive; requires
  CAP_NET_ADMIN, not exploitable for LPE.

CVE-2026-63830 (net):
  Page-cache corruption via BPF sk_msg but requires global
  CAP_BPF+CAP_NET_ADMIN; user-namespace root is insufficient.

CVE-2026-63831 (mac802154):
  IEEE 802.15.4 (mac802154) link-layer-security path; requires 802.15.4 radio
  hardware and local access.

CVE-2026-63832 (wifi):
  MediaTek mt76 Wi-Fi driver family; a station-table corruption on station add;
  requires that wireless hardware and local access.

CVE-2026-63833 (ntfs3):
  Requires a privileged filesystem mount to trigger; already fixed upstream.

CVE-2026-63834 (batman-adv):
  Optional mesh-networking module; not loaded or reachable by default.

CVE-2026-63835 (batman-adv):
  Optional mesh-networking module (CONFIG_BATMAN_ADV); not autoloaded or
  reachable without explicit mesh configuration.

CVE-2026-63836 (batman-adv):
  Optional mesh-networking module; not loaded or reachable by default.

CVE-2026-63837 (net):
  Uninitialized stack bytes exposed via PTP ioctl on Amazon ENA hardware;
  requires the PTP Hardware Clock feature and ENA NIC.

CVE-2026-63838 (ASoC):
  Driver for Renesas ASoC sound hardware; reachable only with that device
  present and local access.

CVE-2026-63839 (platform/x86):
  Memory leak (no corruption) in a Lenovo-specific WMI BIOS driver; needs that
  hardware and local access.

CVE-2026-63840 (drm/amdgpu/jpeg):
  Driver for AMD GPU hardware; affects only very recent mainline kernels, not
  current stable releases.

CVE-2026-63841 (drm/amdgpu/jpeg):
  Driver for AMD GPU hardware; needs that device present and local access;
  already fixed upstream.

CVE-2026-63842 (drm/amdgpu/jpeg):
  Driver for AMD GPU JPEG-codec hardware; needs that device present and local
  access; already fixed upstream.

CVE-2026-63843 (drm/amdgpu/jpeg):
  Driver for AMD GPU JPEG-codec hardware; needs that device present and local
  access; already fixed upstream.

CVE-2026-63844 (drm/amdgpu/jpeg):
  Driver for AMD GPU JPEG-codec hardware; needs that device present and local
  access; already fixed upstream.

CVE-2026-63845 (drm/amdgpu/jpeg):
  Driver for AMD GPU JPEG-codec hardware; needs that device present and local
  access; already fixed upstream.

CVE-2026-63846 (drm/amdgpu/jpeg):
  Driver for AMD GPU JPEG-codec hardware; needs that device present and local
  access; already fixed upstream.

CVE-2026-63847 (drm/amdgpu/jpeg):
  Driver for AMD GPU JPEG-codec hardware; needs that device present and local
  access; already fixed upstream.

CVE-2026-63848 (drm/amdgpu/jpeg):
  Driver for AMD GPU JPEG-codec hardware; needs that device present and local
  access; already fixed upstream.

CVE-2026-63849 (drm/amdgpu/vcn):
  AMD GPU VCN video-codec driver; requires that GPU hardware and local access;
  already fixed upstream.

CVE-2026-63850 (drm/amdgpu/vcn):
  Driver for AMD GPU VCN-codec hardware; needs that device present and local
  access; already fixed upstream.

CVE-2026-63851 (drm/amdgpu/vcn):
  Driver for AMD GPU VCN-codec hardware; needs that device present and local
  access; already fixed upstream.

CVE-2026-63852 (drm/amdgpu/vcn):
  Driver for AMD GPU VCN-codec hardware; needs that device present and local
  access; already fixed upstream.

CVE-2026-63853 (drm/amdgpu/vcn):
  Missing GPU fence flag causes VCN encoder hang on AMD hardware; user's own
  VRAM address used, no kernel memory exposure.

CVE-2026-63854 (drm/amdgpu/vcn):
  Driver for AMD GPU VCN-codec hardware; needs that device present and local
  access; already fixed upstream.

CVE-2026-63855 (drm/amdgpu/vcn):
  Driver for AMD GPU VCN-codec hardware; needs that device present and local
  access; already fixed upstream.

CVE-2026-63856 (drm/amdgpu/vcn):
  Driver for AMD GPU VCN-codec hardware; needs that device present and local
  access; already fixed upstream.

CVE-2026-63857 (net):
  Uninitialized fragment read in the Airoha EN7581 SoC network driver; requires
  that specific SoC hardware.

CVE-2026-63858 (netfilter):
  UAF refuted: nft_hook frees use kfree_rcu; dump re-walks per chunk, so worst
  case is a wild-read crash, not UAF.

CVE-2026-63859 (net):
  DMA teardown robustness fix for the Airoha EN7581 SoC network driver; requires
  that specific SoC hardware.

CVE-2026-63860 (RDMA/core):
  Non-null-terminated netlink attribute read in RDMA IWPM; only the privileged
  IWPM daemon with CAP_NET_ADMIN can send these messages.

CVE-2026-63861 (spi):
  Driver for SPI bus hardware; reachable only with that device present and local
  access.

CVE-2026-63862 (PCI):
  Controller driver specific to MediaTek mobile SoC hardware; already fixed
  upstream.

CVE-2026-63863 (drm/gpusvm):
  GPU shared-virtual-memory code affects only very recent mainline kernels, not
  current stable releases.

CVE-2026-63864 (bpf):
  BPF verifier tailcall liveness bug affecting only very recent mainline
  kernels, not current stable releases.

CVE-2026-63865 (bpf):
  Sleepable BPF LSM hook in atomic context crashes the kernel; requires CAP_BPF
  and already fixed upstream.

CVE-2026-63866 (wifi):
  mt76 Wi-Fi driver; requires the specific wireless hardware; already fixed
  upstream.

CVE-2026-63867 (mptcp):
  MPTCP DSS ack and receive window read inconsistently in one cycle; protocol
  confusion with peer only, no memory corruption.

CVE-2026-63868 (net):
  GARP dlen underflow only feeds an equality comparison, not a memory access;
  events silently dropped, no memory corruption.

CVE-2026-63869 (wifi):
  Wi-Fi stack code; reachable only with wireless hardware present and local
  access; already fixed upstream.

CVE-2026-63870 (ieee802154):
  IEEE 802.15.4 6LoWPAN transmit path; requires 802.15.4 radio hardware and a
  configured 6LoWPAN interface.

CVE-2026-63871 (Bluetooth):
  Driver for Bluetooth ISO hardware; reachable only with that device present and
  local access.

CVE-2026-63872 (esp):
  IPsec SG page-frag refcount leak on double skb_to_sgvec failure causes gradual
  memory exhaustion; requires CAP_NET_ADMIN to set up an SA.

CVE-2026-63873 (accel/amdxdna):
  AMD XDNA AI-accelerator driver; requires that accelerator hardware and local
  access; already fixed upstream.

CVE-2026-63874 (net):
  Management-transport driver over USB; reachable only with that hardware
  present and local access.

CVE-2026-63875 (arm64):
  ARM64 TLB flush skips unshared hugepage tables, risking stale page-table
  walks; already fixed upstream.

CVE-2026-63876 (serial):
  Architecture-specific MIPS serial/TTY driver; absent on mainstream x86/arm64
  systems.

CVE-2026-63877 (serial):
  Architecture-specific MIPS serial/TTY driver; absent on mainstream x86/arm64
  systems.

CVE-2026-63878 (drm/amdgpu):
  amdgpu GPU driver; requires an AMD GPU and local access; already fixed
  upstream.

CVE-2026-63879 (drm/amdgpu):
  Stale GPU physical mapping from MMU invalidation race in large HMM ranges;
  narrow race window requiring ROCm GPU compute workloads.

CVE-2026-63880 (drm/amdgpu):
  amdgpu GPU driver; requires an AMD GPU and local access; already fixed
  upstream.

CVE-2026-63881 (drm/amdkfd):
  AMD GPU compute driver; reachable only with that hardware present and local
  access; already fixed upstream.

CVE-2026-63882 (drm/amdkfd):
  AMD GPU compute driver; reachable only with that hardware present and local
  access; already fixed upstream.

CVE-2026-63883 (serial):
  Qualcomm serial-port driver; reachable only with that hardware present and
  local access.

CVE-2026-63884 (drm/i915):
  Intel i915 GPU driver; reachable only with that hardware present and local
  access; already fixed upstream.

CVE-2026-63885 (drm/gem):
  DRM GEM GPU buffer-management code; requires a GPU and local access; already
  fixed upstream.

CVE-2026-63888 (scsi):
  Real double-free, but freelist hardening reduces it to a crash; RCE needs
  non-default reclaim, so denial of service.

CVE-2026-63889 (scsi):
  u8 loop counter wraps on 256 FC FPIN port names, causing an infinite loop;
  requires a compromised Fibre Channel switch.

CVE-2026-63890 (scsi):
  Zero-length FIP descriptor causes infinite loop in FCoE VLAN handling;
  requires a malicious FCoE-VLAN peer and the libfcoe module.

CVE-2026-63891 (thunderbolt):
  Thunderbolt driver; reachable only with that hardware present and local
  access.

CVE-2026-63892 (thunderbolt):
  Thunderbolt driver; reachable only with that hardware present and local
  access.

CVE-2026-63893 (thunderbolt):
  Thunderbolt driver; reachable only with that hardware present and local
  access.

CVE-2026-63894 (usb):
  USB gadget driver; reachable only with that hardware present and local access.

CVE-2026-63895 (usb):
  USB gadget driver; reachable only with that hardware present and local access.

CVE-2026-63896 (usb):
  USB gadget driver; reachable only with that hardware present and local access.

CVE-2026-63897 (USB):
  mct_u232 USB-serial driver; reachable only with that hardware present and
  local access.

CVE-2026-63898 (USB):
  mct_u232 USB-serial driver; reachable only with that hardware present and
  local access.

CVE-2026-63899 (USB):
  mxuport USB-serial driver; reachable only with that hardware present and local
  access.

CVE-2026-63900 (USB):
  Keyspan USB-serial driver; reachable only with that hardware present and local
  access.

CVE-2026-63901 (USB):
  Digi AccelePort USB-serial driver; reachable only with that hardware present
  and local access.

CVE-2026-63902 (USB):
  Cypress M8 USB-serial driver; reachable only with that hardware present and
  local access.

CVE-2026-63903 (USB):
  Belkin SA USB-serial driver; reachable only with that hardware present and
  local access.

CVE-2026-63904 (usb):
  USB device driver; reachable only with that hardware present and local access.

CVE-2026-63905 (usbip):
  USB-over-IP driver; reachable only with that feature configured and local
  access.

CVE-2026-63906 (usb):
  MUSB USB controller driver; reachable only with that hardware present and
  local access.

CVE-2026-63907 (uio):
  Userspace I/O change affects only very recent mainline kernels, not current
  stable releases.

CVE-2026-63908 (Input):
  Touchscreen input driver; reachable only with that hardware present and local
  access.

CVE-2026-63909 (ksmbd):
  Transposed bounds check enables a two-byte out-of-bounds ACE size read in
  ksmbd; minimal info-leak from fixed heap layout.

CVE-2026-63910 (dma-buf):
  DMA-buf feature affects only very recent mainline kernels, not current stable
  releases.

CVE-2026-63912 (xfrm):
  Cross-page heap out-of-bounds with uncontrolled AEAD ciphertext, but
  exploitation needs an order-3 allocation failure and precise geometry; already
  fixed upstream.

CVE-2026-63913 (netfilter):
  RST handling prematurely tears down conntrack NAT sessions; no memory
  corruption and already fixed upstream.

CVE-2026-63914 (xfrm):
  VPN migration netlink multicast targets the wrong namespace, leaking selector
  and endpoint data to host-namespace listeners; information disclosure only.

CVE-2026-63915 (nfc):
  NFC driver; reachable only with that hardware present and local access.

CVE-2026-63916 (HID):
  Wacom HID driver; reachable only with that hardware present and local access.

CVE-2026-63917 (ip6):
  Denial-of-service only: BUG_ON panic on network namespace teardown, no
  escalation primitive.

CVE-2026-63918 (l2tp):
  Race window is closed in practice on non-RT kernels since local_bh_disable
  prevents same-CPU preemption; only one kernel version affected.

CVE-2026-63919 (xfrm):
  UAF real but struct net in a dedicated slab resists reallocation; read-only
  use caps at denial-of-service.

CVE-2026-63920 (ipv6):
  Nftables IPv6 extension-header rewrite leaks up to 2040 kernel bytes via UDP
  recvmsg; deterministic KASLR info-leak, no code execution.

CVE-2026-63921 (ip6):
  Missing capability check allows cross-namespace modification of vti6 tunnels;
  no memory corruption or LPE.

CVE-2026-63922 (ipv6):
  Stale pointer after skb reallocation in Mobile IPv6 HAO option parsing; narrow
  race, remote-triggerable, requires Mobile IPv6 module.

CVE-2026-63923 (octeontx2-af):
  Out-of-bounds write in the Marvell OcteonTX2 RVU admin function; requires that
  Marvell networking hardware in representor mode.

CVE-2026-63924 (ipv6):
  Stale pointer after skb trim in IPv6 Jumbo Payload hop-by-hop option parsing;
  narrow race, remotely triggerable.

CVE-2026-63925 (macsec):
  MACsec XPN packet-number wraparound at 0xFFFFFFFF allows indefinite replay of
  one frame; no memory corruption, protocol integrity issue only.

CVE-2026-63926 (bpf):
  Sockmap push-data helper over-advances fragment offset; requires BPF
  capability and already fixed upstream.

CVE-2026-63927 (usb):
  USB dwc2 controller driver; reachable only with that hardware present and
  local access.

CVE-2026-63928 (USB):
  USB omninet serial driver; reachable only with that hardware present and local
  access.

CVE-2026-63929 (iio):
  IIO DMABUF buffer interface; a DMA-fence leak requiring an IIO device with
  buffer support present and local access.

CVE-2026-63930 (iio):
  Use-after-free in the IIO hardware-consumer error path; requires an in-kernel
  IIO consumer driver and its sensor hardware.

CVE-2026-63931 (iio):
  Sensirion SCD30 CO2-sensor driver; division-by-zero on a sysfs write,
  requiring that sensor present and local access.

CVE-2026-63932 (iio):
  Winsen MH-Z19B CO2-sensor driver; mishandles oversized serial replies,
  requiring that sensor present and local access.

CVE-2026-63933 (iio):
  ADIS16260 gyroscope driver; division-by-zero on a sysfs write, requiring that
  sensor present and local access.

CVE-2026-63934 (iio):
  InvenSense ITG-3200 gyroscope driver; a buffer read into the wrong stack
  location, requiring that sensor present and local access.

CVE-2026-63935 (iio):
  nxp-sar-adc sensor driver affects only very recent mainline kernels, not
  current stable releases.

CVE-2026-63936 (iio):
  MediaTek MT6359 PMIC ADC driver; an unchecked read return value, reachable
  only on that MediaTek hardware with local access.

CVE-2026-63937 (KVM):
  GHCB re-read race lets an SEV-SNP guest widen array index after bounds check,
  causing OOB access; narrow race, SEV-SNP required.

CVE-2026-63938 (KVM):
  SNP guest can make KVM read past scratch boundary using a miscalculated
  length; access stays within the guest-controlled GHCB page.

CVE-2026-63939 (KVM):
  Root cause of the SNP scratch boundary error in CVE-2026-63938; setup stored
  header size not actual length; access stays guest-controlled.

CVE-2026-63940 (KVM):
  Defensive fix prevents zero-size I/O from underflowing scratch allocation in
  SNP string I/O handling; no crash path established.

CVE-2026-63941 (KVM):
  arm64 nested-virtualization bug: a guest hypervisor supplies an unchecked
  ZCR_EL2 vector length; requires arm64 nested virt with a nested guest.

CVE-2026-63942 (parport):
  Legacy parallel-port driver; reachable only with that hardware present and
  local access.

CVE-2026-63943 (Input):
  Joystick input driver; reachable only with that hardware present and local
  access.

CVE-2026-63944 (Bluetooth):
  Bluetooth HCI driver; reachable only with that hardware present and local
  access.

CVE-2026-63945 (Bluetooth):
  Bluetooth ISO driver; reachable only with that hardware present and local
  access.

CVE-2026-63946 (Bluetooth):
  Bluetooth ISO driver; reachable only with that hardware present and local
  access.

CVE-2026-63947 (Bluetooth):
  Bluetooth HIDP driver; reachable only with that hardware present and local
  access.

CVE-2026-63948 (Bluetooth):
  Bluetooth L2CAP driver; reachable only with that hardware present and local
  access.

CVE-2026-63949 (auxdisplay):
  Auxiliary display driver; reachable only with that hardware present and local
  access; already fixed upstream.

CVE-2026-63950 (mm/rmap):
  Folio mapcount corruption requires GPU HMM hardware and device-private memory
  support; both absent on typical systems.

CVE-2026-63951 (zram):
  zram change affects only very recent mainline kernels, not current stable
  releases.

CVE-2026-63952 (memfd):
  Seal ordering flaw lets an unprivileged user keep a memfd writable after
  sealing; write-protection bypass, no LPE.

CVE-2026-63953 (mm/migrate_device):
  Page-table leak in huge-page device migration error path; affects only very
  recent mainline kernels, not current stable releases.

CVE-2026-63954 (hpfs):
  HPFS mount-time crash requires a privileged mount; denial of service only;
  already fixed upstream.

CVE-2026-63955 (mm/vmalloc):
  vmalloc BUG_ON on the bridge VLAN path; affects only very recent mainline
  kernels, not current stable releases.

CVE-2026-63956 (USB):
  Cypress M8 USB-serial driver; reachable only with that hardware present and
  local access.

CVE-2026-63957 (USB):
  USB-serial driver; reachable only with that hardware present and local access;
  already fixed upstream.

CVE-2026-63958 (usb):
  USB Type-C driver; reachable only with that hardware present and local access.

CVE-2026-63959 (usb):
  USB Type-C driver; reachable only with that hardware present and local access.

CVE-2026-63960 (usb):
  USB Type-C driver; reachable only with that hardware present and local access.

CVE-2026-63961 (usb):
  USB Type-C driver; reachable only with that hardware present and local access.

CVE-2026-63962 (usb):
  USB Type-C driver; reachable only with that hardware present and local access.

CVE-2026-63963 (usb):
  USB Type-C driver; reachable only with that hardware present and local access.

CVE-2026-63964 (usb):
  USB Type-C driver; reachable only with that hardware present and local access.

CVE-2026-63965 (iio):
  Bosch BMP280/BMP580 pressure-sensor driver; a stack info-leak in the trigger
  handler, requiring that sensor present and local access.

CVE-2026-63966 (iio):
  ADIS16550 IMU driver; a stack info-leak in the trigger handler, requiring that
  sensor present and local access.

CVE-2026-63967 (iio):
  STMicroelectronics LSM6DSx IMU driver; a stack info-leak in the tagged FIFO
  path, requiring that sensor present and local access.

CVE-2026-63968 (ipv6):
  IPv6 route sibling-list walk lacks an exit signal on concurrent deletion,
  causing a CPU stall reachable from a user namespace.

CVE-2026-63969 (ipv6):
  Same RCU sibling-list infinite loop as CVE-2026-63968 but triggered via the
  IPv6 route netlink fill path instead.

CVE-2026-63970 (vsock/virtio):
  Unprivileged io_uring vsock zero-copy page-refcount underflow; needs the
  v6.15+ vectored fixed-buffer path and a ~1024x refcount grind; no established
  LPE.

CVE-2026-63971 (sctp):
  race resolves to a kernel panic; denial of service only

CVE-2026-63972 (net):
  NULL dereference in MANA driver after double detach; reachable only in
  privileged teardown following a specific allocation failure sequence.

CVE-2026-63973 (net):
  MANA driver dereferences rxqs and tx_qp without NULL checks after partial
  allocation failure; all affected paths require privileged teardown.

CVE-2026-63974 (Bluetooth):
  Bluetooth HCI sync driver; reachable only with that hardware present and local
  access.

CVE-2026-63975 (Bluetooth):
  Bluetooth L2CAP driver; reachable only with that hardware present and local
  access.

CVE-2026-63976 (Bluetooth):
  Bluetooth L2CAP driver; reachable only with that hardware present and local
  access.

CVE-2026-63977 (dpll):
  Cancelled work item can reschedule after teardown and dereference freed DPLL
  device; requires specialized ZL3073x timing hardware.

CVE-2026-63978 (net/handshake):
  UAF on teardown but reachable only via root-gated kernel-TLS consumers
  (NVMe-TCP, NFS-over-TLS); no unprivileged path.

CVE-2026-63979 (net/handshake):
  UAF real but ACCEPT requires global CAP_NET_ADMIN; user-namespace root is
  insufficient and a kernel-TLS consumer is also needed.

CVE-2026-63980 (net/handshake):
  TLS handshake cancel takes a spin-lock from both process and softirq context;
  deadlock risk; already fixed upstream.

CVE-2026-63981 (net/sched):
  Mirred action's loop-depth counter not incremented before recursive broadcast;
  stack overflow reachable from a user namespace; introduced after kernel 6.18.

CVE-2026-63982 (net/sched):
  Ingress-redirect clears loop-detection state, enabling a packet loop; requires
  CAP_NET_ADMIN in a user namespace; introduced after kernel 6.18.

CVE-2026-63983 (net/sched):
  Packet-duplication loop causes resource exhaustion; denial-of-service only
  with no escalation primitive.

CVE-2026-63984 (ipv6):
  RPL source-routing decompression overflow; requires the optional IPv6 RPL
  lightweight-tunnel feature, typically disabled.

CVE-2026-63985 (ethtool):
  Netlink EEPROM read path lacked combined offset-plus-length bounds check,
  allowing an out-of-bounds driver or firmware read; requires CAP_NET_ADMIN.

CVE-2026-63986 (ethtool):
  Error path passes an errno as a pointer to genlmsg_cancel, causing a kernel
  crash in ethtool timestamp dump; requires CAP_NET_ADMIN.

CVE-2026-63987 (ethtool):
  OOB write needs a DIM-capable NIC (virtio) in the initial network namespace,
  which unprivileged user namespaces cannot create.

CVE-2026-63988 (bridge):
  Sleep-in-atomic BUG on bridge sysfs promiscuity change; requires NET_ADMIN and
  affects only very recent mainline kernels.

CVE-2026-63989 (bridge):
  Same sleep-in-atomic as CVE-2026-63988 in the bridge netlink setlink path;
  requires NET_ADMIN; introduced in kernel 6.15.

CVE-2026-63990 (bonding):
  Enslaving a CAN device to a bond leaves can_ml_priv uninitialized, causing a
  NULL dereference on CAN socket close; requires NET_ADMIN.

CVE-2026-63991 (Bluetooth):
  Bluetooth 6LoWPAN driver; reachable only with that hardware present and local
  access.

CVE-2026-63992 (tunnels):
  out-of-bounds read leading to a panic; denial of service / bounded read only

CVE-2026-63993 (vxlan):
  Use-after-free reads 1 byte of old IP header for VXLAN ECN encapsulation; no
  exploitation path exists.

CVE-2026-63994 (tunnels):
  IP and IPv6 header pointers go stale after skb reallocation; freed-memory
  reads land in ICMP error responses.

CVE-2026-63995 (ethtool):
  Optical module CDB reply controls memcpy byte count; exploitable only with
  malicious hardware and CAP_NET_ADMIN.

CVE-2026-63996 (ethtool):
  Out-of-bounds write into a fixed reply struct; requires malicious optical
  hardware plus CAP_NET_ADMIN.

CVE-2026-63997 (ethtool):
  Resource leak on firmware flash error path; requires optical hardware and
  CAP_NET_ADMIN, no escalation path.

CVE-2026-63998 (ethtool):
  PM runtime reference leaked on validation failure; subsequent ethtool
  operations may stall; CAP_NET_ADMIN required.

CVE-2026-63999 (ethtool):
  Memory leaked on RSS GET driver error; no escalation path, and the leak
  requires a driver-level failure.

CVE-2026-64000 (net):
  Out-of-bounds read past skb tail on truncated HSR supervision frames; remotely
  triggered by any HSR peer.

CVE-2026-64001 (ALSA):
  ALSA sound driver; reachable only with that hardware present and local access.

CVE-2026-64002 (ipv4):
  Use-after-free bitmap read from concurrent sysctl access during network
  namespace teardown; narrow race causing info-leak or panic.

CVE-2026-64003 (scsi):
  Requeued requests on cancelled SCSI devices never resume after host recovery;
  internal race, no user-reachable trigger.

CVE-2026-64004 (net/iucv):
  Architecture-specific to IBM s390; absent on mainstream x86/arm64 systems.

CVE-2026-64005 (net/smc):
  SMC-R protocol requires RDMA hardware; not reachable on mainstream systems
  without such adapters.

CVE-2026-64006 (netfilter):
  Incorrect carry logic in nftables bitwise shift produces wrong results; no
  memory-safety primitive, CAP_NET_ADMIN required.

CVE-2026-64007 (netfilter):
  SYNPROXY stale-header use-after-free limited to a narrow 2-byte checksum
  write, not arbitrary; already fixed upstream.

CVE-2026-64008 (accel/rocket):
  Rocket accelerator driver; reachable only with that hardware present and local
  access; already fixed upstream.

CVE-2026-64009 (xfrm):
  Integer underflow in XFRM MTU calculation triggers a near-unlimited memset,
  causing immediate panic; reachable via unprivileged user namespace.

CVE-2026-64010 (nfc):
  NFC LLCP driver; reachable only with that hardware present and local access.

CVE-2026-64011 (nfc):
  NFC socket driver; reachable only with that hardware present and local access.

CVE-2026-64012 (net/sched):
  NULL-pointer dereference; denial of service (panic) only

CVE-2026-64013 (ACPI):
  ACPI button handler freed context can be called by a post-removal
  notification; requires physical button or embedded controller event.

CVE-2026-64014 (Input):
  USB touchscreen input driver; reachable only with that hardware present and
  local access.

CVE-2026-64015 (security/keys):
  Default voluntary preemption prevents the race between the two array loads;
  full preemption required, which unprivileged users cannot enable.

CVE-2026-64016 (ksmbd):
  ksmbd durable-handle reconnect use-after-free, an RCE primitive, but present
  only on very recent mainline and one already-superseded stable point release.

CVE-2026-64017 (blk-mq):
  Request object stays in a static tag pool and is never slab-freed, so no
  controlled realloc; denial-of-service only.

CVE-2026-64018 (net):
  Unvalidated DMA index into MANA request array; exploitable only by a malicious
  hypervisor in a confidential VM.

CVE-2026-64019 (nvme-pci):
  DMA mappings leak on NVMe allocation failure; requires privileged device
  access, denial-of-service only, no escalation path.

CVE-2026-64020 (nvme-pci):
  Tracking allocation leaked for peer-to-peer NVMe paths; requires P2P-capable
  hardware, memory leak only.

CVE-2026-64021 (drm/xe/oa):
  Intel Xe GPU observability (OA) interface; an exec-queue leak requiring an
  Intel Xe GPU present and local access.

CVE-2026-64022 (gpio):
  GPIO aggregator driver; a use-after-free reachable only via privileged (root)
  configuration of an aggregator device.

CVE-2026-64023 (gpio):
  GPIO aggregator driver; a potential use-after-free reachable only via
  privileged (root) configuration of an aggregator device.

CVE-2026-64024 (tcp):
  Predictable TCP initial sequence number (remote info-leak); blind injection
  requires same-CPU steering, not an RCE primitive.

CVE-2026-64025 (bpf, skmsg):
  kTLS use-after-free in the decrypt path; requires a sockmap plus kTLS setup
  and already fixed upstream.

CVE-2026-64026 (rxrpc):
  rxrpc's in-place decrypt rewrites only the sender's own copied buffer, not
  shared read-only pages; AF_RXRPC is a niche, rarely-used transport.

CVE-2026-64027 (net):
  Net shaper XArray race frees entry while a reader holds it; use-after-free,
  CAP_NET_ADMIN required.

CVE-2026-64028 (tracing):
  NULL dereference in ftrace histogram field name on truncation; requires
  CAP_SYS_ADMIN to trigger, no escalation.

CVE-2026-64029 (ALSA):
  ALSA sound driver; reachable only with that hardware present and local access.

CVE-2026-64030 (wifi):
  mac80211 Wi-Fi driver; reachable only with wireless hardware present and local
  access; already fixed upstream.

CVE-2026-64031 (erofs):
  Narrow race on a preallocated folio in the erofs zstd path triggers a kernel
  crash; already fixed upstream.

CVE-2026-64032 (bridge):
  Timer-UAF of a heap-allocated bridge port object reachable from unprivileged
  user namespaces; full exploitation not established.

CVE-2026-64033 (RDMA/rtrs):
  Use-after-free on RDMA/rtrs init error path when kobject release fires before
  sysfs teardown; only reachable during initialization failure.

CVE-2026-64034 (net):
  Requires a malicious hypervisor and Azure MANA hardware; not reachable by
  unprivileged local users.

CVE-2026-64035 (igc):
  Stale TX buffer type in igc causes wrong completion cleanup; reachable only
  via ethtool frame-preemption config with CAP_NET_ADMIN.

CVE-2026-64036 (cgroup/rstat):
  Per-CPU OOB write via BPF kfunc requires CAP_BPF+CAP_PERFMON (not delegated to
  user namespaces); poorly controlled from an already-privileged context.

CVE-2026-64037 (wifi):
  Driver for Intel Wi-Fi hardware; reachable only with that device present and
  local access; already fixed upstream.

CVE-2026-64038 (hwmon):
  LM90 sensor alert work can fire after hwmon device is freed during removal;
  requires physical sensor and removal race.

CVE-2026-64039 (drm/msm/snapshot):
  Qualcomm MSM display snapshot code; requires that display hardware present and
  local access.

CVE-2026-64040 (cachefiles):
  Null dereference in cachefiles when directory creation fails; only reachable
  during privileged cachefiles setup.

CVE-2026-64041 (ASoC):
  Driver for audio codec hardware; reachable only with that device present and
  local access.

CVE-2026-64042 (vfio/pci):
  Affects only very recent mainline kernels, not current stable releases.

CVE-2026-64043 (ovpn):
  OpenVPN kernel driver affecting only very recent mainline kernels, not current
  stable releases.

CVE-2026-64044 (ovpn):
  OpenVPN kernel driver affecting only very recent mainline kernels, not current
  stable releases.

CVE-2026-64045 (ovpn):
  OpenVPN kernel driver affecting only very recent mainline kernels, not current
  stable releases.

CVE-2026-64046 (net):
  kTLS TX scatter-gather ring wrap produces consecutive chain-after-chain,
  corrupting send data; no memory-safety primitive.

CVE-2026-64047 (net):
  Wrong scatter-gather chain base for wrapped sk_msg ring in kTLS TX; data
  corruption, no memory-safety primitive.

CVE-2026-64048 (net/smc):
  Optional shared-memory communications protocol requiring special RDMA or
  mainframe hardware to be active.

CVE-2026-64049 (drm/msm/adreno):
  Qualcomm Adreno (MSM) GPU driver; a userspace-triggered crash on a2xx-a4xx
  GPUs, requiring that hardware and local access.

CVE-2026-64050 (drm/msm/dpu):
  Qualcomm MSM display-processor (DPU) driver; a device-lifetime bug requiring
  that hardware and local access.

CVE-2026-64051 (accel/qaic):
  Driver for Qualcomm AI accelerator hardware; reachable only with that device
  present; already fixed upstream.

CVE-2026-64052 (block):
  Unpinned page pointer dereference via NVMe passthrough with metadata under
  memory pressure; causes a general protection fault.

CVE-2026-64053 (block):
  One-element out-of-bounds read past bio integrity vector array via NVMe
  passthrough write; requires direct NVMe device access.

CVE-2026-64054 (net):
  Duplicate net shaper leaf handle causes deterministic double-free in cleanup;
  requires CAP_NET_ADMIN.

CVE-2026-64055 (net):
  Driver for Cortina Gemini embedded SoC network hardware; reachable only with
  that hardware present; already fixed upstream.

CVE-2026-64056 (net):
  Driver for Cortina Gemini embedded SoC network hardware; reachable only with
  that hardware present; already fixed upstream.

CVE-2026-64057 (afs):
  AFS filesystem is not mountable from user namespaces; access requires root or
  cell-level privileges, so exploitability is negligible.

CVE-2026-64058 (netfs):
  OOB refuted: no realloc lands in the free-to-use window; no netfs filesystem
  supports unprivileged mounts; worst case is NULL-deref.

CVE-2026-64059 (netfs):
  Folio reference and metadata structs leaked on state change during write;
  local user can exhaust memory via repeated writes.

CVE-2026-64060 (netfs):
  Minor kernel memory leak in netfs write path when a read-wait fails; requires
  an I/O error to trigger.

CVE-2026-64062 (netfs):
  Folio marked for writeback while still locked causes deadlock against
  concurrent mmap access; local denial of service.

CVE-2026-64063 (netfs):
  Streaming write leaves stale folio metadata causing page cache inconsistency;
  no kernel memory-safety primitive.

CVE-2026-64064 (netfs):
  File truncation leaves dirty bit set after freeing folio metadata; mmap read
  then dereferences null folio private, causing oops.

CVE-2026-64065 (netfs):
  Abandoned read-page unlock races with write owner; VM_BUG_ON fires in
  folio_unlock at roughly 30% rate under concurrent writes.

CVE-2026-64066 (netfs):
  Loop robustness defect with no memory corruption primitive; denial-of-service
  only.

CVE-2026-64067 (netfs):
  Barrier race causes panic on arm64 only; x86 is inert and any UAF is
  speculative, so denial-of-service only.

CVE-2026-64068 (netfs):
  List corruption causes panic; any UAF requires a hard race and the dominant
  outcome is denial-of-service.

CVE-2026-64069 (netfs):
  Double subrequest reference release on the direct-I/O cancel path; affects
  only recent kernels, already fixed upstream.

CVE-2026-64070 (powerpc/hv-gpci):
  powerpc-specific; impact is a kernel panic (denial of service) only

CVE-2026-64071 (nvme-pci):
  Double-free of host memory buffer scatter-gather table on NVMe probe error;
  triggered by I/O error during HMB setup.

CVE-2026-64072 (nvme):
  Integrity mapping failure silently skips user-memory unmap via NVMe ioctl;
  requires privileged /dev/nvme access, no escalation.

CVE-2026-64073 (irq_work):
  Use-after-free in the irq_work path only on PREEMPT_RT real-time kernels, not
  standard builds.

CVE-2026-64074 (fs/statmount):
  One-byte null out-of-bounds write via statmount() on an idmapped mount when
  the output buffer is too small.

CVE-2026-64075 (fprobe):
  Fprobe use-after-free race requires tracefs or BPF capability; current stable
  releases are unaffected.

CVE-2026-64076 (netfilter):
  Module-init race causes NULL-deref panic; one-shot window and re-triggering
  requires CAP_SYS_MODULE, denial-of-service only.

CVE-2026-64077 (netfilter):
  Error-path UAF leads to a general-protection fault; not weaponizable into a
  write primitive, denial-of-service only.

CVE-2026-64078 (netfilter):
  Teardown free is mutex-serialized, so no live-object free is reachable; capped
  at denial-of-service.

CVE-2026-64079 (netfilter):
  NULL-pointer dereference leads to a general protection fault with no
  escalation path; denial-of-service only.

CVE-2026-64080 (firmware):
  Function pointer use-after-free in ARM FF-A notification callbacks; requires
  ARM64 FFA hardware and concurrent privileged driver operations.

CVE-2026-64081 (firmware):
  Malformed FF-A firmware data needed to trigger; no local user path, requires
  ARM64 FFA transport hardware.

CVE-2026-64082 (riscv):
  riscv-specific; uninitialized-memory read (information disclosure) only

CVE-2026-64083 (hwmon):
  Analog Devices ADM1266 PMBus power-sequencer driver; out-of-bounds read on
  short block responses, requiring that chip present and local access.

CVE-2026-64084 (hwmon):
  Analog Devices ADM1266 PMBus power-sequencer driver; an unbounded PDIO scan,
  requiring that chip present and local access.

CVE-2026-64085 (hwmon):
  Analog Devices ADM1266 PMBus power-sequencer driver; a blackbox-record
  overflow, requiring that chip present and local access.

CVE-2026-64086 (hwmon):
  Analog Devices ADM1266 PMBus power-sequencer driver; a PEC-byte buffer-sizing
  bug, requiring that chip present and local access.

CVE-2026-64087 (hwmon):
  Analog Devices ADM1266 PMBus power-sequencer driver; trusts an implausible
  blackbox record count, requiring that chip present and local access.

CVE-2026-64088 (batman-adv):
  Optional mesh networking protocol; inactive without explicit configuration and
  not reachable by default.

CVE-2026-64089 (batman-adv):
  Optional mesh networking protocol; inactive without explicit configuration and
  not reachable by default.

CVE-2026-64090 (batman-adv):
  Optional mesh networking protocol; inactive without explicit configuration and
  not reachable by default.

CVE-2026-64091 (batman-adv):
  Optional mesh networking protocol; inactive without explicit configuration and
  not reachable by default.

CVE-2026-64092 (batman-adv):
  Optional mesh networking protocol; inactive without explicit configuration and
  not reachable by default.

CVE-2026-64093 (batman-adv):
  Optional mesh networking protocol; inactive without explicit configuration and
  not reachable by default.

CVE-2026-64094 (batman-adv):
  Optional mesh networking protocol; inactive without explicit configuration and
  not reachable by default.

CVE-2026-64095 (batman-adv):
  Optional mesh networking protocol; inactive without explicit configuration and
  not reachable by default.

CVE-2026-64096 (batman-adv):
  Use-after-free in an optional mesh networking protocol; inactive without
  explicit configuration and not reachable by default.

CVE-2026-64097 (drm/amd/display):
  Driver for AMD GPU display hardware; reachable only with that device present
  and local access; already fixed upstream.

CVE-2026-64098 (drm/virtio):
  virtio-GPU display driver; a plane-update locking bug requiring a virtio GPU
  present and local DRM access.

CVE-2026-64099 (drm/v3d):
  Broadcom V3D GPU driver (Raspberry Pi); a use-after-free on an error path,
  requiring that GPU present and local access.

CVE-2026-64100 (drm/msm):
  Qualcomm Adreno (MSM) GPU driver; requires that GPU hardware and local access;
  already fixed upstream.

CVE-2026-64101 (fwctl):
  bounded out-of-bounds read; information disclosure only

CVE-2026-64102 (RDMA/siw):
  Soft-iWARP MPA length underflow lets a connected, unauthenticated iWARP peer
  drive a ~4 GB out-of-bounds copy (OOB read and write); the length is not
  attacker-boundable, so the ceiling is a remote kernel panic, not controlled
  corruption. Reachable only where soft-iWARP is actually deployed.

CVE-2026-64103 (scsi):
  IRQ handler requeues a tasklet on a dead SCSI host; requires specific Intel
  C600 SAS controller hardware.

CVE-2026-64104 (virt):
  Decryption failure leaves pages in unknown state reused for kernel data,
  readable by hypervisor in SEV-SNP guest.

CVE-2026-64105 (KVM):
  IRQ resources leaked on KVM vGIC initialization failure; trivial error-path
  memory leak, no LPE path.

CVE-2026-64106 (KVM):
  Unchecked event-ID bit count in vGIC-ITS restore triggers exponential
  guest-read loop; hard denial of service from VM.

CVE-2026-64107 (ASoC):
  Audio codec driver bug affecting only very recent mainline kernels, not
  current stable releases.

CVE-2026-64108 (cifs):
  Deferred-close work fires after CIFS superblock teardown, dereferencing freed
  dentry; mount and unmount require CAP_SYS_ADMIN.

CVE-2026-64109 (af_unix):
  Unprivileged use-after-free SKB length read in Unix stream socket; racing
  MSG_PEEK with recv+shutdown, affects blocking behavior only.

CVE-2026-64110 (igc):
  SKB leaked when igc TX descriptor init fails during frame-preemption send;
  requires CAP_NET_ADMIN, no escalation path.

CVE-2026-64111 (lsm):
  SELinux domain transition bypass via ptrace/exec race, but effect is
  constrained by policy configuration.

CVE-2026-64112 (rbd):
  Narrow race in RBD unmap triggers an assertion panic; requires admin
  privileges and specific RBD hardware.

CVE-2026-64114 (ipv4):
  Kernel panic via crafted raw IP packet requires both CAP_NET_RAW and
  CAP_NET_ADMIN, limiting reach significantly.

CVE-2026-64115 (vsock/vmci):
  Local vsock routes to loopback, never vmci; UAF path requires a real
  host-to-guest VMCI peer, not local LPE.

CVE-2026-64116 (ipv6):
  Null-dereference race in IPv6 IOAM processing; denial of service only, and
  IOAM is an optional feature typically disabled.

CVE-2026-64117 (wifi):
  uninitialized-memory read; information disclosure only

CVE-2026-64118 (qed):
  Double-free in QED driver error path requires specific hardware and an
  out-of-memory condition; not user-reachable.

CVE-2026-64119 (l2tp):
  Infinite CPU loop via corrupt L2TP session list requires administrative
  network namespace privileges to trigger.

CVE-2026-64120 (net):
  Null-dereference only under out-of-memory conditions; affects only very recent
  mainline kernels, not current stable releases.

CVE-2026-64121 (net):
  Out-of-bounds heap read in IFB ethtool stats requires CAP_NET_ADMIN; no
  meaningful gain from an already-admin context.

CVE-2026-64122 (net/mlx5e):
  Use-after-free in mlx5e TX-timeout handler is not user-reachable; requires a
  hardware-generated TX timeout event.

CVE-2026-64123 (net):
  LPE overstated: UAF reader copies only a MAC address with no write primitive;
  impact is info-leak or denial-of-service.

CVE-2026-64124 (net):
  Bounded out-of-bounds write in devmem TCP dmabuf binding; no LPE and already
  fixed upstream.

CVE-2026-64125 (net):
  Hardware-specific denial of service on Broadcom GENET NICs requires
  CAP_NET_ADMIN and that specific NIC; no memory corruption.

CVE-2026-64126 (Bluetooth):
  Driver for Bluetooth hardware; reachable only with that device present and
  local access; already fixed upstream.

CVE-2026-64127 (Bluetooth):
  Driver for Bluetooth hardware; reachable only with that device present and
  local access; already fixed upstream.

CVE-2026-64128 (Bluetooth):
  Driver for Bluetooth hardware; reachable only with that device present and
  local access; already fixed upstream.

CVE-2026-64129 (mm/migrate_device):
  Affects only very recent mainline kernels, not current stable releases.

CVE-2026-64130 (mm/page_alloc):
  ARM64 MTE tag-clear regression requires the init_on_free boot parameter to
  manifest; no memory corruption path.

CVE-2026-64131 (mm/memory):
  Spurious kernel taint on device-private page unmap; requires the GPU
  device-private memory feature, typically disabled.

CVE-2026-64132 (ipv6):
  Stale pointer in IPv6 IOAM path after buffer reallocation requires an admin
  sysctl that is off by default.

CVE-2026-64133 (ALSA):
  Driver for sound card hardware; reachable only with that device present and
  local access; already fixed upstream.

CVE-2026-64134 (ALSA):
  Driver for sound card hardware; reachable only with that device present and
  local access; already fixed upstream.

CVE-2026-64135 (hwmon):
  Analog Devices ADM1266 PMBus power-sequencer driver; an undersized
  blackbox-info buffer, requiring that chip present and local access.

CVE-2026-64136 (smb):
  Refcount race could cause use-after-free on an SMB tcon object, but mounting
  an SMB share requires local privileges.

CVE-2026-64137 (smb):
  discloses secret key material only; information disclosure, no code execution

CVE-2026-64138 (ksmbd):
  bounded out-of-bounds read; information disclosure only and requires an
  authenticated session

CVE-2026-64139 (ksmbd):
  Heap memory leak from repeated SMB ACL overflow requests; denial of service
  only, requiring a running ksmbd server.

CVE-2026-64140 (ksmbd):
  Null-dereference in ksmbd requires a durable SMB handle, a concurrent session
  logoff, and root-level procfs access.

CVE-2026-64141 (ksmbd):
  NULL-pointer dereference; denial of service only and requires an authenticated
  session

CVE-2026-64143 (platform/x86):
  Laptop platform driver affecting only very recent mainline kernels, not
  current stable releases.

CVE-2026-64144 (Bluetooth):
  Driver for Bluetooth USB hardware; reachable only with that device present and
  local access; already fixed upstream.

CVE-2026-64145 (wifi):
  wilc1000 Wi-Fi driver; requires the specific wireless hardware; already fixed
  upstream.

CVE-2026-64146 (erofs):
  Memory reference leak in erofs xattr error paths causes slow denial of
  service; no code execution path.

CVE-2026-64147 (pds_core):
  Debugfs reference leak triggered by AMD Pensando NIC firmware reset; requires
  that specific NIC hardware.

CVE-2026-64148 (pds_core):
  Wrong error propagation on AMD Pensando firmware timeout; a correctness fix
  with no exploitable security primitive.

CVE-2026-64149 (dma-mapping):
  Debug-only false-positive warning in DMA mapping; dead code in production
  builds with no security exploitation primitive.

CVE-2026-64150 (netfilter):
  Already fixed upstream; also gated behind the optional nftables inner-tunnel
  matching feature.

CVE-2026-64151 (iommupt):
  IOMMU page-table code affecting only very recent mainline kernels, not current
  stable releases.

CVE-2026-64152 (iommu):
  IOMMU debug error-path code affecting only very recent mainline kernels, not
  current stable releases.

CVE-2026-64153 (drm/msm):
  Driver for Qualcomm MSM GPU hardware; reachable only with that device present
  and local access; already fixed upstream.

CVE-2026-64154 (drm/msm/adreno):
  Device-node reference leak at Qualcomm Adreno GPU init only; no runtime
  exploitation and requires that GPU hardware.

CVE-2026-64155 (wifi):
  Driver for ath11k Wi-Fi hardware; reachable only with that device present and
  local access; already fixed upstream.

CVE-2026-64156 (netfs, afs):
  AFS writeback correctness fix; no memory-safety impact and already fixed
  upstream.

CVE-2026-64157 (netfs):
  Data-integrity fix for netfs folio invalidation; no memory-safety impact and
  already fixed upstream.

CVE-2026-64158 (netfs):
  Write-streaming restriction fix for O_RDWR fds; behavioral correctness only,
  no memory-safety impact, already fixed upstream.

CVE-2026-64159 (netfs):
  Zero-point capped past server EOF causing incorrect zero-fill on reads; data
  integrity issue only, no memory safety impact.

CVE-2026-64160 (netfs):
  Unprotected concurrent write to remote file size can cause data tearing;
  integrity issue only, no memory safety impact.

CVE-2026-64161 (net):
  Driver for TI industrial Ethernet SoC hardware; reachable only with that
  hardware present; already fixed upstream.

CVE-2026-64162 (idpf):
  Uninitialized spinlock used by PTP worker before init completes; triggers a
  lockdep warning only, no exploitable security impact.

CVE-2026-64163 (test_kprobes):
  Kernel self-test module (CONFIG_TEST_KPROBES); a debug/test code path, not
  present in production kernel builds.

CVE-2026-64164 (btrfs):
  Sleeping-in-atomic bug in a btrfs trace event; requires CAP_SYS_ADMIN to
  trigger; denial of service only.

CVE-2026-64165 (ARM):
  Board-specific code for 32-bit ARM Versatile machines; absent on mainstream
  x86/arm64 systems.

CVE-2026-64166 (firmware):
  FF-A client driver null dereference requires CAP_SYS_MODULE to trigger and is
  aarch64-only; all in-tree drivers supply id_table.

CVE-2026-64167 (kho):
  Kexec handover subsystem affecting only very recent mainline kernels, not
  current stable releases.

CVE-2026-64168 (spi):
  Driver for SPI bus controller hardware; reachable only with that hardware
  present and local access.

CVE-2026-64169 (spi):
  Driver for SPI bus controller hardware; reachable only with that hardware
  present and local access.

CVE-2026-64170 (spi):
  Driver for SPI bus controller hardware; reachable only with that hardware
  present and local access.

CVE-2026-64171 (i2c):
  Tegra I2C driver bug affecting only very recent mainline kernels, not current
  stable releases.

CVE-2026-64172 (KVM):
  Missed IPI VM-exit causes guest vCPU wake failure only on Hygon Family 18h
  CPUs; standard AMD hardware unaffected.

CVE-2026-64173 (tracing):
  Uninitialized element freed in tracing error path requires CAP_SYS_ADMIN and
  an allocation failure to trigger.

CVE-2026-64174 (wifi):
  Wi-Fi configuration core; requires Wi-Fi hardware and local access; already
  fixed upstream.

CVE-2026-64175 (wifi):
  iwlwifi Wi-Fi driver; requires Intel wireless hardware; already fixed
  upstream.

CVE-2026-64176 (wifi):
  Wrong beacon TX rate for older iwlwifi hardware; a hardware-specific
  behavioral bug with no exploitable security primitive.

CVE-2026-64177 (phonet/pep):
  Protocol for Nokia cellular modem hardware; inactive without that hardware and
  not reachable by default.

CVE-2026-64178 (Bluetooth):
  Driver for Bluetooth hardware; reachable only with that device present and
  local access; already fixed upstream.

CVE-2026-64179 (net):
  Driver for Intel WWAN modem hardware; reachable only with that device present;
  already fixed upstream.

CVE-2026-64180 (mm/memory_hotplug):
  Kobject reference leak on each memory hotplug remove operation requires
  CAP_SYS_ADMIN and repeated cycles to exhaust resources.

CVE-2026-64181 (mm):
  Page-table warning that fires only on architectures lacking
  pmd_special/pud_special support (32-bit x86 and LoongArch); a warning, not a
  memory-safety issue.

CVE-2026-64182 (drivers/base/memory):
  Device reference leak on each hardware memory error event; no
  attacker-controlled primitive, needs real hardware MCE or admin access.

CVE-2026-64183 (efi):
  Null dereference at boot on affected firmware with ACPI PRM; boot-time denial
  of service only, no runtime exploitation.

CVE-2026-64184 (mm/damon/sysfs-schemes):
  Memory cgroup reference leak in DAMON scheme filter update requires root
  access; at most a slow memory leak over time.

CVE-2026-64185 (sysfs):
  Sysfs directory unexpectedly removed on ENOMEM in driver update path;
  triggered by kernel code only, not directly user-reachable.

CVE-2026-64186 (iommu/amd):
  Latent out-of-bounds in AMD IOMMU debugfs; existing checks already block the
  access, requires root, and the config is disabled.

CVE-2026-64187 (xfs):
  Null dereference on crafted XFS log during mount requires CAP_SYS_ADMIN;
  kernel crash only, no LPE path.

CVE-2026-64188 (net):
  Use-after-free in Qualcomm RMNET modem driver; requires that hardware and
  local access; already fixed upstream.

CVE-2026-64189 (netfilter):
  Default voluntary preemption prevents the race between the two array reads;
  exploiting requires full preemption, unavailable to unprivileged users.

CVE-2026-64190 (net):
  requires CAP_NET_ADMIN to configure the team device, and the impact is only a
  panic

CVE-2026-64191 (i2c):
  i2c-stub test module (CONFIG_I2C_STUB); a debug/test driver, not present in
  production kernel builds.

CVE-2026-64192 (bpf):
  Panic requires non-default LSM boot config plus CAP_BPF; rcu_head.func is not
  a controlled value, so denial-of-service only.

CVE-2026-64205 (i2c):
  SMBus state corruption on i801 hardware causes CPU livelock; requires specific
  hardware and a BIOS/ACPI race to trigger.

CVE-2026-64206 (Bluetooth):
  Real unauthenticated remote deadlock but caps at denial-of-service; no memory
  corruption or escalation primitive.

CVE-2026-64207 (net/sched):
  Null dereference in the QFQ scheduler reachable only via the DUALPI2 qdisc;
  denial of service only.
