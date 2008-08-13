X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/08/13/11
Message-ID: <48A2BD10.7050105@gentoo.org>
Date: Wed, 13 Aug 2008 12:53:04 +0200
From: Christian Hoffmann <hoffie@...too.org>
To: oss-security@...ts.openwall.com
CC: coley@...re.org
Subject: Re: CVE request: php-5.2.6 overflow issues
Content-Type: text/plain; charset=utf-8

On 2008-08-13 02:45, Steven M. Christey wrote:
> On Fri, 8 Aug 2008, Christian Hoffmann wrote:
> 
>> two security issues, which might possibly allow for arbitrary code
>> execution (afaik nobody has analyzed the details...), but at least DoS
>> (think of FastCGI setups), were silently fixed in PHP again:
>>
>>    * Overflow in ext/gd's imageloadfont() function [1] [2] [3]
> 
> Use CVE-2008-3658, to be filled in later - I'm assuming this is a distinct
> component that doesn't just affect PHP.
Pierre from php and libgd upstream just confirmed that the vulnerable 
code is only present in php's copy (fork) of libgd. The independent 
libgd library is not vulnerable to this problem.

-- 
Christian Hoffmann


Download attachment "signature.asc" of type "application/pgp-signature" (261 bytes)
