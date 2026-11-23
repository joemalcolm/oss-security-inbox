X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/23/1
Message-ID: <20261123004552.GA25464@openwall.com>
Date: Mon, 23 Nov 2026 01:45:52 +0100
From: Solar Designer <solar@...nwall.com>
To: oss-security@...ts.openwall.com
Subject: Re: Dokploy: the validator allows the backtick — a member's database password change is host RCE, 9.9 on the vendor's own vector (v0.31.0, live-proven)
Content-Type: text/plain; charset=utf-8

Hi all,

OK, I've just blocked knell.  As to what I let through so far and the
discussion we had, it could be seen as noise, trolling, and a waste of
time, but it also could have been a needed step towards well-reasoned
decision-making for handling further challenges like this.

Regarding my concern about the potentially useful reports then staying
available to the wrong people only, luckily knell also adds the reports
to archive.org, so I suppose anyone who cares can check what new may
have appeared in there.  This may not be the case with future bots, so
it's not a general solution.

On Sun, Nov 22, 2026 at 01:52:54PM -0800, Gregory Mullen wrote:
> But you decided to ignore all of that and approve it anyways?

I didn't ignore feedback.  Not following preference of the majority, or
not doing so blindly and right away, isn't the same as ignoring it.

> Yeah, that's how death by a thousand cuts usually go... [almost] no one
> complains about the first few, because who cares, it's not too many... yet.

Yes, but it's not the case here.  We got plenty of complaints.  We also
have a counter-example: the approach with not blocking the numerous
one-vulnerability-per-posting disclosures by Apache projects, Perl CPAN,
etc. early on, but encouraging them to group disclosures into fewer
postings and then gradually starting to enforce this seems to work.

Of course, it may be that people behind these bots are malicious, in
which case encouraging them to change won't work and feeding them may
make it harder to enforce change later.

Alexander
