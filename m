X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/07/20/7
Message-ID: <20090720133652.GA14021@grsecurity.net>
Date: Mon, 20 Jul 2009 09:36:52 -0400
From: spender@...ecurity.net (Brad Spengler)
To: Marcus Meissner <meissner@...e.de>
Cc: oss-security@...ts.openwall.com, dailydave <dailydave@...ts.immunitysec.com>
Subject: Re: [Dailydave] Linux 2.6.30+/SELinux/RHEL5 test kernel 0day, exploiting the unexploitable
Content-Type: text/plain; charset=utf-8

> I am not sure about the SELinux policy error he used to 
> exploit the RHEL 5.? Beta.

It was a default RHEL 5.3 SELinux policy.  The same vulnerability from
the policy exists in Fedora 10 and 11.  I haven't tested anything else,
but I imagine lots more are vulnerable (and it doesn't matter what 
kernel you're running).  There will be a CVE for this vulnerability as 
well.

(Really there should have been a CVE for the lack of 
-fno-delete-null-pointer-checks instead of pretending the only problem 
was /dev/net/tun.  As the commit to add it showed (and at least 10 other 
commits to the kernel this weekend) lots of other code was affected, so 
someone not applying a fix for a CVE mentioning only /dev/net/tun 
because they don't have the code for /dev/net/tun compiled in, is going 
to be missing out on a number of fixes).

-Brad

Download attachment "signature.asc" of type "application/pgp-signature" (190 bytes)
