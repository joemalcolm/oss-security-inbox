X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/02/01/2
Message-ID: <AANLkTi=oxj8oeuGt76gDEjd9SRfC5PBac3o0XBGs0ZV+@mail.gmail.com>
Date: Tue, 1 Feb 2011 10:42:15 +0100
From: Pierre Joye <pierre.php@...il.com>
To: oss-security@...ts.openwall.com
Subject: Re: possible flaw in widely used strtod.c implementation
Content-Type: text/plain; charset=utf-8

hi,

Little head up on another affected projected:

http://www.exploringbinary.com/java-hangs-when-converting-2-2250738585072012e-308/

Cheers,

On Tue, Jan 11, 2011 at 1:27 AM, Steven M. Christey
<coley@...-smtp.mitre.org> wrote:
>
> Since this problem stems from a single codebase, strtod.c, so it gets a
> single CVE identifier (already assigned CVE-2010-4645).  The CVE description
> will "blame" strtod.c and mention PHP, and any other high-profile software
> that is discovered to use the same vulnerable, shared code.
>
> - Steve
>



-- 
Pierre

@pierrejoye | http://blog.thepimp.net | http://www.libgd.org
