X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/03/04/4
Message-ID: <87boocny01.fsf@mid.deneb.enyo.de>
Date: Sun, 04 Mar 2012 17:15:26 +0100
From: Florian Weimer <fw@...eb.enyo.de>
To: oss-security@...ts.openwall.com
Subject: Re: CVE Request: XML entity expansion in the XML::Atom Perl module
Content-Type: text/plain; charset=utf-8

* Florian Weimer:

> I would like to request a CVE name for this security fix:
>
> | 0.39  2011.06.20
> |     * Disabled external entities and network to avoid possible security flaw (yannk)
>
> <http://cpansearch.perl.org/src/MIYAGAWA/XML-Atom-0.39/Changes>
>
> Thanks.

Oh, to clarify, this is about external entities, not the billion
laughs attack.
