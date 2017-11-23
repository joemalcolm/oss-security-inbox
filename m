X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/11/23/3
Message-ID: <87ine0u5ns.fsf@curie.anarc.at>
Date: Thu, 23 Nov 2017 15:00:23 -0500
From: Antoine Beaupré <anarcat@...ngeseeds.org>
To: oss-security@...ts.openwall.com
Subject: Re: exiv2: multiple memory safety issues
Content-Type: text/plain; charset=utf-8

On 2017-11-23 10:53:13, Raphael Hertzog wrote:
> So please file bugs on github, thank you.

I read this thread thinking this was still from June, so I thought I
would just go ahead and report this upstream already:

https://github.com/Exiv2/exiv2/issues/174

I should also mention that I haven't been able to reproduce with
valgrind, in Debian Wheezy, which uses exiv 0.23. I wasn't able to
compile exiv2 with ASAN there either, so that could be why I can't
reproduce.

A.

-- 
Le pouvoir n'est pas à conquérir, il est à détruire
                        - Jean-François Brient, de la servitude moderne

