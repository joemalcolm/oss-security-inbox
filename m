X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/09/24/33
Message-ID: <20140924213254.GA337@openwall.com>
Date: Thu, 25 Sep 2014 01:32:54 +0400
From: Solar Designer <solar@...nwall.com>
To: oss-security@...ts.openwall.com
Cc: Chet Ramey <chet.ramey@...e.edu>, Tavis Ormandy <taviso@...xchg8b.com>
Subject: Re: CVE-2014-6271: remote code execution through bash
Content-Type: text/plain; charset=utf-8

On Wed, Sep 24, 2014 at 11:27:09PM +0200, Hanno B??ck wrote:
> Tavis Ormandy just tweetet this:
> https://twitter.com/taviso/status/514887394294652929
> 
> The bash patch seems incomplete to me, function parsing is still
> brittle. e.g. $ env X='() { (a)=>\' sh -c "echo date"; cat echo

Thanks for bringing this to oss-security.  I've added CC to Chet and
Tavis on this "reply".

Alexander
