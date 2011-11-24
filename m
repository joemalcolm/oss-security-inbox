X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/11/24/5
Message-ID: <20111124163236.GD1081@dhcp-25-225.brq.redhat.com>
Date: Thu, 24 Nov 2011 17:32:36 +0100
From: Petr Matousek <pmatouse@...hat.com>
To: Tavis Ormandy <taviso@...xchg8b.com>
Cc: oss-security@...ts.openwall.com
Subject: Re: Re: Please REJECT CVE-2011-4112
Content-Type: text/plain; charset=utf-8

On Thu, Nov 24, 2011 at 05:21:01PM +0100, Tavis Ormandy wrote:
> Petr Matousek <pmatouse@...hat.com> wrote:
> 
> > Hi,
> > 
> > could you please reject CVE-2011-4112 as it is not a security bug.
> > 
> > Reference: https://bugzilla.redhat.com/show_bug.cgi?id=751006#c5
> > 
> > Thank you,
> 
> Unrelated, but if it did not require CAP_NET_ADMIN, would you have
> considered it a security bug?

Yes.

> I was under the impression that there was general agreement that NULL derefs
> that are handled gracefully are not security bugs any more.
> 
> Is this because you're setting panic_on_oops?

Yes. That's the default in RHEL.

Petr
