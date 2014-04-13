X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/04/13/3
Message-ID: <20140413074031.GA21839@zoho.com>
Date: Sun, 13 Apr 2014 07:40:31 +0000
From: mancha <mancha1@...o.com>
To: oss-security@...ts.openwall.com
Subject: Re: Use-after-free race condition,in OpenSSL's read buffer
Content-Type: text/plain; charset=utf-8

On Sun, Apr 13, 2014 at 10:44:54AM +0400, Solar Designer wrote:
> On Sat, Apr 12, 2014 at 09:47:49PM -0600, Scotty Bauer wrote:
> > Patch is available at:
> > http://ftp.openbsd.org/pub/OpenBSD/patches/5.4/common/008_openssl.patch
> 
> Some context to this:
> 
> http://www.tedunangst.com/flak/post/analysis-of-openssl-freelist-reuse
> 
> This specific patch is found in Benson Kwok's bug report:
> 
> https://rt.openssl.org/Ticket/Display.html?id=2167&user=guest&pass=guest

A little more context:

This is effectively a NOP unless OpenSSL is compiled with
-DOPENSSL_NO_BUF_FREELIST. Here's another ticket with a
similar solution:

https://rt.openssl.org/Ticket/Display.html?id=3265&user=guest&pass=guest

--mancha

Content of type "application/pgp-signature" skipped
