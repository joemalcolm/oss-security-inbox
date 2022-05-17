Received: (qmail 1124 invoked by uid 550); 17 May 2022 11:18:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27936 invoked from network); 17 May 2022 11:10:32 -0000
Authentication-Results: smtp.kernel.org;
	dkim=pass (1024-bit key) header.d=zx2c4.com header.i=@zx2c4.com header.b="c/azlysw"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zx2c4.com; s=20210105;
	t=1652785818;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=ngQdm8zkJLKYqw/oO7FzDs4Te8TM+7I0bD6/9BZ6OuQ=;
	b=c/azlysw41PVFJ09E2cBzTWsYktvETWm8h8FeMUaAv+ucRgIQyDq3bh04/k8jiPPOUzT+q
	6wp6qVzjV7QfMY3iAkOb1HIwL5p4vvOe5RQLj/vPfCrWdKtgRV4va86hLAvBRpGOSJiYbd
	vPVKJfGiQw9eZ/Ar/+z3mdQDqS36Ids=
Date: Tue, 17 May 2022 13:10:16 +0200
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
To: Seth Arnold <seth.arnold@canonical.com>
Cc: oss-security@lists.openwall.com
Message-ID: <YoOCmBqfouvgbEX0@zx2c4.com>
References: <20220517033033.GA3403712@millbarge>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20220517033033.GA3403712@millbarge>
Subject: Re: [oss-security] linux-distros list policy and Linux kernel

Hi Seth,

On Tue, May 17, 2022 at 03:30:33AM +0000, Seth Arnold wrote:
> If this accurately describes feelings held by Linux developers, perhaps we
> need larger changes. Ubuntu has (far too many) kernel trees and the only
> way we can keep track of the CVEs is via our break-fix lines that show
> when issues were introduced and when they were fixed. The Fixes: lines in
> commit messages are wonderful assistances here.
> 
> Given how much effort it takes me to assign CVEs for kernel issues, I've
> wondered before if we (me, us, the community as a whole, etc) ought to
> have a very standard and lightweight way to publish kernel CVEs, something
> that's not much more than the Fixes: lines already in the commits.
> 
> I know this discussion didn't start around assigning CVEs to kernel
> issues, but if we're missing more than we're handling, perhaps it ought to
> be part of the discussion.

I think playing CVEs with the kernel (and possibly other humongous
projects too) is in large part a fool's errand. Not all security bug
fixes go through some explicit security track that would result in a CVE
or other type of security identifier. And more importantly, it's often
difficult to assess whether a particular patch has security implications
or not.

To pick a random example, take a look at [1]. Does this fix a
vulnerability? It definitely fixes a crashing phone. Could you exploit
this to get execution somehow? Maybe those are obvious questions to some
people, but it's not immediately obvious to me without really digging
into it, and that's a lot of work.

But at the very least it fixes a bug (several, it appears). So it's
marked as `Cc: stable@` and has a `Fixes: ...` tag too, which means
eventually it'll wind up in one of Greg's trees and then maybe one of
your trees. All the while, the patch itself is sitting in Andrew's (new)
git repository. No secret embargo here.

In that sense, the stable@ tag will at least give you _something_, and
certainly way more than whatever stray CVEs have been assigned. But
stable@ is by no means perfect:

  - Many patches aren't marked as stable.
  - If a stable@ patch doesn't apply to a tree, it's usually up to the
    original patch author to backport it, and sometimes authors ignore
    those emails.
  - Sometimes stable@ patches bring in additional patches that weren't
    meant to be backported.
  - Sometimes a patch applies fine but is missing a prerequisite, which
    wasn't marked as stable.
  - And so on and so forth.

It's not like these problems happen all the time, and I suspect these
are just inherent limitations in the stable process when operating at
huge scale. Greg does a darn good job of this, especially when you
consider the huge amount of patches; it's remarkable he makes it work as
well as it does, considering the challenge. It'll just never be perfect.
But I'm pretty sure it's better than focusing on CVEs, as you've
suggested Canonical does.

Probably the more serious way of handling that would be to hire a team
of kernel security experts (read: not simply people who crank kernel
build scripts) who trawl through commit logs all day and actively follow
development in particular areas. And they'd be in charge of doing their
own analysis and classification on various commits. Super worried about
something falling through the cracks? Make two teams and have them
duplicate each other's work. Or three. Or four. It's expensive,
labor-intensive work. I'm not sure you're going to get that all for
"free" by just leaning on the stable process or leaning on CVEs or
whatever cheap "process shortcuts" appear to provide what you want
without the investment.

However, I really doubt you'll do the expensive thing in the end, not
just because what I suggested is impractical; actually, the grsec team
perhaps shows it can be done. I doubt it'll happen in the end because
it's not likely to support Canonical's commercial interests, which in
terms of security relate to *customers* getting scared about CVEs,
something that *customers* know about, so you have to address their
concerns to sell products, and deal in a currency they know about. Very
few customers know about or care about the implications of some obscure
zram mm-tree bug. But most "security minded" customers will pay for
something CVE-related instead. So I think playing the CVE game with
kernel security is much more about customer perception than anything
actually threat modeled.

This brings us back to the original topic of this (sub-)thread: do
public fixes make security vulnerabilities manifest to the public? I
guess it depends on who you consider to be the public. If you're
speaking from the perspective of placating customers and taking care of
some commercial bottom line, the answer is no. No public PR situation
coming your way, so no work to be done, vulnerability doesn't exist yet.
But if you're speaking from the perspective of whether attackers now are
aware of the bug and can write exploits for it -- that is, a real threat
model -- then the answer is obviously yes, if the fix is public, the bug
is public.

So when I read in this thread calls for extending embargoes until the
vulnerability is "disclosed" in some sort of announcement (that is, PR),
rather than just until the public git fix, it seems plain that the end
goal is a messaging or communication one, rather than a security one. On
the surface, delaying the release of a vulnerability until it's had time
to reach customer systems sounds like a good idea. But zoom in a little
bit and you quickly realize that the vulnerability has *already* been
released to attackers who read commit logs, and the thing we're talking
about delaying is an official announcement. It turns out, attackers
don't care about your official announcements; the marketing team does.

And as I understand it, the Openwall mailing lists have never been about
enabling companies to better control their messaging. They've been about
a deterministic embargo & disclosure process, to strike the right
balance of letting people coordinate privately when needed, and then
letting various parties make the best decisions they can once the cat is
out of the bag. Should the distros@ policy change to be more PR-friendly,
or should it stay true to its security policy ideals?

Jason

[1] https://git.kernel.org/pub/scm/linux/kernel/git/akpm/mm.git/commit/?id=2505a981114dcb715f8977b8433f7540854851d8
