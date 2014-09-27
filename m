X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/09/27/6
Message-ID: <alpine.LNX.2.02.1409271523400.11452@v8.schaltsekun.de>
Date: Sat, 27 Sep 2014 15:26:01 +0200 (CEST)
From: Roman Drahtmueller <draht@...altsekun.de>
To: oss-security@...ts.openwall.com
Subject: Re: Fwd: Non-upstream patches for bash
Content-Type: text/plain; charset=utf-8

> 
> FWIW, I'm pretty sure I bumped into another bad-looking and probably
> exploitable parser issue; for now, I sent the details privately to
> Chet, Florian, and Alexander. But the bottom line is, the parser
> really shouldn't be exposed to the outside world.
> 

By way of exposing the parser to potentionally harmful content: Is the 
importing of functions the only occasion, or are there more than this?

Thanks,
Roman.
