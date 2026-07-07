X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/07/12
Message-ID: <20260707182636.GA20763@openwall.com>
Date: Tue, 7 Jul 2026 20:26:36 +0200
From: Solar Designer <solar@...nwall.com>
To: Feroz Salam <feroz.salam@...valent.com>
Cc: oss-security@...ts.openwall.com, security@...ium.io
Subject: Re: [CVE request] Cilium ClusterNetworkPolicy matchExpressions Values silently dropped — 0-day in v1.20.0-pre releases, no maintainer response in 9 days via GHSA Triage
Content-Type: text/plain; charset=utf-8

Hello Feroz,

xylove21's AI sent us 4 other claimed vulnerability reports to
oss-security, but not actually this one you're replying to (and I just
checked the logs, found no trace of it - not even spam-filtered).

Given the confusion about embargoes vs. publication and a lot of other
aspects like this, I doubt the vulnerabilities are for real.  It feels
like a less capable model from last year or older, not state of the art.

On Tue, Jul 07, 2026 at 09:07:11PM +0530, Feroz Salam wrote:
> As noted in your report, the issue you have reported only affects
> development snapshots of Cilium, and no released stable versions. We do not
> expect these development snapshots to be used in production environments,
> and do not see the benefit of CVE issuance in this case.

Have you looked into the reported issue and determined whether it's real
or not?  I ask so that we have extra input on how to treat other reports
by xylove21.

> > From: xylove21 <xuy0515@...il.com>

Unlike the xylove21@...ton.me address these reports were sent from, the
above Gmail address actually exists, and we got a response from it
(probably also written by AI) on another issue.

> > - 2026-06-29 19:56 +08:00 — Filing publicly via oss-security
> >   (escalation after 9 days of GHSA Triage silence).
> > - 90-day public disclosure timeline: public release 2026-09-22 (or
> >   upon upstream fix in v1.20.0 stable, whichever comes first).

If an AI is so poor it "thinks" there's distinction between "Filing
publicly" and "public disclosure", it feels unlikely its "reasoning"
about the claimed vulnerabilities is sound.

Alexander
