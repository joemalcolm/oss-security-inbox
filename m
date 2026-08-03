X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/03/1
Message-ID: <36df5b39-29a3-4fea-96dd-e554270148c0@gmail.com>
Date: Sun, 2 Aug 2026 20:11:09 -0500
From: Jacob Bachmeyer <jcb62281@...il.com>
To: oss-security@...ts.openwall.com, Demi Marie Obenour <demiobenour@...il.com>, Alan Coopersmith <alan.coopersmith@...cle.com>
Subject: Re: Some Changes to GNOME Security Tracking
Content-Type: text/plain; charset=utf-8

On 8/2/26 16:13, Demi Marie Obenour wrote:
> On 7/30/26 17:41, Alan Coopersmith wrote:
>> https://blogs.gnome.org/mcatanzaro/2026/07/20/some-changes-to-gnome-security-tracking/
>> announces some changes to the GNOME project's security bug handling:
>>
>> 1) The disclosure deadline is cut from 90 days to 30 days, as most
>>      GNOME maintainers that fix bugs during the embargo do so within
>>      the first 30 days.  This is effective for new bugs reported starting
>>      August 1.
>>
>> 2) The GNOME security team will no longer forward vulnerability reports
>>      to projects that ban AI-generated content, since most reports they
>>      get these days have at least some AI-generated content.
>>
>> 3) Michael Catanzaro will be stepping down in November, after 6 years
>>      of handling this work for GNOME.  He's looking for someone to step
>>      up to replace him.
> General comment on security fixes in open source projects:
>
> I think the motivation for projects like Akrites is simple.  Companies
> need vulnerabilities fixed fast enough that attackers do not exploit
> them first.  To that end, they want a contract that guarantees that
> vulnerabilities will be fixed in a certain amount of time.  Even if
> one offered to pay open source maintainers a significant amount of
> money for such a contract, there is no guarantee they would accept.
> One needs a team of a certain minimum size to guarantee someone will
> be available while still giving everyone enough time off.
>
> Also, the volume of security fixes may swamp upstream review capacity,
> even if the maintainers *are* paid.  It might be necessary to maintain
> downstream forks until upstream is able to catch up.  [...]

This is a perfectly legitimate support model; to some extent, it is what 
distributions do today.  Akrites seems to have managed to pursue this in 
an incredibly hostile manner, however:  appointing yourself a general 
"maintainer of last resort" is not the most polite way to address the 
problem.

It might also be worth remembering that complaints along the lines of 
"this project isn't being maintained" were part of the campaign "Jia 
Tan" used to become an xz-utils co-maintainer.  That such an attitude 
now draws great disapproval should surprise no one.

> That said, I think the solution is systemic fixes, as explained by
> Alex Gaynor in [1].  Unfortunately, for lots of C and C++ code, the
> systemic fix is a complete rewrite in a safe language, or at least
> using a safe language for new code.  That's a huge amount of work,
> and it is work that existing maintainers may have no interest in.

I believe that there is also a huge amount of controversy over the idea 
of rewriting "everything" in "safe" languages, but that is a separate topic.


-- Jacob

