X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/07/29/7
Message-ID: <20110729085608.GA3681@pisco.westfalen.local>
Date: Fri, 29 Jul 2011 10:56:09 +0200
From: Moritz Muehlenhoff <jmm@...ian.org>
To: oss-security@...ts.openwall.com
Cc: Billy Rios <billy.rios@...il.com>
Subject: Re: Re: libxml security fix from apple ... any information?
Content-Type: text/plain; charset=utf-8

Thomas Biege wrote:
 
> Hello,
> if the code executed is the same on Windows and on Linux I would assume
> this affects Linux too. That the bug is not "seen" during fuzzing
> means nothing.

Grepping through the codebase show quite a few _WIN32 ifdefs, though.

But of course we need to see the patch applied by Apple.

Cheers,
        Moritz
