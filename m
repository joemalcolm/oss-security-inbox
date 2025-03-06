Received: (qmail 4033 invoked by uid 550); 6 Mar 2025 04:49:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3462 invoked from network); 6 Mar 2025 04:48:57 -0000
Date: Thu, 6 Mar 2025 05:48:56 +0100
From: Solar Designer <solar@openwall.com>
To: Andrew Cooper <andrew.cooper3@citrix.com>
Cc: oss-security@lists.openwall.com
Message-ID: <20250306044856.GA6417@openwall.com>
References: <b3afc964-2840-4583-bb39-e05d390d3e55@citrix.com> <20250306031513.GA4873@openwall.com> <b21e9116-4108-4d52-b3b0-8c1e96486888@citrix.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <b21e9116-4108-4d52-b3b0-8c1e96486888@citrix.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] Xen Security Notice 2 (CVE-2024-35347) AMD CPU Microcode Signature Verification Vulnerability

On Thu, Mar 06, 2025 at 04:11:25AM +0000, Andrew Cooper wrote:
> On 06/03/2025 3:15 am, Solar Designer wrote:
> > Maybe you can also clarify what Xen's threat model is here, and how this
> > mitigation fits into it?
> >
> > Specifically, what are "Xen's microcode loading capabilities" and are
> > they in any way more exposed than the host system's root account?  Even
> > with Xen's mitigation above, host root can still load microcode without
> > Xen involvement, right?  Unless you block (at least) MSR access and
> > kernel module loading?
> 
> First of all, there's an equivalent change in Linux.
> 
> https://web.git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=bb2281fb05e50108ce95c43ab7e701ee564565c8

Oh, I had missed that, thanks!

> [...] 3rd party repositories of microcode repositories ripped
> out of firmware exist, there is a small but known usergroup who take
> microcode from a 3rd party source.
> 
> As of today, anyone can make an arbitrary malicious microcode that will
> load on Zen1-4 CPUs.
> 
> This issue wins points for spite, because the highest risk users are the
> ones who were taking proactive steps to try and improve their security,
> betting that AMD's patchloader crypto was sound.

OK, so this is to protect legitimate sysadmins from loading malicious
microcode inadvertently or via a supply chain attack.  Makes sense.

> Under Host UEFI Secure Boot, there is a security boundary between kernel
> code and root.  Part of the requirement is "no unsigned code running
> privileged", and while this is technically a grey area (the malicious
> blob is signed; it's just not signed by AMD), it's also easy to argue
> that root definitely shouldn't be able to load a malicious microcode,
> just like it shouldn't be able to swap out the kernel with an unsigned
> one and reboot.

Yes, but can't Xen's and the kernel's new protections be bypassed by MSR
access via /dev/cpu/*/msr?  The AMD microcode loader released by Google
now doesn't appear to require more than that:

https://github.com/google/security-research/blob/master/pocs/cpus/entrysign/zentool/loader.c

> In Xen we're working towards properly supporting UEFI Secure Boot. 
> We're not there yet (there's a lot of technical debt to overcome), hence
> why this isn't a full-blown XSA.
> 
> All of that said, it's also likely that there are a lot of vulnerable
> but uncompromised systems.  These measures in Xen and Linux are a
> stopgap; a bit of extra defence in depth.  They're certainly not perfect.

OK.  Thanks again,

Alexander
