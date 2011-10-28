X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/10/28/11
Message-ID: <4EAAA0C4.7030704@tokidev.fr>
Date: Fri, 28 Oct 2011 14:32:04 +0200
From: Benjamin Renaut <benml@...idev.fr>
To: oss-security@...ts.openwall.com
Subject: Re: Request for CVE Identifier: bzexe insecure temporary file
Content-Type: text/plain; charset=utf-8

Hi,

I do not believe gzexe is affected, as it doesn't use ln but instead 
create a temporary directory with umask 77 - preventing any race condition.

Best regards,
Benjamin Renaut.

On 28/10/11 14:22, Hanno Böck wrote:
> Am Fri, 28 Oct 2011 07:48:16 -0400 (EDT)
> schrieb Ramon de C Valle<rcvalle@...hat.com>:
>
>> This is a security issue reported by vladz in bzexe. This is a low
>> impact security issue, since bzexe is rarely used and the race
>> condition window is very narrow, but still exploitable.
> Have you checked if this also affects gzexe? It is pretty much the same
> as bzexe, just using gzip instead of bzip2. (afaik, no xzexe exists)
>

