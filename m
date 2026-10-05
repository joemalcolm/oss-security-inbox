X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/05/3
Message-ID: <20261004214506.55bf0a2e@gmail.com>
Date: Sun, 4 Oct 2026 21:45:06 -0400
From: Aaron Rainbolt <arraybolt3@...il.com>
To: Jan Schaumann <jschauma@...meister.org>
Cc: oss-security@...ts.openwall.com
Subject: Re: cloud computing provider disclosures
Content-Type: text/plain; charset=utf-8

On Sun, 4 Oct 2026 18:56:44 -0400
Jan Schaumann <jschauma@...meister.org> wrote:

> Hello,
> 
> I was wondering whether it might make sense to
> establish a disclosure list for cloud computing /
> virtual private server hosting providers.
> 
> The reason that I think this might make sense is that
> not every cloud computing provider necessarily offers
> their own OS / Linux distribution, and thus may not be
> qualified for membership on distros@.
> 
> At the same time there are vulnerabilities that
> directly and significantly impact cloud computing
> providers such that the internet would benefit from
> them being able to mitigate prior to disclosure on
> e.g., oss-security@.
> 
> An obvious example might be disclosure of VM escapes,
> which disproportionally impacts such service
> providers.
> 
> Another option might be to grant cloud computing
> providers membership on distros@ even if they do not
> offer their own custom Linux distribution.
> 
> What do people think?

I don't really think I'm a frequent enough contributor here to have
much say, nor do I run a cloud service, but I personally don't like this
idea so much. Cloud providers have to have a robust method to update
their world at any instant because the zero-day market is a thing, and
because people sometimes see a fix go public and immediately come up
with an exploit for the vuln it fixes without knowing anything more
about the vuln. If cloud providers can't update with near-zero notice,
they arguably shouldn't be providing cloud services. (Maybe I'm showing
my ignorance by saying this...)

The "early access to security vuln details" group should be as tiny as
possible to reduce the chances of anyone malicious being in the early
access list. Restricting it to people who can meaningfully contribute
seems like a good middle ground to me.

What might be useful is some system to alert users that something
important is going to be fixed soon and they need to brace for impact.
Maybe at the same time a VM escape vuln is disclosed on distros@, for
instance, an email could be sent to oss-security@ saying "A
high-severity vulnerability has been discovered in the Linux kernel.
Cloud providers are expected to be disproportionately affected." Of
course then the challenge becomes how to figure out what use cases are
affected by a certain vulnerability with the least possible effort on
the reporters, and how to not flood the list with notices for every
single high-severity vuln that affects a niche use case.

--
Aaron

Content of type "application/pgp-signature" skipped
