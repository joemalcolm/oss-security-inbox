X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/12/18/16
Message-ID: <5493206A.1050500@mccme.ru>
Date: Thu, 18 Dec 2014 21:43:54 +0300
From: Alexander Cherepanov <cherepan@...me.ru>
To: oss-security@...ts.openwall.com
Subject: Re: Running Java across a privilege boundry
Content-Type: text/plain; charset=utf-8

On 2014-12-18 20:50, Martin Carpenter wrote:
>> I requested a separate tag for relative RPATH a while ago:
>> https://bugs.debian.org/732682
>> Now we "only" need someone to write the code. :-)
>
> Great! Is that all we need? The tests reference the Debian policy manual
> (package debian-policy):
>
> https://www.debian.org/doc/debian-policy/ch-sharedlibs.html
>
> (for completeness: also sections 10.2, 10.3).
>
> This references neither RPATH nor RUNPATH. Perhaps we need to fix that
> first?

https://bugs.debian.org/555982

> Suggested addition:
>
> 8.7 RUNPATH and RPATH
> Libraries that define RPATH or RUNPATH should ensure that this does not
> contain relative paths. This is to prevent an executable from loading a
> library from an untrusted location. (This should include the corner
> cases whereby the path starts or ends with a colon, or includes two
> consecutive colons).
>
>
> Did I miss anything?

Relative paths is not the only problem. /tmp is even worse:

https://bugs.debian.org/759868

-- 
Alexander Cherepanov
