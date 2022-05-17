Received: (qmail 23613 invoked by uid 550); 17 May 2022 12:25:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5199 invoked from network); 17 May 2022 12:13:26 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1652789592;
	bh=kV1vqUzkLjdjiaLiFjmMwOID1msr7AjWL9zVaFEllYw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:In-Reply-To;
	b=W+b1LrtAEQ/lKbKoQ+TmFYsB38/MH96uSBvOz69eFT12pVqRw9LqQOCxLpDVBQLeB
	 e0TZfuWkYpfV8RAJFcDtb0xFr2fUKQ5r7ZgADKfKB+ZiIf9Xrj+b2kiIv1S+Xd8wXk
	 E0QAh1uPqn4bI3LG4MAY1CpHNESpCTrIVmTX8cjPNH6E0ywJncf6vG4zBQ+a98V2BD
	 ywzeAKSRFQv18BCR/QFLcO/2jkg6C3AGy0J62hFqqDWMIeYJpH32nmbjP4f3qtYcji
	 5wbgAMIrriXlhCi22LLMocEXmj3vprhpkY4W4JXJaFc42gkOoR30Kt0W3MTKsMjtbJ
	 F4uMVmfTZcvuQ==
Date: Tue, 17 May 2022 09:13:08 -0300
From: Thadeu Lima de Souza Cascardo <cascardo@canonical.com>
To: oss-security@lists.openwall.com
Cc: Seth Arnold <seth.arnold@canonical.com>
Message-ID: <YoORVO2BbBDdjyd2@quatroqueijos>
References: <20220517033033.GA3403712@millbarge>
 <YoOCmBqfouvgbEX0@zx2c4.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YoOCmBqfouvgbEX0@zx2c4.com>
Subject: Re: [oss-security] linux-distros list policy and Linux kernel

On Tue, May 17, 2022 at 01:10:16PM +0200, Jason A. Donenfeld wrote:
[...] 
> This brings us back to the original topic of this (sub-)thread: do
> public fixes make security vulnerabilities manifest to the public? I
> guess it depends on who you consider to be the public. If you're
> speaking from the perspective of placating customers and taking care of
> some commercial bottom line, the answer is no. No public PR situation
> coming your way, so no work to be done, vulnerability doesn't exist yet.
> But if you're speaking from the perspective of whether attackers now are
> aware of the bug and can write exploits for it -- that is, a real threat
> model -- then the answer is obviously yes, if the fix is public, the bug
> is public.
> 
> So when I read in this thread calls for extending embargoes until the
> vulnerability is "disclosed" in some sort of announcement (that is, PR),
> rather than just until the public git fix, it seems plain that the end
> goal is a messaging or communication one, rather than a security one. On
> the surface, delaying the release of a vulnerability until it's had time
> to reach customer systems sounds like a good idea. But zoom in a little
> bit and you quickly realize that the vulnerability has *already* been
> released to attackers who read commit logs, and the thing we're talking
> about delaying is an official announcement. It turns out, attackers
> don't care about your official announcements; the marketing team does.
> 
> And as I understand it, the Openwall mailing lists have never been about
> enabling companies to better control their messaging. They've been about
> a deterministic embargo & disclosure process, to strike the right
> balance of letting people coordinate privately when needed, and then
> letting various parties make the best decisions they can once the cat is
> out of the bag. Should the distros@ policy change to be more PR-friendly,
> or should it stay true to its security policy ideals?
> 
> Jason
> 
> [1] https://git.kernel.org/pub/scm/linux/kernel/git/akpm/mm.git/commit/?id=2505a981114dcb715f8977b8433f7540854851d8

Hey, Jason.

Lots of good discussion points there, but let me focus on these last ones, as I
think I am able to address them better than the others. Thanks.

Notice this is my personal opinion, having been a linux-distros member list for
around a year or a bit less.

I think you are taking this backwards. The linux-distros policy is not that the
fix should be kept private until there is a security disclosure, but that the
security implications (that were disclosed to linux-distros) be made public as
soon as the fix is public.

It is about communication, but not only communication. It is also about process
and balancing stability and security.

If distros are supposed to include many different fixes in a very short time
frame, just in order to hide the security implications of a fix, there are
chances of other things breaking because: 1) there are many changes; 2) there
was a short time to get them tested. Don't get this wrong. I also agree that a
good strategy is to release as many fixes as are identified to go to stable@ as
often as possible. But doing it weekly is not feasible for everyone out there.

And if distros ship a new kernel release with a single fix without mentioning
any security implications, honestly, we are already shouting out to attackers:
"hey, we decided this was important enough to include this single fix, look at
that!". And it looks like distros are breaking an embargo that was requested.

I may be wrong on this, but I have the impression that disclosures are on the
hands of the researchers/reporters. They are doing the work you described,
going through fixes, syzkaller and other bug reports, and evaluating their
security implications. Then, they go to security@kernel.org and the policy, as
we mentioned, is that the security implications are not disclosed unless the
reporter does it. Then, linux-distros/distros has the policy that whatever is
posted there must be disclosed to oss-sec after up to 14 days. But it is still
the reporter that does it. I think it is important that we are aware of that in
order to find out how we could get this better or discuss if we should do it at
all.

And the status quo today is this: the reporter is the one who does the
disclosure, distros won't ship a single fix after they have been told about a
security vulnerability (and asked to not communicate its security implications)
without a Coordinated Release Date, and distros won't ship hundreds or
thousands of fixes in a short time frame just in order to release a security
fix and yet hide the security implications.

As I read your last question, and recall the initial message that started this
discussion, I think people were being true to distros@ security policy ideals
when it was asked that reports be made public as fixes were already public.

Cascardo.
