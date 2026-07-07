X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/07/15
Message-ID: <20260707222856.GA22800@openwall.com>
Date: Wed, 8 Jul 2026 00:28:56 +0200
From: Solar Designer <solar@...nwall.com>
To: oss-security@...ts.openwall.com
Cc: Feroz Salam <feroz.salam@...valent.com>, security@...ium.io
Subject: Re: [CVE request] Cilium ClusterNetworkPolicy matchExpressions Values silently dropped — 0-day in v1.20.0-pre releases, no maintainer response in 9 days via GHSA Triage
Content-Type: text/plain; charset=utf-8

On Tue, Jul 07, 2026 at 01:15:04PM -0700, Joe Stringer wrote:
> I suspect we may have been the initial target for this activity; we
> received a test email to security@...ium.io prior to this email.

We also got one just prior to the 4 reports on July 4.  I didn't let it
through (as a moderator), but it was:

> Subject: [Test] 2026-07-04
> From: xylove21 <xylove21@...ton.me>
> To: oss-security@...ts.openwall.com
> Date: Sat, 04 Jul 2026 10:12:46 +0800
> 
> Test 2026-07-04. Target: oss-security@...ts.openwall.com. No disclosure.

Looks like just the way the tool works.  I don't know what the purpose
of this test was, given it was sent from a non-existent address and
further messages were sent regardless of it not being accepted.  Maybe
the tool was misconfigured.

On Tue, Jul 07, 2026 at 01:15:04PM -0700, Joe Stringer wrote:
> The feature discussed in the disclosure is an alpha feature that we've
> been developing this cycle. We identified and fixed the reported issue
> as part of development activities, so it will not be part of a stable
> release. The report from xylove21 accurately identified the commit and
> PR that introduced the bug, as well as the commit that fixed the bug
> and corresponding PR.
> 
> If you asked a model to read git logs to identify changes with
> security impact, it would probably point to the fix commit referenced
> in the original message. The combination of "fix" and "network policy"
> in a commit title is likely sufficient signal. Evidently the claw was
> also directed to identify which commit may have introduced the issue.
> I would guess the motivation was to identify known issues which may
> not have had a public disclosure, and attempt to file a CVE for the
> issue to claim some credit. Given these versions are not recommended
> for production and the feature is alpha, we do not see a motivation to
> file a CVE.

Oh, so in your case it was search for recently fixed issues.  I wonder
if that's also the case for the 4 other reports against other projects.
I could not quickly confirm this now.

Alexander
