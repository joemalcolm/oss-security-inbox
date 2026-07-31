X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/31/15
Message-ID: <87o6fmdgs6.fsf@hope.eyrie.org>
Date: Fri, 31 Jul 2026 13:51:21 -0700
From: Russ Allbery <eagle@...ie.org>
To: oss-security@...ts.openwall.com
Subject: Re: Some Changes to GNOME Security Tracking
Content-Type: text/plain; charset=utf-8

Jeremy Stanley <fungi@...goth.org> writes:

> I share some of the other frustration expressed about efforts like
> Akrites (my opinion does not represent that of my employer), though I'll
> argue that it's not directly about financial investment, rather that the
> people already deeply embedded in our communities with the necessary
> skillset to evaluate such reports in private are still all too often
> already busy with other priorities and so we lack the bandwidth to
> handle this deluge. From my perspective we don't need an outside
> consultant telling us what to fix and how, we need more interested
> contributors in our communities picking up boring day-to-day (usually
> not security-related at all) maintenance tasks so that our established
> community members with all the necessary context can actually spend time
> focusing on vulnerability evaluation and coordination.

This is a somewhat obvious (to me, at least) observation, but I'm mildly
surprised at how little discussion it's gotten relative to what I think
will become its importance for open source as a whole:

Historically, most open source packages were maintained as hobbies in
people's spare time or as a side effect of other work. People have a wide
variety of motives for working on hobby projects, but at some level, for
most projects, a lot of that motivation is personal enjoyment.

Security, particularly urgent security issue response, has always been one
of those corners like tests or documentation that is not as enjoyable for
most developers as other parts of open source software work. There are
exceptions, but urgent security issue response is more often done out of a
sense of obligation than because it's fun or satisfying.

Open source software maintenance is, overall, becoming less fun.

This is a general and possibly controversial statement, and it's certainly
not universally true. There are substantial pockets of people who are
having lots of fun, still. But LLM-driven security reports are precisely
the sort of thing that makes open source maintenance less fun for a lot of
people, joining other much longer-standing factors like user entitlement
and increasing expectations without any corresponding increasing
enjoyment.

Each time we collectively create another new social pressure that makes
open source software maintenance less fun, I wonder if we're going to hit
a critical turning point in people's willingness to maintain software as a
hobby project.

One solution that anyone in open source software communities has heard
about for decades now is to turn open source software maintenance into a
job with a paycheck. Then it doesn't necessarily have to be fun; there are
other compensations instead, just as there are with all the other things
we do for a paycheck that we wouldn't do voluntarily. Some larger
projects, and even some small projects that invested effort into money
raising, have made this transition and the people working on those
projects are at least partly doing so for a paycheck. But everyone on this
list is aware of how, beneath those large and highly visible rocks of the
open source ecosystem, there are innumerable grains of sand, usually
maintained by one person with only occasional drive-by help.

The Akrites position seems to be that we have standards for how important
open source software needs to be maintained, and if you do not meet those
standards, we will take your project away from you and give it to paid
maintainers who will do the work properly in exchange for a paycheck,
rather than relying on personal enjoyment. Fair enough. One can make a
fairly strong argument that this economic model is more reliable, in the
same way that we do not rely on volunteers to maintain other critical
public infrastructure. But if this happens, I'm not sure that I understand
why Akrites would expect those individual maintainers to continue to do
any further work.

Jeremy's point above is that instead we need more maintainers. This is
certainly true; we always need more maintainers. This is the motherhood
and apple pie position on open source maintenance; everyone has been
nodding along to this for decades. But the way we get more maintainers is
by increasing the incentives to be a maintainer (and lowering the
barriers, which is a different topic that I'll leave aside for this
message). What incentives are we increasing? Why would someone be *more*
likely tomorrow to maintain a piece of open source software than they were
yesterday?

The obvious lever that we have is money: We can pay them. Sure, that seems
reasonable, even arguably ethically required when corporations with huge
profit margins rely critically on someone's unpaid volunteer effort inside
a capitalist society where we all need money to live. But it also ignores
the fact that not all open source maintainers have more effort available
in exchange for money.

A lot of these small volunteer maintainers already have jobs and are
already at the limit of their volunteer time, if not over those limits.
Are we offering them enough money and employment stability that they can
reasonably quit their full-time job to take up that offer to be paid? In
almost every case, the answer is clearly no, nor is there any clear path
to doing so.

And that assumes they are even motivated by money. Not everyone is, for a
wide variety of reasons.

I think open source software is coming face to face with a motivation
crisis that has been building for a long time. The large projects with
funding ecosystems and heavy corporate involvement will be fine; they have
already largely switched from volunteer motivations to paid employment
motivations, and can complete that switch. The small projects are another
question, one that I don't think we as a community have yet fully
acknowledged.

Some months ago, someone with a passionate belief in the future of open
source software tried to convince me that I had a moral obligation to
provide code review and feedback to new contributors to try to help grow
the number of open source maintainers. My response was no, I'm not going
to do that. I understand the goal, I understand the value, and I do want
newcomers to be able to learn and grow their skills, but code review is,
for me personally, the worst task in software development. I would rather
do literally anything else. This task would have come out of my volunteer
free time, and that tank is empty. There are no more resources left for
doing something that I hate doing, even out of a sense of obligation.

For me, code review is that thing. For other people, it's going to be
trying to make sense of LLM security report spam. For others, they already
said no to trying to make sense out of fuzzing bug report spam.

These techniques are useful and they find real bugs and not addressing
them leads to real security flaws, and all of that will make most open
source maintainers feel very bad, but feeling very bad is not a
sustainable source of motivation. It's a reliable source of burnout, which
in turn means the pool of possible open source maintainers gets even
smaller at a time when we need it to get larger.

I have no magic solution at the end of this long ramble. But I don't think
people realize how much of a crisis there is, not in the technical
problems of computer security that we've all been wrestling with for
years, but in the psychology of open source software maintanenace outside
of the framework of paid employment. Every new thing that we add, such as
floods of quite possibly legitimate urgent security reports that take a
lot of time and attention to understand and triage, makes this crisis
worse.

Shaming people or trying to make them feel guilty for not meeting their
obligations to the community will not help. It will *work*, people will
feel ashamed and guilty, and then many of them will become avoidant and
will do even less work. This cycle will continue until we figure out some
way to increase the fun and enjoyment of maintaining an open source, not
just the burdens. Or until we give up on the volunteer model for anything
judged important enough to require all of the chores that people largely
don't like doing, and instead expect to pay everyone involved substantial
and reliable wages for that work. That would be a major upheaval in the
economics of open source, to say the least.

-- 
Russ Allbery (eagle@...ie.org)             <https://www.eyrie.org/~eagle/>
