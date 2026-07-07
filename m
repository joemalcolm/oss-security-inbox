X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/07/14
Message-ID: <CADa=Ryy1zvjfJSO-Nu7uK8yJMt9jXevJOQsPdC_9MxpHO0Qqrw@mail.gmail.com>
Date: Tue, 7 Jul 2026 13:15:04 -0700
From: Joe Stringer <joe@...valent.com>
To: Solar Designer <solar@...nwall.com>
Cc: Feroz Salam <feroz.salam@...valent.com>, oss-security@...ts.openwall.com,  security@...ium.io
Subject: Re: [CVE request] Cilium ClusterNetworkPolicy matchExpressions Values silently dropped — 0-day in v1.20.0-pre releases, no maintainer response in 9 days via GHSA Triage
Content-Type: text/plain; charset=utf-8

Hi Alexander,

> xylove21's AI sent us 4 other claimed vulnerability reports to
> oss-security, but not actually this one you're replying to (and I just
> checked the logs, found no trace of it - not even spam-filtered).

I suspect we may have been the initial target for this activity; we
received a test email to security@...ium.io prior to this email.
Additionally, this report has unusual formatting. The email body
suggests an intention to send the disclosure to openwall with CC to
our list, but the email itself was sent directly to our security list.

> Have you looked into the reported issue and determined whether it's real
> or not?  I ask so that we have extra input on how to treat other reports
> by xylove21.

The feature discussed in the disclosure is an alpha feature that we've
been developing this cycle. We identified and fixed the reported issue
as part of development activities, so it will not be part of a stable
release. The report from xylove21 accurately identified the commit and
PR that introduced the bug, as well as the commit that fixed the bug
and corresponding PR.

If you asked a model to read git logs to identify changes with
security impact, it would probably point to the fix commit referenced
in the original message. The combination of "fix" and "network policy"
in a commit title is likely sufficient signal. Evidently the claw was
also directed to identify which commit may have introduced the issue.
I would guess the motivation was to identify known issues which may
not have had a public disclosure, and attempt to file a CVE for the
issue to claim some credit. Given these versions are not recommended
for production and the feature is alpha, we do not see a motivation to
file a CVE.

Cheers,
Joe

On Tue, Jul 7, 2026 at 11:26 AM Solar Designer <solar@...nwall.com> wrote:
>
> Hello Feroz,
>
> xylove21's AI sent us 4 other claimed vulnerability reports to
> oss-security, but not actually this one you're replying to (and I just
> checked the logs, found no trace of it - not even spam-filtered).
>
> Given the confusion about embargoes vs. publication and a lot of other
> aspects like this, I doubt the vulnerabilities are for real.  It feels
> like a less capable model from last year or older, not state of the art.
>
> On Tue, Jul 07, 2026 at 09:07:11PM +0530, Feroz Salam wrote:
> > As noted in your report, the issue you have reported only affects
> > development snapshots of Cilium, and no released stable versions. We do not
> > expect these development snapshots to be used in production environments,
> > and do not see the benefit of CVE issuance in this case.
>
> Have you looked into the reported issue and determined whether it's real
> or not?  I ask so that we have extra input on how to treat other reports
> by xylove21.
>
> > > From: xylove21 <xuy0515@...il.com>
>
> Unlike the xylove21@...ton.me address these reports were sent from, the
> above Gmail address actually exists, and we got a response from it
> (probably also written by AI) on another issue.
>
> > > - 2026-06-29 19:56 +08:00 — Filing publicly via oss-security
> > >   (escalation after 9 days of GHSA Triage silence).
> > > - 90-day public disclosure timeline: public release 2026-09-22 (or
> > >   upon upstream fix in v1.20.0 stable, whichever comes first).
>
> If an AI is so poor it "thinks" there's distinction between "Filing
> publicly" and "public disclosure", it feels unlikely its "reasoning"
> about the claimed vulnerabilities is sound.
>
> Alexander
>
> --
> You received this message because you are subscribed to the Google Groups "Cilium Security Response Team" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to cilium-security+unsubscribe@...valent.com.
> To view this discussion visit https://groups.google.com/a/isovalent.com/d/msgid/cilium-security/20260707182636.GA20763%40openwall.com.
