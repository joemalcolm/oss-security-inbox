X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/08/03/6
Message-ID: <20110803160324.GA6791@openwall.com>
Date: Wed, 3 Aug 2011 20:03:24 +0400
From: Solar Designer <solar@...nwall.com>
To: oss-security@...ts.openwall.com
Subject: Re: CVE request: crypt_blowfish 8-bit character mishandling
Content-Type: text/plain; charset=utf-8

On Sun, Jul 17, 2011 at 10:30:33PM +0400, Solar Designer wrote:
> On Sun, Jul 17, 2011 at 05:48:21PM +0400, Solar Designer wrote:
> > I've just released crypt_blowfish 1.2:
> > 
> > http://www.openwall.com/crypt/
> > 
> > All projects using crypt_blowfish should upgrade to this newer code.
> 
> Patches for PHP 5.3 and 5.4:
> 
> http://news.php.net/php.internals/54000

In case anyone is backporting these to PHP 5.3.0 - 5.3.6, you also need
to apply one of the patches from:

http://news.php.net/php.internals/54098

These add support for the new prefixes to crypt.c (initially overlooked)
and they add more tests.

Alexander
