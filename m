X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/10/18/14
Message-ID: <39628cb6-7c36-4e9c-8a53-766f154a12cc@zmail01.collab.prod.int.phx2.redhat.com>
Date: Tue, 18 Oct 2011 16:17:23 -0400 (EDT)
From: Josh Bressers <bressers@...hat.com>
To: oss-security@...ts.openwall.com
Subject: Re: CVE request: recursion level crash in clamav before 0.97.3
Content-Type: text/plain; charset=utf-8

----- Original Message -----
> Sadly, as we know, upstream clamav doesn't care about publishing security
> advisories. They even seem to have stopped to publish new versions on
> their -announce-list, so the only way to see changes is to dig into the
> tar-file and see the Changelog.
> 
> This one here sounds like security relevant:
> Sat Oct  8 12:10:13 EEST 2011 (edwin)
> -------------------------------------
>  * libclamav/bytecode.c,bytecode_api.c: fix recursion level crash (bb
>    #3706).
> Upstream bug is invisible to the public. Please assign CVE
> 

Please use CVE-2011-3627.

Thanks.

-- 
    JB
