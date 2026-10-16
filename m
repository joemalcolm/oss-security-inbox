X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/16/39
Message-ID: <20261016223210.GA22879@openwall.com>
Date: Sat, 17 Oct 2026 00:32:10 +0200
From: Solar Designer <solar@...nwall.com>
To: oss-security@...ts.openwall.com
Subject: Re: Proposal: Add separate oss-security-vulnerability-reports mailing list (for AI vulnpocalypse)
Content-Type: text/plain; charset=utf-8

Hi,

Here's an update:

On Sun, Jun 14, 2026 at 12:32:41AM +0200, Solar Designer wrote:
> I do indeed see the problem, but I don't like the proposal.  Also, for
> now the increased volume on this list hasn't exceeded its historical
> pre-AI peak: we had 485 messages in October 2014, but 455 in May 2026.
> I'm not seeing a mass exodus of subscribers either.  There's greater
> churn - more people are leaving, but at the same time more are joining.

We stayed in the range of 319 to 400 accepted messages per month for
June through September.  However, the number of subscribers started
decreasing slightly - a few more people are leaving than are joining -
and the churn is still much higher than it had been "before AI".

> Rather than tell people to send something to the other list, I ask this:
> 
> Whenever practical, please group related vulnerability disclosures into
> fewer messages (like security advisories) and use helpful Subject lines.
> Include the project name in a fixed place near the beginning of Subject,
> and make the Subject specific to the one disclosure rather than generic
> shared between multiple disclosures.

> I greatly appreciate that Apache projects post their CVE disclosures in
> here, but it does sometimes result in a lot of messages for the same
> project on the same day.

I recently started delaying approval of multi-message disclosures until
after single-message ones already in the moderation queue have been
approved and had a good chance to be delivered.  This should lower
delays and improve delivery rate for the single-message disclosures as
many recipient servers impose rate limits.

This month, I also started imposing a limit on the number of messages
per project per day, which depends on the multi-message disclosures
being delayed a bit (as otherwise I don't know how many more messages
are coming).  Currently I reluctantly accept up to 20-something
messages, but not 30+.  I intend to slowly decrease this threshold.

Here's the first case where 61 messages were replaced with one combined
disclosure:

https://www.openwall.com/lists/oss-security/2026/10/04/1

The second one is 39 messages for Apache Camel today, which are
similarly going to be replaced by one message on Monday (I'm told).

So that's 98 messages fewer getting through to the list already.

The ASF are planning to improve their tooling, which is tracked here:

"Sending a batched notification email"
https://github.com/apache/security-vulnogram/issues/255

Meanwhile it's a manual process, not specifically defined but approved
by the ASF, to combine the disclosures into fewer postings in extreme
cases like these two.

Alexander
