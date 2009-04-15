X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/04/15/7
Message-Id: <20090415185322.7B5A61F3E9E@spike.porcupine.org>
Date: Wed, 15 Apr 2009 14:53:22 -0400 (EDT)
From: wietse@...cupine.org (Wietse Venema)
To: Wietse Venema <wietse@...cupine.org>
CC: Tomas Hoger <thoger@...hat.com>, oss-security@...ts.openwall.com
Subject: Re: Re: Some fun with tcp_wrappers
Content-Type: text/plain; charset=utf-8

Wietse Venema:
> > "test-hostsctl servicename unknown IP unknown" is what some
> > applications do expecting tcp_wrappers to resolve IP to hostname.
> 
> I think that it would be a mistake to change a documented API that

On the other hand, if you could add a new function under a new name
that does have the expected behavior, then there would be no
confusion, no risk of cross-platform applications breaking, and I
would withdraw my objection.

	Wietse
