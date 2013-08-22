X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/08/22/10
Message-ID: <86ppt6gddz.fsf@nine.des.no>
Date: Thu, 22 Aug 2013 13:42:48 +0200
From: Dag-Erling Smørgrav <des@....no>
To: Huzaifa Sidhpurwala <huzaifas@...hat.com>
Cc: oss-security@...ts.openwall.com,  freebsd-security@...ebsd.org
Subject: Re: FreeBSD Security Advisory FreeBSD-SA-13:10.sctp
Content-Type: text/plain; charset=utf-8

Huzaifa Sidhpurwala <huzaifas@...hat.com> writes:
> Dag-Erling Smørgrav <des@....no> writes:
> > This also affects third-party software (Firefox, at the very least)
> > that incorporates FreeBSD's SCTP implementation.
> Are you sure about this?

Allow me to amend my statement: this *may* also affect third-party
software that incorporates our SCTP implementation, including Mozilla
Firefox and Google Chrome.  I can neither confirm nor deny that they are
actually vulnerable; all I can say is that a) I have it on good
authority that they use the same code (JFGI!) and b) they were notified
in advance.

DES
-- 
Dag-Erling Smørgrav - des@....no
