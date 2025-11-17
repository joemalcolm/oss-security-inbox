Received: (qmail 1969 invoked by uid 550); 17 Nov 2025 13:19:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 19874 invoked from network); 17 Nov 2025 13:18:00 -0000
Date: Mon, 17 Nov 2025 14:17:08 +0100
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20251117131708.GA14837@openwall.com>
References: <70e25a3d-7652-44da-8e4d-4e0a2e3a7a63@schafweide.org> <a6aa04d0-eb96-4d87-b7d4-b37838b05ce0@oracle.com> <aRdpw5ss1eltT1FV@inutil.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <aRdpw5ss1eltT1FV@inutil.org>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] CVE-2025-40300 / VMScape

Hi,

On Fri, Nov 14, 2025 at 08:48:44AM +0100, Bjoern Franke wrote:
> I stumbled at work upon CVE-2025-40300 (as it caused Ubuntus USN-7860-1)
> and was wondering that it wasn't mentioned on this list. Usually CVEs
> are posted here before some distro specific fixes appear.

Thank you for bringing this up, Bjoern!  You and others posting stuff to
here is how it gets here, obviously.  Sometimes the researchers or/and
upstream projects post, other times it's up to the rest of us to post.
In this case, you could have done better by including actual detail in
your message, so maybe next time, please?

VMScape was publicly disclosed in September, so two months ago.

The main page for VMScape from the researchers at ETH Zurich is:

https://comsec.ethz.ch/research/microarch/vmscape-exposing-and-exploiting-incomplete-branch-predictor-isolation-in-cloud-environments/

It summarizes the issue as follows:

> VMScape (CVE-2025-40300) brings Spectre branch target injection
> (Spectre-BTI) to the cloud, revealing a critical gap in how branch
> predictor states are isolated in virtualized environments. Our
> systematic analysis of protection-domain isolation shows that current
> mechanisms are too coarse-grained: on all AMD Zen CPUs, including the
> latest Zen 5, the branch predictor cannot distinguish between host and
> guest execution, enabling practical cross-virtualization BTI (vBTI)
> attack primitives. Although Intel's recent CPUs offer better isolation,
> gaps still exist.
> 
> Using one of these vBTI primitives, we built an end-to-end exploit
> called VMScape. VMScape allows a malicious KVM guest to leak sensitive
> information such as encryption/decryption keys from a userspace
> hypervisor such as QEMU.

The researchers also released artefacts:

https://github.com/comsec-group/vmscape

> e2e Exploit VMScape: The end-to-end exploit leaking QEMU secrets on
> Zen 4 and Zen 5, as described in our §8 of our paper
> 
> vBTI Analysis: The systematic analysis testing domain isolation in
> virtualised environments, as described in §5 of our paper
> 
> Benchmarks: Our scripts to benchmark the mitigations, as described
> in §9.2 of our paper
> 
> uARF: Our custom reverse-engineering and exploitation library.

Information on VMScape and its mitigations is also included in
Documentation/admin-guide/hw-vuln/vmscape.rst in the Linux kernel tree:

https://docs.kernel.org/admin-guide/hw-vuln/vmscape.html

> VMSCAPE is a vulnerability that may allow a guest to influence the branch
> prediction in host userspace. It particularly affects hypervisors like QEMU.
> 
> Even if a hypervisor may not have any sensitive data like disk encryption keys,
> guest-userspace may be able to attack the guest-kernel using the hypervisor as
> a confused deputy.
> 
> Affected processors
> -------------------
> 
> The following CPU families are affected by VMSCAPE:
> 
> **Intel processors:**
>   - Skylake generation (Parts without Enhanced-IBRS)
>   - Cascade Lake generation - (Parts affected by ITS guest/host separation)
>   - Alder Lake and newer (Parts affected by BHI)
> 
> Note that, BHI affected parts that use BHB clearing software mitigation e.g.
> Icelake are not vulnerable to VMSCAPE.
> 
> **AMD processors:**
>   - Zen series (families 0x17, 0x19, 0x1a)
> 
> ** Hygon processors:**
>  - Family 0x18
> 
> Mitigation
> ----------
> 
> Conditional IBPB
> ----------------
> 
> Kernel tracks when a CPU has run a potentially malicious guest and issues an
> IBPB before the first exit to userspace after VM-exit. If userspace did not run
> between VM-exit and the next VM-entry, no IBPB is issued.
> 
> Note that the existing userspace mitigation against Spectre-v2 is effective in
> protecting the userspace. They are insufficient to protect the userspace VMMs
> from a malicious guest. This is because Spectre-v2 mitigations are applied at
> context switch time, while the userspace VMM can run after a VM-exit without a
> context switch.
> 
> Vulnerability enumeration and mitigation is not applied inside a guest. This is
> because nested hypervisors should already be deploying IBPB to isolate
> themselves from nested guests.
> 
> SMT considerations
> ------------------
> 
> When Simultaneous Multi-Threading (SMT) is enabled, hypervisors can be
> vulnerable to cross-thread attacks. For complete protection against VMSCAPE
> attacks in SMT environments, STIBP should be enabled.
> 
> The kernel will issue a warning if SMT is enabled without adequate STIBP
> protection. Warning is not issued when:
> 
> - SMT is disabled
> - STIBP is enabled system-wide
> - Intel eIBRS is enabled (which implies STIBP protection)
> 
> System information and options
> ------------------------------
> 
> The sysfs file showing VMSCAPE mitigation status is:
> 
>   /sys/devices/system/cpu/vulnerabilities/vmscape
[...]
> The mitigation can be controlled via the ``vmscape=`` command line parameter

On Fri, Nov 14, 2025 at 09:01:01AM -0800, Alan Coopersmith wrote:
> The CPU vendors have their own methods for alerting OS & Hypervisor makers of
> CPU-level security issues in advance of publication, that don't flow through
> the distros lists or this list, so fixes for those often happen without any
> notice here.

Yes, and the embargoes for CPU-level security issues are typically way
longer than distros list 14 days maximum.  Maybe they could nevertheless
be brought to distros when it's certain that no more than 14 days remain
until public disclosure and there's something reasonable the distros may
do within the remaining days, but so far this is rarely done and I think
it's unlikely that distros would reasonably act on such pre-disclosure.
Regardless, such issues should ideally also be brought to oss-security
once public, but again so far this is rarely done except indirectly via
Xen advisories.

> For other CVEs, it really depends on whether the project includes this list
> in their notification process, or some volunteer notices them and forwards
> the information to the list.  Many still slip through the cracks.

Yes, we need more volunteers!

On Fri, Nov 14, 2025 at 05:41:23PM +0000, Moritz Mühlenhoff wrote:
> Most major CPU architecture issues have reached the list via the excellent Xen
> advisories (which are also posted to this list).
> 
> But in the case of CVE-2025-40300, Xen isn't affected
> (https://virtualize.sh/blog/vmscape-and-why-xen-dodged-it/), so there was never
> a respective Xen advisory.

A comment on the blog post above posted by its author:

> Olivier Lambert - 29 Sep
> 
> What makes this vulnerability harder to exploit on Xen is that there's
> no direct guest->Dom0 primitive. Communication goes through asynchronous
> mechanisms (like ring buffers), whereas on KVM a VMEXIT often triggers
> QEMU directly to emulate something.
> 
> That difference makes it far less likely for emulation to run on the
> same CPU in Xen compared to KVM. On top of that, Dom0 doesn't have
> unrestricted access to host memory the way Linux/KVM does.
> 
> In short: this is a targeted attack that relies on KVM (+QEMU)
> implementation details, and the same path simply doesn't exist on Xen.

Maybe this is too much to expect from volunteers, but what I posted
above illustrates the kind of detail I'd like to see brought to here.

Alexander
