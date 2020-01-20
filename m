X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2020/01/20/1
Message-ID: <20200120111729.7fe9d09b@yaydoe>
Date: Mon, 20 Jan 2020 11:17:29 +0100
From: Peter Kjellström <cap@....liu.se>
To: Jeffrey Walton <noloader@...il.com>
Cc: oss-security@...ts.openwall.com
Subject: Re: Some AMD cpus with RDRAND fail to produce random numbers after suspend/resume
Content-Type: text/plain; charset=utf-8

On Thu, 16 Jan 2020 23:21:52 -0500
Jeffrey Walton <noloader@...il.com> wrote:

> This just made my radar. It appears some AMD cpus with RDRAND fail to
> produce random numbers after a suspend/resume. It looks like it was
> first reported in 2014 or so.

Note that there are, afaict, two distict AMD RDRAND issues discussed
here. The original 2014 suspend/resume one and the more recent, "ryzen
3000 just returnx 0xffffffff". The latter is probably the reason for
the renewed focus on this...

/Peter 
