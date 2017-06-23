X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/06/23/3
Message-ID: <90f1cd71-5c5d-83ae-23ce-9f12a9074bd3@redhat.com>
Date: Fri, 23 Jun 2017 07:56:30 -0600
From: Jeff Law <law@...hat.com>
To: oss-security@...ts.openwall.com, Brad Spengler <spender@...ecurity.net>
Subject: Re: Qualys Security Advisory - The Stack Clash
Content-Type: text/plain; charset=utf-8

On 06/21/2017 03:27 PM, Brad Spengler wrote:
>> OpenBSD isn't a member of the distros list - they were notified by
>> Qualys separately.  This matter was discussed, and some folks were
>> unhappy about OpenBSD's action, but in the end it was decided that
>> since, as you correctly say, the underlying issue was already publicly
>> known, OpenBSD's commits don't change things much.  Sure this draws
>> renewed attention to the problem, but probably not to the extent and in
>> the many specific ways the Qualys findings cover.  So it was decided to
>> keep the embargo on the detail.
> 
> Thank you for clarifying that, my assumption was indeed wrong then.
> 
> Still, if OpenBSD was able to resolve the issues necessary after 
> notification without leaking full details to the public, shouldn't 
> this have been possible for the other projects without an embargo, 
> let alone an extended one?  
I  really doubt it for GCC for a variety of reasons.  Hell, I doubt I
could have gotten even a good discussion going about the problems with
-fstack-check without the details of the embargo'd CVE.

Even if I was able to get interest from other key GCC contributors, the
level of detail I'd have to disclose to those key contributors to make
progress would likely have violated the embargo.

Perhaps part of the difference is OpenBSD can move fairly independently
while something like GCC requires larger scale coordination and public
discussion.

Jeff



Download attachment "signature.asc" of type "application/pgp-signature" (489 bytes)
