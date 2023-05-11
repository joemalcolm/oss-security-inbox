Received: (qmail 26463 invoked by uid 550); 11 May 2023 01:57:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26279 invoked from network); 11 May 2023 01:56:52 -0000
Date: Thu, 11 May 2023 03:56:44 +0200
From: Solar Designer <solar@openwall.com>
To: Piotr Krysiuk <piotras@gmail.com>
Cc: Turritopsis Dohrnii Teo En Ming <tdtemccnp@gmail.com>,
	oss-security@lists.openwall.com, ceo@teo-en-ming-corp.com
Message-ID: <20230511015644.GA30987@openwall.com>
References: <CAD3upLvuttgu3i6qZyB2LLY2CPcTvMdhQQLKdAYV2eoPD5Wjjg@mail.gmail.com> <20230510165545.GA25380@openwall.com> <CAFzhf4oPkVGX+spdpSm+r4mwU3YzAD1vTwrZFQ4M4yjQaVSYhA@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAFzhf4oPkVGX+spdpSm+r4mwU3YzAD1vTwrZFQ4M4yjQaVSYhA@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] New Linux kernel NetFilter flaw gives attackers root privileges

On Wed, May 10, 2023 at 08:02:49PM +0100, Piotr Krysiuk wrote:
> On Wed, May 10, 2023 at 5:55???PM Solar Designer <solar@openwall.com> wrote:
> > Is the netfilter issue really worse than the io_uring issue?  I doubt
> > it.  So _maybe_ it was something in the wording that tripped someone
> > writing for one of those tech news websites, then others picked it up?

When writing the above, I didn't recall that the io_uring issue is
6.3-only, which does make it relatively less important.

Brad Spengler reminded me of this aspect on Twitter.  Thanks.

> I suspect that what triggered the media is the following fragment:
> 
> > Somebody from the Linux kernel team then emailed the proposed fix to
> > <linux-distros@...openwall.org> and that email also included a link to
> > download our description of exploitation techniques and our exploit
> > source code.
> >
> > Therefore, according to the linux-distros list policy, the exploit must
> > be published within 7 days from this advisory.

Oh, that could have looked like drama.  Yes, that could be it.

> So in the advisory I wanted to explain the reason why the exploit must
> be posted, given that was not my original plan.

Sure.  I think this is good for transparency.

> > As expected.  Now, from a typical distro user's standpoint,
> > "unprivileged local users" may be just right.  However, not all distros
> > have unprivileged user namespaces enabled by default.
> 
> You are right, I should have explained the dependencies. Do you think
> it would be OK to include the correction on Monday? Or is it better to
> send today (it may catch even more media)? I will make sure to review
> the wording with you before posting.

We're already having this very discussion on the list, just not in the
same thread... and I just realized that maybe you didn't realize that.

When you post the exploitation techniques and the exploit code on
Monday, please do explain the dependencies in that same message.

Thanks,

Alexander
