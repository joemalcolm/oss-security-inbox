X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/24/1
Message-ID: <20260824043933.GA12622@openwall.com>
Date: Mon, 24 Aug 2026 06:39:33 +0200
From: Solar Designer <solar@...nwall.com>
To: oss-security@...ts.openwall.com
Cc: Fabiano Fidencio <ffidencio@...dia.com>
Subject: Re: Vulnerability in Kata Containers runtimes (both rust and go) (CVE-2026-50540)
Content-Type: text/plain; charset=utf-8

Hi,

Fabiano had kindly brought this to linux-distros on July 11 and a public
disclosure date of 2026-07-20 was set, but unfortunately we failed to
bring this to oss-security on that date and overlooked this fact until I
went to process the (linux-)distros list statistics for July.

On Sun, Aug 23, 2026 at 06:07:28PM +0000, Fabiano Fidencio wrote:
> The CVE-2026-50540 has been made public on 2026-07-20, and is part of the Kata Containers 4.0.0

Thank you Fabiano for posting this.  We need to include actual detail,
which I'll try to add by quoting 3 messages from the linux-distros
thread below my signature.  It could have been better to post this as
one up-to-date disclosure, but these old messages is all I have.

Alexander

On Sat, Jul 11, 2026 at 09:18:15AM +0000, Fabiano Fidencio wrote:
> This is an advance warning of a vulnerability discovered in Kata Containers, to give you, as downstream stakeholders, a chance to coordinate the release of fixes and reduce the vulnerability window. Please treat the following information as confidential until the proposed public disclosure date.
> 
> A vulnerability has been reported in the Kata Containers configuration loading path in both the Rust and Go runtimes.
> 
> Both runtimes accept the sandbox configuration file path from the pod annotation io.katacontainers.config_path. This path is then passed to the TOML configuration loader without sufficient validation or restriction.
> 
> An authenticated pod user who is able to set pod annotations may point io.katacontainers.config_path at an arbitrary TOML configuration file available on the host. Since the Kata configuration controls privileged runtime settings, including hypervisor and virtio-fs daemon binary paths, a malicious configuration may cause attacker-controlled binaries to be executed as root on the host when the sandbox starts.
> 
> This has been classified as improper input validation, CWE-20.
> 
> Affected versions: Kata Containers versions up to and including 3.32.0 are reported as affected.
> 
> Affected components:
> 
> kata-runtime-rs (Rust runtime)
> kata-runtime (Go runtime)
> Impact: Successful exploitation may result in host-level code execution as root. The highest risk is in multi-tenant Kubernetes environments where users can create pods with arbitrary annotations and can place or reference a configuration file at a host-accessible path.
> 
> Attack requirements: The attacker must be able to create a pod with the io.katacontainers.config_path annotation and must be able to reference a TOML configuration file from a path visible to the host runtime.
> 
> Suggested mitigation: Reject or ignore the io.katacontainers.config_path annotation by default, or restrict accepted configuration paths to an explicit set of trusted directories. As a temporary workaround, cluster operators may use an admission webhook or policy engine to reject pods that set the io.katacontainers.config_path annotation.
> 
> Proposed patch: See attached patches. Unless a flaw is discovered in them, these patches will be merged to their corresponding branches on the public disclosure date.
> 
> CVE: CVE-2026-50540
> 
> Proposed public disclosure date/time: 2026-07-20, 1200UTC Please do not make the issue public (or release public patches) before this coordinated embargo date.
> 
> Original private report: https://github.com/kata-containers/kata-containers/security/advisories/GHSA-mp2j-xm59-qfgw For access to read and comment on the security report, please reply to me with your GitHub username and I will subscribe you.
> 
> --
> Fabiano Fid??ncio, Kata Containers Vulnerability Management Team

On Wed, Jul 22, 2026 at 01:08:31PM -0300, Marco Benatto wrote:
> Hello Fabiano,
> 
> I see https://github.com/kata-containers/kata-containers/security/advisories/GHSA-mp2j-xm59-qfgw
> is public right now however it only mentions the rust crate and
> doesn't include
> the golang one.
> 
> I see the repo has
> https://github.com/kata-containers/kata-containers/commit/03cc670076099530f4e1e9cb22849afdafb20f65
> for the runtime which I think may be the golang fix.
> 
> GIven that, may we assume those who only ships the golang runtime are
> allowed to make it public on our side as well, since it's grouped all
> under the same CVE?
> 
> Thanks,
> 
> Marco Benatto
> Red Hat Product Security

On Wed, Jul 22, 2026 at 04:23:21PM +0000, Fabiano Fidencio wrote:
> Marco,
> 
> Yes, your assumption is correct.
> The CVE affected both Golang and rust runtime, and the fixes applied are for both of them.
> 
> Best Regards
> --
> Fabiano Fidencio
