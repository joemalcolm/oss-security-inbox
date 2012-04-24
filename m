X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/04/24/2
Message-ID: <87vckpfnu9.fsf@mid.deneb.enyo.de>
Date: Tue, 24 Apr 2012 12:03:58 +0200
From: Florian Weimer <fw@...eb.enyo.de>
To: oss-security@...ts.openwall.com
Subject: Re: CVE Request -- libgssapi, libgssglue -- Ability to load untrusted configuration file, when loading GSS mechanisms and their definitions during initialization
Content-Type: text/plain; charset=utf-8

* Marcus Meissner:

>> Would you mind sharing the patch you used in SLE packages?  It does not
>> seem to have been fixed in OpenSUSE yet.  Thanks!
>
> I just did a basic uid check.

Shouldn't you check GID against EGID, too, for completeness?
