X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2021/11/02/9
Message-ID: <2dddaf8c-9220-f776-b0b4-13ad94d17e15@gathman.org>
Date: Tue, 2 Nov 2021 16:43:48 -0400 (EDT)
From: Stuart D Gathman <stuart@...hman.org>
To: oss-security@...ts.openwall.com
cc: Jan Engelhardt <jengelh@...i.de>
Subject: Re: Trojan Source Attacks
Content-Type: text/plain; charset=utf-8

> That's because unicode rendering is a UI element and calling compilers
> "impacted" is misunderstanding the issue.  There's scope for adding
> new diagnostics to square with UI representation of unicode, but
> that's at best an optional warning and it may not even be feasible in
> all cases.  A comprehensive language aware CI lint check is perhaps
> more suitable but if such a check devolves into "7-bit ascii only
> allowed" for all cases then we've regressed.

Bingo.  For many current languages, unicode is supported in string
constants and comments only - so syntax coloring should highlight 
anything beyond 7 or 8-bit outside of those elements.

Some support unicode variable/function names, and again syntax coloring
should be able to highlight sequences that cross word boundaries.

Having some sample source files to test your code editor/viewer on would be
helpful.
