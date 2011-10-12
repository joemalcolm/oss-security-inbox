X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/10/12/3
Message-ID: <20111012100931.GA8290@albatros>
Date: Wed, 12 Oct 2011 14:09:32 +0400
From: Vasiliy Kulikov <segoon@...nwall.com>
To: Reuben Hawkins <reubenhwk@...il.com>
Cc: oss-security@...ts.openwall.com
Subject: Re: radvd 1.8.2 released with security fixes
Content-Type: text/plain; charset=utf-8

On Tue, Oct 11, 2011 at 23:26 -0700, Reuben Hawkins wrote:
> On Sat, Oct 8, 2011 at 9:55 AM, Vasiliy Kulikov <segoon@...nwall.com> wrote:
> > Crap, thank you for noticing it, guys.  The fix should be:
> >
> > https://github.com/reubenhwk/radvd/commit/7a1471b62da88373e8f4209d503307c5d841b81f
> >
> > Now, "", "..", "." and filenames with "/" inside are denied.

In case someone didn't fully track the discussion thread, I'll sum it up -

In the original patch the variable name is typoed/confused - the check
should be against "iface" instead of "name".  The check against "name"
is totally wrong as it checks a static hint string, which always passes
the check.

The confused blacklisted iface set is a bug, but not a security bug;
the confused variable name is indeed a security bug (not a flaw per se,
but it greatly weakens the privsep model).


Thanks to Solar Designer for pointing out that this thing is probably
not clear to everybody.

-- 
Vasiliy Kulikov
http://www.openwall.com - bringing security into open computing environments
