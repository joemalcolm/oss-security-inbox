X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/02/23/14
Message-ID: <89dcadc4-9895-a6e2-36ed-ac3195137978@debian.org>
Date: Thu, 23 Feb 2017 17:17:28 +0100
From: Emilio Pozuelo Monfort <pochu@...ian.org>
To: oss-security@...ts.openwall.com
Subject: Re: util-linux 2.29.2 fixes CVE-2017-2616
Content-Type: text/plain; charset=utf-8

On 23/02/17 17:08, Hanno Böck wrote:
> On Thu, 23 Feb 2017 07:56:51 -0500
> Assaf Gordon <assafgordon@...il.com> wrote:
> 
>> GNU Coreutils stopped installing 'su' by default in 2007,
>> and completely removed 'su' (including the 'su.c' source file)
>> in 2012.
> 
> That's good to know, so now there are only 2 competing versions of su
> instead of 3 in major packages :-)
> 
> Anyone have a good idea who is using shadow vs. util-linux su?

Debian is using shadow's, fwiw.

Emilio
