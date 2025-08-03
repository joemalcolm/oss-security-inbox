Received: (qmail 15960 invoked by uid 550); 3 Aug 2025 01:58:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 14129 invoked from network); 3 Aug 2025 01:58:20 -0000
Date: Sun, 3 Aug 2025 03:55:43 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Cc: Van1sh <van1sh@pm.me>, Willy Tarreau <w@1wt.eu>
Message-ID: <20250803015543.GA4607@openwall.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.4.2.3i
Subject: [oss-security] Linux kernel: eBPF vulnerabilities

Hi,

Van1sh, CC'ed here, brought a set of 11 Linux kernel eBPF subsystem
vulnerabilities to the kernel security team and linux-distros at once on
July 19.  Such early notification to linux-distros of issues not yet
handled by the kernel security team is currently (and has been for a
while) against guidelines from both the kernel and linux-distros:

https://docs.kernel.org/process/security-bugs.html

> the kernel security team strongly recommends that as a reporter
> of a potential security issue you DO NOT contact the "linux-distros"
> mailing list UNTIL a fix is accepted by the affected code's maintainers
> and you have read the distros wiki page above and you fully understand
> the requirements that contacting "linux-distros" will impose on you and
> the kernel community.  This also means that in general it doesn't make
> sense to Cc: both lists at once, except maybe for coordination if and
> while an accepted fix has not yet been merged.  In other words, until a
> fix is accepted do not Cc: "linux-distros", and after it's merged do not
> Cc: the kernel security team.

https://oss-security.openwall.org/wiki/mailing-lists/distros#list-policy-and-instructions-for-reporters

> For Linux kernel issues, you must notify the kernel security team
> first, wait for the fix, and only then notify linux-distros or
> oss-security (depending on whether the information is still private or
> already public, as well as on issue severity).
> 
> The maximum acceptable embargo period for issues disclosed to these
> lists is 14 days.

Van1sh also seemed to suggest a 28-day embargo period.

So we immediately had a problem with the process.  Luckily, Van1sh's
message that reached linux-distros didn't actually contain what it calls
"Disclosure Package".  So only high-level summaries were included, not
vulnerability detail.  This is also what I am disclosing publicly here
on oss-security today, as we're just past the 14 days maximum now.

There was a little bit of discussion on linux-distros, and the most
important aspect is that distros and systems should make sure they set
(or keep the default of) kernel.unprivileged_bpf_disabled at 1 or 2,
which per the discussion fully removes the exposure of these issues.

Van1sh also recommends restricting access to kernel pointers and
symbols (which I assume the currently developed eBPF exploits use), and
monitoring such access, but as I understand this is a general best
practice and defense-in-depth (on top of not exposing access to eBPF in
the first place).

Documentation/admin-guide/sysctl/kernel.rst:

> unprivileged_bpf_disabled
> =========================
> 
> Writing 1 to this entry will disable unprivileged calls to ``bpf()``;
> once disabled, calling ``bpf()`` without ``CAP_SYS_ADMIN`` or ``CAP_BPF``
> will return ``-EPERM``. Once set to 1, this can't be cleared from the
> running kernel anymore.
> 
> Writing 2 to this entry will also disable unprivileged calls to ``bpf()``,
> however, an admin can still change this setting later on, if needed, by
> writing 0 or 1 to this entry.
> 
> If ``BPF_UNPRIV_DEFAULT_OFF`` is enabled in the kernel config, then this
> entry will default to 2 instead of 0.
> 
> = =============================================================
> 0 Unprivileged calls to ``bpf()`` are enabled
> 1 Unprivileged calls to ``bpf()`` are disabled without recovery
> 2 Unprivileged calls to ``bpf()`` are disabled
> = =============================================================

kernel/bpf/Kconfig:

> config BPF_UNPRIV_DEFAULT_OFF
>         bool "Disable unprivileged BPF by default"
>         default y
>         depends on BPF_SYSCALL
>         help
>           Disables unprivileged BPF by default by setting the corresponding
>           /proc/sys/kernel/unprivileged_bpf_disabled knob to 2. An admin can
>           still reenable it by setting it to 0 later on, or permanently
>           disable it by setting it to 1 (from which no other transition to
>           0 is possible anymore).
> 
>           Unprivileged BPF could be used to exploit certain potential
>           speculative execution side-channel vulnerabilities on unmitigated
>           affected hardware.
> 
>           If you are unsure how to answer this question, answer Y.

So these issues shouldn't currently be exposed by default.  I tried
asking if any distros present on the linux-distros list still have
unprivileged eBPF exposed by default, and no one spoke up.

As to getting the issues fixed, the only information communicated to
linux-distros was from Willy Tarreau that he transferred Van1sh's
message to the eBPF maintainers - which is appreciated!  It is not
surprising that such a wide variety of issues not exposed by default
will take quite a while to process during the summer vacations season.
Luckily, they're also not that important to review and fix individually.

Given all of this, I reluctantly decided not to make an exception here
(skipping today's disclosure or limiting it to even less info than was
on linux-distros), as doing so didn't seem to serve a useful purpose yet
it would keep further handling by linux-distros in limbo.  Now we're
done handling this on linux-distros, and any further developments should
be added to this oss-security thread instead.

Alexander

On Mon, Jul 28, 2025 at 05:29:15AM +0000, Van1sh wrote:
> based on the evaluation, this is an initial remediation guideline, that can significantly mitigate the risks.
> 
> ### 1. Complete BPF Lockdown (Recommended)
> ```bash
> # Block unprivileged BPF
> echo 1 > /proc/sys/kernel/unprivileged_bpf_disabled
> 
> # Restrict kernel symbol exposure
> echo 2 > /proc/sys/kernel/kptr_restrict
> 
> # Limit configuration disclosure
> chmod 600 /proc/sys/net/core/bpf_*
> chmod 600 /proc/sys/kernel/unprivileged_bpf_disabled
> ```
> 
> ### 2. Information Disclosure Controls
> ```bash
> # Restrict kallsyms access
> echo 1 > /proc/sys/kernel/kptr_restrict  # Hide symbol addresses
> echo 2 > /proc/sys/kernel/kptr_restrict  # Hide symbols completely
> 
> # Limit dmesg access
> echo 1 > /proc/sys/kernel/dmesg_restrict
> 
> # Secure BPF filesystem
> chmod 700 /sys/fs/bpf
> ```
> 
> ### 3. Monitoring and Detection
> ```bash
> # Monitor information access
> auditctl -w /proc/kallsyms -p r -k symbol_access
> auditctl -w /proc/sys/kernel/ -p r -k sysctl_access
> auditctl -w /sys/fs/bpf/ -p rwa -k bpf_filesystem
> ```

> the command are just example to make the point across.

On Sat, Jul 19, 2025 at 03:30:03AM +0000, Van1sh wrote:
> Morning Guys,
> FYI as previous email was not delivered??

> > Data: Il sabato 19 luglio 2025 05:17
> > Oggetto: eBPF Vulnerabilities - Responsible Disclosure

> > > Dear Linux Kernel Security Team,
> > > I am writing to report the discovery of two critical zero-day vulnerabilities in the Linux kernel eBPF subsystem. As Security Researcher and maintainer of the Leviathan project, I am committed to responsible disclosure and collaboration with the kernel community to address these serious security issues.
> > > 
> 
> > > ## Executive Summary
> > > 
> 
> > > I discovered eleven critical vulnerabilities in the eBPF subsystem that pose significant risks to system security:
> > > 
> 
> > > **Critical Priority (CVSS 8.5+):**
> > > 1. **ZD_005**: eBPF Verifier State Pruning Bypass (CVSS 8.8) - Enables complete privilege escalation from unprivileged user to root
> > > 2. **ZD_003**: eBPF Helper Function Validation Bypass (CVSS 7.5) - Allows arbitrary kernel memory disclosure
> > > 3. **ZD_010**: Speculative Execution Side-Channels (CVSS 8.2) - Kernel memory disclosure via timing attacks
> > > 4. **ZD_011**: Container Escape via Namespace Bypass (CVSS 8.6) - Complete container isolation bypass
> > > 
> 
> > > **High Priority (CVSS 7.0-8.4):**
> > > 5. **ZD_002**: JIT Code Generation Vulnerability (CVSS 7.8) - Memory corruption and code execution
> > > 6. **ZD_007**: Atomic Operations Memory Ordering (CVSS 7.4) - Race conditions and memory corruption
> > > 7. **ZD_001**: Verifier Bounds Check Bypass (CVSS 7.2) - Memory corruption through bounds bypass
> > > 8. **ZD_004**: Map Lifecycle Race Conditions (CVSS 7.6) - Use-after-free vulnerabilities
> > > 9. **ZD_012**: Trampoline Memory Corruption (CVSS 7.3) - Function pointer corruption
> > > 10. **ZD_013**: cgroup Security Bypass (CVSS 7.1) - Resource limit and security policy bypass
> > > 11. **ZD_009**: BTF Type Information Corruption (CVSS 6.8) - Type confusion and information disclosure
> > > 
> 
> > > These vulnerabilities have been thoroughly validated with proof-of-concept exploits achieving success rates ranging from 52% to 95% across kernel versions 5.4.x through 6.6.x. The vulnerabilities affect x86_64, ARM64, RISC-V, and PowerPC architectures and can be exploited by local users, with some requiring no special privileges.
> > > 
> 
> > > ## Vulnerability Impact
> > > 
> 
> > > ### Critical Vulnerabilities
> > > - **ZD_005 - Privilege Escalation**: Complete system compromise (root access) from unprivileged user
> > > - **ZD_003 - Information Disclosure**: Arbitrary kernel memory read, ASLR bypass, credential disclosure ??
> > > - **ZD_010 - Side-Channel Attacks**: Speculative execution exploitation for kernel memory disclosure
> > > - **ZD_011 - Container Escape**: Complete bypass of container isolation and namespace security
> > > 
> 
> > > ### High-Impact Vulnerabilities
> > > - **ZD_002 - JIT Compilation**: Memory corruption and code execution through compiler bugs
> > > - **ZD_007 - Atomic Operations**: Race conditions and memory corruption on multi-core systems
> > > - **ZD_001 - Bounds Check Bypass**: Memory corruption through verifier logic flaws
> > > - **ZD_004 - Map Race Conditions**: Use-after-free vulnerabilities in concurrent operations
> > > - **ZD_012 - Trampoline Corruption**: Function pointer corruption in eBPF trampolines
> > > - **ZD_013 - cgroup Bypass**: Resource limits and security policy circumvention
> > > - **ZD_009 - BTF Corruption**: Type confusion and metadata manipulation
> > > 
> 
> > > ### Affected Components
> > > - **Primary**: `kernel/bpf/verifier.c`, `kernel/bpf/helpers.c`, `kernel/bpf/core.c`, JIT compilers
> > > - **Secondary**: Container runtimes, cgroup subsystem, namespace isolation, speculative execution
> > > - **Attack Vectors**: Local unprivileged users, malicious containers, side-channel attacks
> > > 
> 
> > > ## Disclosure Package Contents
> > > 
> 
> > > This submission includes:
> > > 
> 
> > > - **Comprehensive Technical Reports**: Detailed analysis of all 11 vulnerabilities with root cause analysis and exploitation details
> > > - **Complete Proof-of-Concept Suite**: Functional exploit code demonstrating all vulnerabilities
> > > - **Automated Exploitation Framework**: Tools for variant generation and testing automation
> > > - **Suggested Mitigations**: Specific code patches and recommendations for all vulnerabilities
> > > - **Validation Documentation**: Success rate analysis and testing across multiple architectures
> > > 
> 
> > > ## Proposed Timeline
> > > 
> 
> > > We propose the following coordinated disclosure timeline:
> > > 
> 
> > > - **Day 0** (Today): Initial disclosure to security@kernel.org
> > > - **Day 7**: Acknowledgment and initial assessment from kernel team
> > > - **Day 7**: Technical collaboration on patch development
> > > - **Day 7**: Testing and validation of proposed fixes
> > > - **Day 7**: Public disclosure (adjustable based on fix readiness)
> > > 
> 
> > > We are committed to working closely with the kernel security team throughout this process and can adjust the timeline as needed to ensure proper remediation.
> > > 
> 
> > > ## Contact Information
> > > 
> 
> > > **Researcher**: van1sh
> > > **Email**:van1sh@pm.me
> > > **Secure Communication**: Available upon request ??
> > > **Project**: Leviathan Framework - eBPF Security Research
> > > 
> 
> > > ## Research Context
> > > 
> 
> > > These vulnerabilities were discovered as part of our comprehensive security analysis of the eBPF subsystem. The Leviathan Framework represents a systematic approach to identifying security issues in eBPF through automated testing, semantic analysis, and variant discovery techniques.
> > > 
> 
> > > Our research methodology combines:
> > > - Static analysis of eBPF verifier logic
> > > - Dynamic testing with sophisticated fuzzing techniques ??
> > > - Manual security review of critical code paths
> > > - Automated variant discovery for related vulnerabilities
> > > 
> 
> > > ## Immediate Actions Requested
> > > 
> 
> > > 1. **Acknowledgment** of this disclosure within 7 days
> > > 2. **Technical point of contact** assignment for collaboration
> > > 3. **Initial assessment** of the reported vulnerabilities
> > > 4. **Discussion of disclosure timeline** adjustments if needed
> > > 
> 
> > > ## Additional Information
> > > 
> 
> > > We have additional research findings and automated tools that may be valuable for improving eBPF security long-term. We are happy to share these resources and collaborate on broader security improvements beyond addressing these specific vulnerabilities.
> > > 
> 
> > > The attached technical reports contain detailed information needed for understanding and reproducing these issues. We have validated our findings across multiple kernel versions and architectures to ensure the reports are accurate and actionable.
> > > 
> 
> > > Thank you for your dedication to kernel security. We look forward to working with you to address these critical issues and improve the overall security of the eBPF subsystem.
> > > ??I also ask for the assigned CVE Numbers
> > > Best regards,
> > > 
> 
> > > van1sh
> > > July 19, 2025
