X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/04/25/5
Message-ID: <87vckoultc.fsf@mid.deneb.enyo.de>
Date: Wed, 25 Apr 2012 12:50:55 +0200
From: Florian Weimer <fw@...eb.enyo.de>
To: oss-security@...ts.openwall.com
Subject: Re: CVE Request: Python 3.2/3.3 utf-16 decoder unicode_decode_call_errorhandler aligned_end is not updated
Content-Type: text/plain; charset=utf-8

* Kurt Seifried:

> Python 3.2/3.3 utf-16 decoder unicode_decode_call_errorhandler
> aligned_end is not updated
>
> does not appear to affect Python 2.x

3.1 seems to be affected as well (according to reproducer and commit
log).
