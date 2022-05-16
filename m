Received: (qmail 22258 invoked by uid 550); 16 May 2022 14:30:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23910 invoked from network); 16 May 2022 13:43:53 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1652708620;
	bh=pAxJx8SWMkrnAMtxw1t1SbrNQMw+PXb3viGMVuL0f+k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:In-Reply-To;
	b=Khc5ri1Rmh9BfFB4hmOhum7MZwAfcXU5JEFcEdcnDlM8Et7PdtG/9GZQA8Wmq6a6z
	 8FJg9SzdIkNuR0El+M37TO8xIR4FmYCkJUNzj+QCn2zBn4hOoYe4cc/svOzYwB6CtT
	 sThtDSrVqAGX1izs0+qXgiuqSvFWWVKnU9mYu9H3uqQXMzRYG49iq7ZLs4/fevqDnU
	 SvoYSF3PHInJ49iG6OLvFszxXKFk9FjcNKEP8wRSS3WZWGUJjFzx7HNASRnQfEUupV
	 2FmOOXf3LEK/jDyHDF86o2UuKVUaKEVIASvRlA80z5ExJtm6/E1UgDr1P+hVoUSHVG
	 urRoO3Y8TGm1Q==
Date: Mon, 16 May 2022 10:43:33 -0300
From: Thadeu Lima de Souza Cascardo <cascardo@canonical.com>
To: oss-security@lists.openwall.com
Cc: Solar Designer <solar@openwall.com>
Message-ID: <YoJVBebSkRsaOv3b@quatroqueijos>
References: <20220515162740.GA20526@openwall.com>
 <YoJNtNJXUwLySmmO@zx2c4.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YoJNtNJXUwLySmmO@zx2c4.com>
Subject: Re: [oss-security] linux-distros list policy and Linux kernel

On Mon, May 16, 2022 at 03:12:20PM +0200, Jason A. Donenfeld wrote:
> Hi Alexander,
> 
> I think a lot of this depends on what you feel the primary value in
> distros@ is.
>
> I always thought its primary purpose was to centralize embargoed
> vulnerability reports, using its presence as *the* de facto forum for
> that, in order to receive nearly all embargoed bugs. Then, those bugs
> become subject to the distros@ 14-day disclosure policies. Seen this
> way, distros@ is a mechanism for ensuring that bugs eventually *do*
> become disclosed, rather than languishing in embarrassed vendor
> purgatory forever.
>
> Maybe I'm far off, though, so it'd be interesting to learn if you have a
> different idea of its value.
>

[...]

> And anyway, practically speaking, security@kernel.org's disclosure
> deadline is usually something like 7 days, which is pretty short, so for
> people who misread the documentation, at most they'll only be miffed
> about a few days, rather than a few months.
> 

Though I want to add a little more to this discussion, I think this needs
clarification and is really one of the main pain points here, in my opinion.

"Although our preference is to release fixes for publicly undisclosed bugs
as soon as they become available, this may be postponed at the request of
the reporter or an affected party for up to 7 calendar days from the start
of the release process"

This is about the fixes, not the security report. As I read it, once a fix is
developed/reviewed/accepted, kernel maintainers/developers may hold the *fix*
release up to 7 days.

Right in the next paragraph, though:

"While embargoed information may be shared with trusted individuals in
order to develop a fix, such information will not be published alongside
the fix or on any other disclosure channel without the permission of the
reporter.  This includes but is not limited to the original bug report
and followup discussions (if any), exploits, CVE information or the
identity of the reporter."

This means that it's now up to the reporter to disclose any information if they
want to. They may never disclose it. They may wait for someone else to disclose
it. Or decide to disclose it immediately.

Now, as you said earlier in your message (which is why I kept that excerpt),
linux-distros ends up having such a role where reports sent to it should be
made public in no more than 14 days. But there is no such mechanism on
security@kernel.org rules as documented at
Documentation/admin-guide/security-bugs.rst, as I understand it.

Cascardo.


> So I think maybe your option (0) makes sense? Enforce the policy, which
> has worked well enough for a long while now.
> 
> Jason
> 
> [1] https://git.kernel.org/torvalds/c/d114b9fe78c8d
> [2] https://lists.immunityinc.com/pipermail/dailydave/2015-August/000976.html
> [3] https://git.kernel.org/torvalds/c/e3c1c4fd9e6d1
