X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/31/17
Message-ID: <CAAnjWmLA73JDmfqCn79O4VruSH4XMkC863P4B=iBK2_Nwf9E-A@mail.gmail.com>
Date: Fri, 31 Jul 2026 19:16:13 -0400
From: Kevin Riggle <kevinr@...plexsystems.group>
To: oss-security@...ts.openwall.com
Subject: Re: OVSwrap (CVE-2026-64531): Linux kernel/OVS local root vulnerability
Content-Type: text/plain; charset=utf-8

Does anybody have any color as to why Ubuntu hasn't picked this up
yet?  Usually they're good about picking up the CVE even if they don't
have a fix in place yet.  If as is claimed in the report both 22.04
and 24.04 are vulnerable in default configuration out of the box, I
would expect the CVE to be listed on https://ubuntu.com/security/ but
it doesn't show up in search results and
https://ubuntu.com/security/CVE-2026-64531 returns a 504 Gateway
Timeout.  Is there some disagreement as to the severity or
exploitability of the vulnerability or are they just overloaded?

(Unrelatedly, the Ubuntu security site has been very flaky for me
lately and even CVE pages that I know exist have been timing out on
me.  What's going on over there?  Everybody who uses Ubuntu relies
heavily on the Ubuntu security team, and I'm very worried about folks
if we can't keep infrastructure up and we're likely burning people
out.)

- Kevin


On Tue, Jul 28, 2026 at 6:06 AM manizada <manizada@...me> wrote:
>
> Hi folks,
>
> Emailing here now that the embargo agreed upon with linux-distros@ has
> expired.
>
> Flagging a local root vulnerability in the Linux kernel's Open vSwitch
> datapath (originally reported to security@...nel.org and OVS maintainers on
> Jun 19). The fix is now public and has shipped in the relevant stable
> trees:
>
> 3f1f75536668 ("net: openvswitch: reject oversized nested action attrs")
>
> The first fixed upstream stable releases are 5.15.212, 6.1.178, 6.6.145,
> 6.12.97, 6.18.40, and 7.1.5.
>
> Impact: Unprivileged user -> root code exec on affected systems where:
>   - OVS kernel datapath and conntrack/FTP-helper support are present, and
>   - unprivileged user/network namespaces are enabled, or the attacker
>     otherwise has CAP_NET_ADMIN over an attacker-controlled network
>     namespace.
>
> This affects many distros in stock config via unprivileged user namespaces.
> AppArmor/SELinux do not block the exploit once the attacker has the
> required CAP_NET_ADMIN. Note that the nature of the bug makes it reachable
> from a container with an appropriate CAP_NET_ADMIN, but I have not
> validated the container escape possibility.
>
> Bug:
>   Open vSwitch validates a userspace action list, then rewrites some
>   actions into a larger internal sw_flow_actions stream. The generated
>   actions are stored as Netlink attributes, whose nla_len field is only 16
>   bits wide.
>
>   A March 2025 change removed the old 32 KiB cap on the total generated
>   action stream, allowing the total stream to validly exceed 64 KiB, but
>   exposing a pre-existing missing check on individual nested attributes.
>
>   An attacker can submit a valid action -- e.g., a CLONE -- containing
>   hundreds of small conntrack actions. The kernel expands them until the
>   generated CLONE exceeds 65,535 bytes, then stores that length in the
>   16-bit nla_len, causing it to wrap to a small value. Later dump/free
>   consumers trust the wrapped length and resume parsing from inside the
>   generated conntrack data.
>
>   Conntrack labels and timeout names are attacker-controlled, so fake
>   OUTPUT and SET actions can be planted exactly where parsing resumes. The
>   PoC turns those fake actions into a kernel pointer leak, a kernel-memory
>   read, and a targeted decrement primitive, then corrupts a host process's
>   credentials and writes a sudoers rule for root code execution.
>
> Affected distros:
>   Below is a summary of the tested distros. The full table, including cases
>   where available vendor kernels are unaffected or stock policy blocks
>   exploitation, is in the attachment (and in an easier-to-read format in
>   the writeup linked below).
>
>   Stock-default exploitable distros
>     (an affected regular-track kernel is installed + OVS/conntrack support
>     is present + unprivileged namespaces are permitted by default):
>
>     - AlmaLinux 9.7 Workstation/Azure cloud, 9.8, 10.1 Workstation/Azure
>       cloud, and 10.2 x86-64/x86-64-v2
>     - Alpine Linux 3.22.4/3.23.4/3.24.1 Cloud and
>       3.22.5/3.23.5/3.24.1 LTS/virt
>     - Amazon Linux 2023 KVM (6.1/6.12/6.18 kernel tracks)
>     - Arch Linux monthly (linux/linux-lts/linux-zen)
>     - CentOS Stream 9 Cinnamon/GNOME/KDE/MATE/XFCE and 10 GNOME/KDE
>     - Debian 12/13
>     - Fedora 40 Workstation/Server after an ordinary same-track update
>       (the stock ISO kernel is unaffected)
>     - Fedora 41 Workstation/Server after an ordinary same-track update
>       (the stock ISO kernel is unaffected)
>     - Fedora 42/43/44 Workstation/Server
>     - Gentoo amd64 cloud image and stable gentoo-kernel-bin
>       6.1/6.6/6.12/6.18 branches
>     - Kali Linux 2026.1
>     - Linux Mint 22.3 Cinnamon
>     - NixOS 24.11/25.05/25.11/26.05
>     - openSUSE Tumbleweed GNOME/KDE
>     - Pop!_OS 22.04 Intel/24.04 Generic
>     - Rocky Linux 9/10 KDE/Workstation/Workstation Lite
>     - Ubuntu 22.04 Desktop minimal/full and Server
>     - Ubuntu 24.04 Desktop minimal/full and Server
>
>   Exploitable after the listed non-default change, with no other default
>   config changes:
>     - Arch Linux monthly linux-hardened
>       (set kernel.unprivileged_userns_clone=1, disabling the hardening)
>     - Linux Mint 21.3 Cinnamon
>       (install the optional linux-generic-hwe-22.04 kernel track)
>     - Oracle Linux 8/9/10 KVM
>       (install and load the missing OVS/conntrack module packages)
>     - Ubuntu 26.04 Desktop minimal/full, Server, and
>       generic/AWS/Azure/GCP/GKE/Oracle cloud kernel tracks
>       (set kernel.apparmor_restrict_unprivileged_userns=0)
>
> Immediate-term mitigations (aside from backporting the kernel fix):
>   - Unloading the openvswitch module and blocking it from loading if OVS is
>     not required (assuming it is not built into the kernel)
>   - Disabling unprivileged user namespaces (though this does not block the
>     potential container-escape path described above)
>   - Using the emergency BPF mitigation included with the PoC if OVS and
>     unprivileged namespaces must remain available.
>
> The issue is tracked under CVE-2026-64531.
>
> Full writeup:
>   https://heyitsas.im/posts/ovswrap
>
> PoC for validation; BPF mitigation:
>   https://github.com/manizada/OVSwrap
>
>
> Thanks,
> -Asim Manizada



-- 
Kevin Riggle - Principal, Complex Systems Group LLC
he/him • Brooklyn, NY, USA • Eastern Time
https://complexsystems.group • https://calendly.com/kevinriggle/coffee
