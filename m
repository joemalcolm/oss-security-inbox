X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/12/10/2
Message-ID: <4EE30776.9040301@redhat.com>
Date: Sat, 10 Dec 2011 00:17:10 -0700
From: Kurt Seifried <kseifried@...hat.com>
To: oss-security@...ts.openwall.com
CC: Mark Doliner <mark@...gant.net>
Subject: Re: CVE request: Pidgin crash
Content-Type: text/plain; charset=utf-8

On 12/09/2011 07:08 PM, Mark Doliner wrote:
> Hi!  Would it be possible to issue a CVE for a newish crash in Pidgin?
>  This is a remotely-triggerable crash in the oscar protocol (used by
> the AIM and ICQ plugins) when handling incoming buddy list-related
> SNACs.  I do not believe remote-code execution is possible.  It was
> discovered by Evgeny Boger and reported on our public issue tracker at
> http://developer.pidgin.im/ticket/14682  I do not believe a CVE exists
> for this yet.
>
> The Pidgin project will be releasing version 2.10.1 tomorrow and it
> will include a fix for this issue.
>
> Thanks (and sorry for sending this at the beginning of your weekends!),
> Mark
What is "weekends"? =)

Please use CVE-2011-4601 for this issue.

-- 

-Kurt Seifried / Red Hat Security Response Team

