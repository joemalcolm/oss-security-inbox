Received: (qmail 32122 invoked by uid 550); 11 Sep 2022 17:10:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30659 invoked from network); 11 Sep 2022 17:09:38 -0000
Date: Sun, 11 Sep 2022 19:09:22 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Cc: "Anthony Liguori (aliguori)" <aliguori@amazon.com>, sandreim@amazon.com,
	Valentina Palmiotti <chompie@graplsecurity.com>
Message-ID: <20220911170922.GA20993@openwall.com>
References: <97042bbb-bf57-23e8-f1d9-75b95df5b9ff@amazon.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <97042bbb-bf57-23e8-f1d9-75b95df5b9ff@amazon.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] CVE-2019-18960: Firecracker v0.18.0 and v0.19.0 vsock buffer overflow

Hi,

FWIW, Valentina Palmiotti @chompie1337 and her colleagues at Grapl have
recently looked into exploiting the below vulnerability, and blogged
about it here:

https://www.graplsecurity.com/post/attacking-firecracker

The attempts so far have bumped into guard pages, some of unidentified
origin.  Maybe someone else will want to continue this research.

The blog post above includes a lot of other observations, not limited to
this one vulnerability and its exploitation, but also covering VMMs,
Firecracker vs. QEMU, Rust "unsafe" blocks, guard pages, hardening.

I guess further research could be to identify the source of all guard
pages observed, see if they're created consistently and reliably across
all platforms, harden that if not.  This could help mitigate some other
vulnerabilities, maybe in other Rust programs.

Alexander

On Tue, Dec 10, 2019 at 11:30:58AM +1100, sandreim@amazon.com wrote:
> We have identified an issue in the Firecracker v0.18.0 and v0.19.0 vsock
> implementation.
> 
> # Issue Description
> 
> A logical error in bounds checking performed on vsock virtio descriptors
> can be used by a malicious guest to read from and write to a segment of
> the host-side Firecracker process' heap address space, directly after
> the end of a guest memory region. For reads, the accessible segment's
> size is 64 KiB. For writes, the accessible segment is limited by the
> host Linux kernel to a size defined in /proc/sys/net/core/rmem_max. We
> expect the value of rmem_max to be on the order of a few hundred KiB to
> a few MiB.
> 
> # Impact
> 
> This will generally result in a segmentation fault, but remote code
> execution within the Firecracker host-side process context cannot be
> ruled out.
> 
> # Vulnerable Systems
> 
> Only Firecracker v0.18.0 and v0.19.0 are affected. Only Firecracker
> microVMs with configured vsock devices are affected, and only if one or
> more vsock devices are in active use by both host and guest.
> 
> # Mitigation
> 
> Patched binaries for the affected versions have been released as
> Firecracker v0.18.1 [1] and Firecracker v0.19.1 [2].
> If you are using Firecracker v0.18.0 or v0.19.0 , we recommend you apply
> the provided fix. If you are using Firecracker v0.17.0 or below, you do
> not need to take any action.
> In a remote code execution scenario, users running Firecracker in line
> with the recommended Production Host Setup will see the impact limited
> as follows: a malicious microVM guest that would manage to compromise
> the Firecracker VMM process would be restricted to running on the host
> as an unprivileged user, in a chroot and mount namespace isolated from
> the host's filesystem, in a separate pid namespace, in a separate
> network namespace, with system calls limited to Firecracker's seccomp
> whitelist, on a single NUMA node, and on a cgroups-limited number of CPU
> cores.
> 
> [1] https://github.com/firecracker-microvm/firecracker/releases/tag/v0.18.1
> [2] https://github.com/firecracker-microvm/firecracker/releases/tag/v0.19.1
> 
> Best Regards,
> Andrei on behalf of the Firecracker maintainers team.
> 
> 
> 
> 
> Amazon Development Center (Romania) S.R.L. registered office: 27A Sf. Lazar Street, UBC5, floor 2, Iasi, Iasi County, 700045, Romania. Registered in Romania. Registration number J22/2621/2005.
