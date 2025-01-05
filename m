Received: (qmail 29865 invoked by uid 550); 5 Jan 2025 04:35:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 28132 invoked from network); 5 Jan 2025 04:34:53 -0000
Date: Sun, 5 Jan 2025 05:34:40 +0100
From: Solar Designer <solar@openwall.com>
To: =?iso-8859-2?Q?J=FCrgen_Gro=DF?= <jgross@suse.com>
Cc: David Woodhouse <dwmw2@infradead.org>,
	"Xen.org security team" <security@xen.org>,
	oss-security@lists.openwall.com,
	"Xen.org security team" <security-team-members@xen.org>
Message-ID: <20250105043440.GA4992@openwall.com>
References: <E1tNWXG-00E268-2p@xenbits.xenproject.org> <54c892eded2b4ebdda8ee1085c383178f44414ad.camel@infradead.org> <a3031e7d-fe9d-4db8-8ccd-923165c9af72@suse.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=iso-8859-2
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <a3031e7d-fe9d-4db8-8ccd-923165c9af72@suse.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] Xen Security Advisory 466 v3 (CVE-2024-53241) - Xen hypercall page unsafe against speculative attacks

Hi,

As oss-security moderator, I let this thread through up to and including
the message below, but not beyond, as further discussion went too far
into Xen development specifics.  Those interested in further replies may
see them e.g. here:

https://lists.xenproject.org/archives/html/xen-devel/2025-01/threads.html#00015

Alexander

On Thu, Jan 02, 2025 at 01:07:55PM +0100, Jürgen Groß wrote:
> On 23.12.24 15:24, David Woodhouse wrote:
> >On Tue, 2024-12-17 at 12:18 +0000, Xen.org security team wrote:
> >>              Xen Security Advisory CVE-2024-53241 / XSA-466
> >>                                 version 3
> >>
> >>          Xen hypercall page unsafe against speculative attacks
> >>
> >>UPDATES IN VERSION 3
> >>====================
> >>
> >>Update of patch 5, public release.
> >
> >Can't we even use the hypercall page early in boot? Surely we have to
> >know whether we're running on an Intel or AMD CPU before we get to the
> >point where we can enable any of the new control-flow integrity
> >support? Do we need to jump through those hoops do do that early
> >detection and setup?
> 
> The downside of this approach would be to have another variant to do
> hypercalls. So you'd have to replace the variant being able to use AMD
> or INTEL specific instructions with a function doing the hypercall via
> the hypercall page.
> 
> I'm planning to send patches for Xen and the kernel to add CPUID feature
> bits indicating which instruction to use. This will make life much easier.
> 
> >Enabling the hypercall page is also one of the two points where Xen
> >will 'latch' that the guest is 64-bit, which affects the layout of the
> >shared_info, vcpu_info and runstate structures.
> >
> >The other such latching point is when the guest sets
> >HVM_PARAM_CALLBACK_IRQ, and I *think* that should work in all
> >implementations of the Xen ABI (including QEMU/KVM and EC2). But would
> >want to test.
> >
> >But perhaps it wouldn't hurt for maximal compatibility for Linux to set
> >the hypercall page *anyway*, even if Linux doesn't then use it ??? or
> >only uses it during early boot?
> 
> I'm seeing potential problems with that approach when someone is using
> an out-of-tree module doing hypercalls.
> 
> With having the hypercall page present such a module would add a way to do
> speculative attacks, while deleting the hypercall page would result in a
> failure trying to load such a module.
> 
> 
> Juergen
