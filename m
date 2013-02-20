X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/02/20/17
Message-ID: <20130220200605.GE1851@sentinelchicken.org>
Date: Wed, 20 Feb 2013 12:06:06 -0800
From: Tim <tim-security@...tinelchicken.org>
To: Kurt Seifried <kseifried@...hat.com>
Cc: oss-security@...ts.openwall.com
Subject: Re: RE: Handling CVEs for the XML entity expansion issues
Content-Type: text/plain; charset=utf-8


> Docbook uses it quite a bit, e.g. each chapter is a file, then you use
> external entities to put them all together, also for graphics/etc.
> Breaking Docbook would make me a sad panda.

Well sure, some minority of apps will break.  Libraries release notes
merely need to say "next version breaks backward compatibility for
apps that use entities and inline DTDs.  If your app uses these,
explicitly enable with ..."  Once again, "off by default", not
removed.


> I tend to agree, however for the billion laughs/linear attack that can
> be somewhat addressed, libxml for example addressed it by stopping all
> non linear expansion a few years ago, so while still vulnerable they
> are less vulnerable.

Yes, but this is by far the least interesting attack scenario for most
XML libraries.  Since libxml2 is pretty limited in it's entities
support and network capabilities to begin with, it isn't as
interesting of a case for XXE generally.  However, other libraries
leverage many platform network capabilities that make for some much
more interesting attacks. 

tim
