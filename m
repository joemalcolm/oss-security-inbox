Received: (qmail 26341 invoked by uid 550); 4 Oct 2023 14:12:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20130 invoked from network); 4 Oct 2023 14:05:31 -0000
Date: Wed, 4 Oct 2023 16:05:26 +0200
From: Solar Designer <solar@openwall.com>
To: Andrew Cooper <andrew.cooper3@citrix.com>
Cc: oss-security@lists.openwall.com,
	"Xen. org security team" <security-team-members@xen.org>,
	t-jhofmann@microsoft.com, fournet@microsoft.com,
	boris.koepf@microsoft.com, e.vannacci@vu.nl
Message-ID: <20231004140526.GA27641@openwall.com>
References: <E1qko5Z-0003cF-KD@xenbits.xenproject.org> <20230925163652.GA6750@openwall.com> <70e568d7-9e09-a1a9-030f-40473447a619@citrix.com> <20230925182834.GA8247@openwall.com> <3241bf87-b01b-4b65-e972-f0cede9e1855@citrix.com> <20230926160943.GA12790@openwall.com> <3df9034c-6fab-141c-ad69-ce00df0b81f9@citrix.com> <20231003205825.GA24992@openwall.com> <4b386d20-6b24-427b-ac3f-2098cf402329@citrix.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4b386d20-6b24-427b-ac3f-2098cf402329@citrix.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] Xen Security Advisory 439 v1 (CVE-2023-20588) - x86/AMD: Divide speculative information leak

On Wed, Oct 04, 2023 at 02:10:59AM +0100, Andrew Cooper wrote:
> On 03/10/2023 9:58 pm, Solar Designer wrote:
> > However, this may be another reason to actually look into whether the
> > remainder also leaked, and whether the byte-sized form prevents that
> > leak despite of it not touching the architectural register where the
> > remainder would be stored by a preceding larger DIV.  I expect that
> > we're fine here - it's the divider unit's internal register and not the
> > architectural register that should matter - but worth making sure.  It
> > could also theoretically be e.g. some buffer registers in the middle,
> > where the byte-sized form wouldn't overwrite the full contents.
> 
> I've spent a while trying to reason about this...  I'm not sure I'm any
> the wiser, but here goes.

Thank you!  This is helpful, but unfortunately doesn't appear (or at
least not to me) to address the case of the remainder in its own
register being overwritten or not by a smaller DIV that doesn't produce
it in that register.  Of course, under the hood it's at least a rename
register rather than the RDX that programs see, and it's supposedly
getting a value copied from a DIV unit's internal register.  So the
question is probably about the latter register being overwritten or not.

The USENIX Security paper you referenced includes this:

> The source code, experiments, and executable leakage models are
> available at https://github.com/microsoft/sca-fuzzer

I think ideally one of us should come up with a single-process
reproducer (using code from that repo or otherwise), see if it "leaks"
the remainder, introduce a byte-sized DIV "mitigation" in it, and see if
that mitigation fully works or maybe not.

Alternatively, maybe the paper authors (CC'ed) have comments on this?

Alexander
