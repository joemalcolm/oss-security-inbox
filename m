X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/02/18/12
Message-ID: <20080218204259.GA32264@openwall.com>
Date: Mon, 18 Feb 2008 23:42:59 +0300
From: Solar Designer <solar@...nwall.com>
To: oss-security@...ts.openwall.com
Subject: Re: wiki - e-mail address obfuscation
Content-Type: text/plain; charset=utf-8

I wrote:
> ... it only
> obfuscates e-mail addresses it recognizes - not anything with an @-sign.
> So we need to be very careful about this - e-mail addresses must be
> entered as <user@...mple.org> - with the angle brackets.
...
> As to page source, I've disabled the view source / export raw feature.

I just found another issue: it is possible to "show differences to
current version" without being logged in - and, of course, original
(non-obfuscated) e-mail addresses are seen in these source diffs.

Unless we come up with a way to address that (e.g., somehow disable this
feature for anonymous visitors), I'm afraid that we'll have to obfuscate
addresses manually prior to entering them into the wiki...

Alexander
