X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/04/08/13
Message-ID: <20130408184905.GT18466@mwanda>
Date: Mon, 8 Apr 2013 21:49:05 +0300
From: Dan Carpenter <dan.carpenter@...cle.com>
To: P J P <ppandit@...hat.com>
Cc: oss security list <oss-security@...ts.openwall.com>
Subject: Re: CVE Request: kernel information leak in fs/compat_ioctl.c VIDEO_SET_SPU_PALETTE
Content-Type: text/plain; charset=utf-8

On Mon, Apr 08, 2013 at 09:44:33PM +0300, Dan Carpenter wrote:
> On Mon, Apr 08, 2013 at 10:18:30PM +0530, P J P wrote:
> > 
> > Unless `access_ok()' in `__get_user' returns 0, which it does not, OR 
> > sizeof(*ptr) is > 8 bytes.
> 

Oh, you're saying that access_ok() can't fail.  That's true on some
arches, and not on others.

regards,
dan carpenter
