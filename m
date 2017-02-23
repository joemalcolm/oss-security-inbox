X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/02/23/9
Message-Id: <D7FFF88A-2AA9-432A-9830-0DF662E32524@gmail.com>
Date: Thu, 23 Feb 2017 07:56:51 -0500
From: Assaf Gordon <assafgordon@...il.com>
To: oss-security@...ts.openwall.com
Subject: Re: util-linux 2.29.2 fixes CVE-2017-2616
Content-Type: text/plain; charset=utf-8

Hello,

> On Feb 23, 2017, at 05:01, Marcus Meissner <meissner@...e.de> wrote:
> 
> On Thu, Feb 23, 2017 at 10:40:54AM +0100, Hanno Böck wrote:
>> 
>>> util-linux 2.29.2 fixes CVE-2017-2616, a race condition which allowed
>>> local users to kill other processes.
> 
> coreutils uses the same su.c codebase, so it is also affected.
> 

GNU Coreutils stopped installing 'su' by default in 2007,
and completely removed 'su' (including the 'su.c' source file)
in 2012.

See:
https://git.savannah.gnu.org/cgit/coreutils.git/commit/?id=928dd737

regards,
 - assaf
