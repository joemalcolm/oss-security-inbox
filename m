X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/01/21/18
Message-ID: <20130121181749.GA16580@inutil.org>
Date: Mon, 21 Jan 2013 19:17:49 +0100
From: Moritz Muehlenhoff <jmm@...ian.org>
To: oss-security@...ts.openwall.com
Subject: Re: CVE Request coreutils
Content-Type: text/plain; charset=utf-8

Hi Sebastian,

> Can someone assign a CVE id for a buffer overflow in coreutils?
> Its the same code snippet (coreutils-i18n.patch) and it affects sort, uniq and join:
> 
> https://bugzilla.novell.com/show_bug.cgi?id=798538
> https://bugzilla.novell.com/show_bug.cgi?id=796243
> https://bugzilla.novell.com/show_bug.cgi?id=798541

Could you send the faulty patch to the list so that distros can validate
that they don't include it themselves?

Cheers,
        Moritz
