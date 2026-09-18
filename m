X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/18/3
Message-ID: <UKEwxUv6L_SOQ3dxJhtoFDD4N5ji694-vMGviN_pwRaOi04cOpAk7ZoiQGsV0px_xpG0wgwnyNZoKg1yMeKTn1y9m2gTwS1_sWxLHnSsn2E=@pm.me>
Date: Fri, 18 Sep 2026 06:15:07 +0000
From: manizada <manizada@...me>
To: "oss-security@...ts.openwall.com" <oss-security@...ts.openwall.com>
Subject: A quartet of Linux local root vulns: DirtyAH6, PPPoEject, TUNderflow, and DiagSpill
Content-Type: text/plain; charset=utf-8

Hi folks,

Emailing here now that the embargo agreed upon with linux-distros@ has
expired.

Flagging four local root vulnerabilities in the Linux kernel, originally
reported to security@...nel.org and the relevant maintainers in
mid-July:

  DirtyAH6 (CVE-2026-80844), TUNderflow (CVE-2026-81000), PPPoEject
  (CVE-2026-68121), and DiagSpill (CVE-2026-74469).

The underlying bugs have been around for 10-21 years. The first three
LPEs require either unprivileged user namespaces or specific CAPs
(see below); DiagSpill does not.

The corruption bugs in DirtyAH6 and DiagSpill are remotely reachable
under _very specific circumstances_, with DirtyAH6 theoretically
(unlikely/with difficulty) remote-groomable to remote root.

The fixes are now public and have been landing in the relevant stable
trees over the past several weeks:

DirtyAH6:
  7bad4bda74dc4713f398d3b7624ff05478e3a568
  ("xfrm: ah6: validate routing header segments_left")

TUNderflow:
  447c9303942c439a117d9b76ce6d6e2116b38ee7
  ("net: tun: bound receive headroom")

PPPoEject:
  e9c238f6fe42fb1b4dba3a578277de32cb487937
  ("pppoe: reload header pointer after dev_hard_header()")

DiagSpill:
  bd0e9289e2642f6a5c54faad304ce0f41e926d22
  ("sctp: prevent peer transport count overflow")

The first upstream stable releases containing all four fixes are
5.10.270, 5.15.221, 6.1.188, 6.6.157, 6.12.109, 6.18.50, and 7.2.4.

LPE impact:

  All four PoCs provide unprivileged local user -> root code execution
  on their targets.

  The pre-reqs listed below are for the vulns' _corruption bugs
  specifically_; the full LPE-specific requirements, including
  additional kmods and various userspace tooling, are captured in the
  PoCs' READMEs.

  DirtyAH6 pre-reqs:
    - AH6/XFRM support
    - unprivileged user/network namespaces, or CAP_NET_ADMIN and
      CAP_NET_RAW over an attacker-controlled network namespace

  TUNderflow pre-reqs:
    - TUN support and some network-device path that can propagate
      oversized receive headroom to it
    - unprivileged user/network namespaces, or CAP_NET_ADMIN over an
      attacker-controlled network namespace

  PPPoEject pre-reqs:
    - PPPoE support and a lower-device header callback that can
      reallocate the skb head during dev_hard_header()
    - unprivileged user/network namespaces, or CAP_NET_ADMIN over an
      attacker-controlled network namespace

  DiagSpill pre-reqs:
    - SCTP and sctp_diag support (no unprivileged user namespace or CAP
      requirements)

These pre-reqs are not exotic -- they cover standard modules/paths
commonly available on regular distro kernels.

AppArmor (except for the Ubuntu cases of blocking unprivileged user
namespaces themselves)/SELinux do not block the exploits in my testing.
All four bugs can also corrupt the host kernel from a container; the
first three would require the appropriate CAPs (without creating new
user namespaces), while DiagSpill would work without any special CAPs
so long as SCTP and sctp_diag are available. This could theoretically
enable a container escape, though I didn't pursue this angle with the
PoCs.

Remote impact:
  DirtyAH6:
    If the target is acting as an IPv6 router/gateway and adds AH in
    transport mode, the bug can be turned into a remote crash/DoS.
    With on-target memory grooming, I was able to turn it into remote
    root in a lab environment.

    Remote-only grooming to root is theoretically possible, but looks
    extremely difficult.

  DiagSpill:
    If ASCONF/ADD-IP are enabled with either SCTP-AUTH or
    net.sctp.addip_noauth_enable=1 (all disabled by default), a
    malicious peer can add enough transports to wrap transport_count.
    Something on the target (e.g., ss) must still issue the sock_diag
    request that triggers the overwrite. This can be turned into a
    remote crash/DoS; I do not see a path to full remote root, even
    assuming perfect remote memory grooming.

Bug:
  DirtyAH6:
    ipv6_rearrange_rthdr() would get the number of addresses from
    hdrlen, then use segments - segments_left to move an address
    pointer without checking that segments_left <= segments. A raw
    IPv6 HDRINCL packet with hdrlen=2 and segments_left=255 moved the
    pointer back 4,064 bytes and passed a 4,064-byte length to
    memmove(), causing an out-of-bounds access.

  TUNderflow:
    tun_set_headroom() stored receive headroom directly in tun->align,
    while tun_get_user() also used it to choose how much packet data to
    keep in the head. A netkit device with 4,096 bytes of configured
    headroom, under VXLAN and Open vSwitch, could pass 4,160 bytes to
    a raw TUN port. SKB_MAX_HEAD(4160) would underflow; prepad + linear
    and len - linear then wrapped, leaving skb->data 64 bytes beyond
    its 4,096-byte allocation.

  PPPoEject:
    pppoe_sendmsg() kept a pointer into the skb head across
    dev_hard_header(), even though a device callback could call
    pskb_expand_head() and free that head. Blocking the payload copy on
    FUSE while adding the first GRE/IP6GRE port to an empty team or
    bonding device triggered the reallocation, effectively ejecting the
    old skb head while PPPoE still held a pointer into it. The
    subsequent header and length writes used that stale pointer.

  DiagSpill:
    An SCTP association can have 65,536 peer transports, but
    transport_count is 16 bits and the 65,536th transport wrapped it
    to zero. sctp_diag then reserved no peer payload but copied the full
    list, spilling about 8 MiB past the end of the Netlink response.

Affected upstream kernels:

  The versions below are, again, for the underlying bugs, not the
  full-root PoCs, which have some additional dependencies:

  DirtyAH6:
    2.6.12–5.9: all releases
    5.10.0–5.10.268; 5.11–5.14: all releases
    5.15.0–5.15.219; 5.16–6.0: all releases
    6.1.0–6.1.186; 6.2–6.5: all releases
    6.6.0–6.6.155; 6.7–6.11: all releases
    6.12.0–6.12.107; 6.13–6.17: all releases
    6.18.0–6.18.48; 6.19–7.0: all releases
    7.1.0–7.1.12; 7.2.0–7.2.2

  TUNderflow:
    4.6–5.9: all releases
    5.10.0–5.10.269; 5.11–5.14: all releases
    5.15.0–5.15.220; 5.16–6.0: all releases
    6.1.0–6.1.187; 6.2–6.5: all releases
    6.6.0–6.6.156; 6.7–6.11: all releases
    6.12.0–6.12.108; 6.13–6.17: all releases
    6.18.0–6.18.49; 6.19–7.0: all releases
    7.1.0–7.1.13; 7.2.0–7.2.3

  PPPoEject:
    2.6.12–5.9: all releases
    5.10.0–5.10.264; 5.11–5.14: all releases
    5.15.0–5.15.215; 5.16–6.0: all releases
    6.1.0–6.1.182; 6.2–6.5: all releases
    6.6.0–6.6.147; 6.7–6.11: all releases
    6.12.0–6.12.100; 6.13–6.17: all releases
    6.18.0–6.18.41; 6.19–7.0: all releases
    7.1.0–7.1.5

  DiagSpill:
    4.7–5.9: all releases
    5.10.0–5.10.264; 5.11–5.14: all releases
    5.15.0–5.15.215; 5.16–6.0: all releases
    6.1.0–6.1.182; 6.2–6.5: all releases
    6.6.0–6.6.150; 6.7–6.11: all releases
    6.12.0–6.12.102; 6.13–6.17: all releases
    6.18.0–6.18.43; 6.19–7.0: all releases
    7.1.0–7.1.7

Immediate-term mitigations (aside from using updated kernels):
  - Disabling unprivileged user namespaces removes the standard
    ordinary-user path to the first three vulns, though it doesn't
    protect against appropriately-CAP'd containers/other processes;
    DiagSpill would still remain reachable too.
  - Disable AH6, TUN, PPPoE, and/or SCTP/sctp_diag if unused.

Full writeup:
  https://heyitsas.im/posts/lpe-quartet/

PoCs for validation:

  https://github.com/manizada/DirtyAH6
  https://github.com/manizada/TUNderflow
  https://github.com/manizada/PPPoEject
  https://github.com/manizada/DiagSpill

  Note that while the LPEs reproduce across a range of distros/kernels,
  the PoCs are targeted at just a handful, as each target often requires
  custom derivation/grooming.

Thanks,
-Asim Manizada
