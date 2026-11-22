X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/22/8
Message-Id: <DN1QZZA0DDEA.3EFMWBFB03PV5@lwn.net>
Date: Sun, 22 Nov 2026 07:45:22 -0500
From: "Joe Brockmeier" <jzb@....net>
To: <oss-security@...ts.openwall.com>
Cc: <contact@...ploy.com>
Subject: Re: Dokploy: the validator allows the backtick — a member's database password change is host RCE, 9.9 on the vendor's own vector (v0.31.0, live-proven)
Content-Type: text/plain; charset=utf-8

On Sun Nov 22, 2026 at 12:00 AM EST, Solar Designer wrote:
> I know that many of you in here would rather not see more postings from
> knell.  I got off-list feedback from some of you and I ran a Twitter
> poll @oss_security, where only one person voted that I should "Accept
> like from a human", a few "Accept more selectively", and the majority
> "Reject all".  However, yesterday I approved another report of a Dokploy
> issue.  Before I did so, I had "AI" analyze the previous report below,
> and both reports appear valid even if annoying to subscribers.

Long time lurker... I don't comment much here because I mainly follow this list
in case I need to cover something security related.

Of course a Twitter poll is going to be pro-LLM. Try running the same poll on a
Mastodon instance and see what folks say. ;-)

FWIW I would prefer *not* to see these. 

> Blindly rejecting valid reports just because they came from a bot does
> not feel right at this time - there are not too many yet.

Why wait for something to be a larger problem before addressing it? That doesn't
seem to make sense to me.

Rejecting LLM-discovered security issues would be wrong. But IMO if a human
can't take the time to write up or at least edit the findings, why should other
humans be subjected to the output?

> Sure they are
> not worth most subscribers' time, but then most reports by people aren't
> either.  One of my concerns is what would happen to possible rejected
> reports - they may end up in the wrong hands only.  If the volume of
> automated reports increases yet we're still able to distinguish them
> from those sent by people, we may need to start redirecting them to
> another list... which would require changes to list moderation setup.

For whatever one human's voice is worth, I wish you'd just reject obvious bot
reports out of hand. It's just a lousy practice that shouldn't be encouraged.

Best,

jzb
-- 
Joe Brockmeier | Editor, LWN | https://lwn.net
Email: jzb@....net | Social: @jzb@....net

