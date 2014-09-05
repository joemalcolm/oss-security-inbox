X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/09/05/10
Message-ID: <5409D41F.4000602@debian.org>
Date: Fri, 05 Sep 2014 16:17:51 +0100
From: Simon McVittie <smcv@...ian.org>
To: oss-security@...ts.openwall.com
Subject: Re: Re: heap overflow in procmail
Content-Type: text/plain; charset=utf-8

On 05/09/14 15:38, Jack Frosch wrote:
> this also crashes aptitude 0.6.8-2.1 on ubuntu, but not formail 3.22-20 on ubuntu.
>
> Program terminated with signal 11, Segmentation fault.
> #0  0xb73dd2c0 in sigc::internal::signal_emit0<void, sigc::nil>::emit(sigc::internal::signal_impl*) ()

I don't see any reason to think that this is related? Lots of bugs make
the crashing executable crash with a segmentation fault, and last time I
looked, aptitude doesn't parse emails.

    S

