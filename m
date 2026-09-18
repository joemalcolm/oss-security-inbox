X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/18/7
Message-ID:  <SYDP300MB2666704BE58A92389ADB4D9B98EE872@SYDP300MB266670.AUSP300.PROD.OUTLOOK.COM>
Date: Fri, 18 Sep 2026 09:57:10 +0000
From: Peter Gutmann <pgut001@...auckland.ac.nz>
To: "oss-security@...ts.openwall.com" <oss-security@...ts.openwall.com>, "jcb62281@...il.com" <jcb62281@...il.com>
CC: Sam James <sam@...too.org>, Clemens Lang <cllang@...hat.com>, "Lexi Groves (49016)" <contact@....fail>
Subject: Re: Removing dead code (was: Retrospective by 'gpg.fail' authors)
Content-Type: text/plain; charset=utf-8

Jacob Bachmeyer <jcb62281@...il.com> writes:

>Since no had ever complained (in 24 years) about the feature being broken, it
>was safe to say that the feature had never been used.  :-)

That's exactly how I deprecate things: Make it a config option -> make it a
disabled-by-default config option -> make it a disabled-by-default compile-
time option with a #error if enabled telling users to contact me if they see
the message.  If after about 10 years no-one has complained, disable it
permanently and eventually remove it on the next major release.

However, this is a slow and awkward process when there are dozens of options
to go through, and prone to kickback if you accidentally hit one that's being
actively used without you knowing about it.  The least painful one is the
compile-time disable, where you can apologise, tell users to rebuild with
-Denable-thing, and then in the next release re-enable it explicitly.

Another strategy is to announce support for X, enable basic handling so it
looks like you support it, and if after some years no-one complains that it's
not working, remove it again.  It's amazing how many "critical security
features", a.k.a. "pointless wank that someone dreamed up and got added to the
spec", no-one actually cares about or uses when it comes down to it.  Every
bit of this stuff that you simply don't do is more attack surface reduction
for your code.

Peter.
