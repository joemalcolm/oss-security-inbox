X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/04/22/3
Message-ID: <87jyu0nhav.fsf@gentoo.org>
Date: Tue, 21 Apr 2026 22:18:32 +0100
From: Sam James <sam@...too.org>
To: oss-security@...ts.openwall.com
Cc: Przemyslaw Frasunek <przemyslaw@...sunek.com>
Subject: Re: UAF in rsync 3.4.1 and below
Content-Type: text/plain; charset=utf-8

Salvatore Bonaccorso <carnil@...ian.org> writes:

> hi,
>
> On Thu, Apr 16, 2026 at 08:27:56AM -0700, Alan Coopersmith wrote:
>> On 4/15/26 22:49, Przemyslaw Frasunek wrote:
>> > 7. TIMELINE
>> > 
>> > 2008-03-07  Bug introduced in commit d724dd186 (rsync 3.0.1pre1).
>> >              The commit added qsort to receive_xattr() for sorting xattrs
>> >              after namespace prefix munging in --fake-super mode.
>> > 2026-04-16  This report.
>> 
>> Have you notified the rsync maintainers about this?  When?
>
> FWIW, it looks this got CVE-2026-41035 assigned:
> https://www.cve.org/CVERecord?id=CVE-2026-41035

-> https://github.com/RsyncProject/rsync/issues/871

Over there, tridge says:
> This is mostly a way for the client to shoot down their own connection to the fork-per-connection process.
> I need to look further into the potential impact of a malicious
> server, [...]

> [...]

sam

Download attachment "signature.asc" of type "application/pgp-signature" (419 bytes)
