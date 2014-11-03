X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/11/03/15
Message-ID: <20141103202428.GA5775@zoho.com>
Date: Mon, 3 Nov 2014 20:24:28 +0000
From: mancha <mancha1@...o.com>
To: oss-security@...ts.openwall.com
Cc: Christian.Spieler@...nline.de
Subject: Re: unzip -t crasher
Content-Type: text/plain; charset=utf-8

On Mon, Nov 03, 2014 at 11:05:43AM +0000, mancha wrote:
> This buggy code path is traversed when a ZIP archive has <<extra
> fields>> with blocks that are uncompressed (i.e. using the STORED
> method). A better solution than my last patch or malloc'ing max(),
> is returning an invalid compressed data error when size(compressed)!=
> size(uncompressed) for these cases. The attached patch does just that.
> Comments welcome.
> 
> Cheers.
> 
> --mancha
> 
> PS I have been CC'ing Christian Spieler via the only email I could find
> online. I've not gotten bounces so it might still be active.

By the way, I've removed the original patch (unzip-6.0_overflow.diff)
from SF. Folks should use unzip-6.0_overflow2.diff instead:

http://sf.net/projects/mancha/files/sec/unzip-6.0_overflow2.diff

--mancha

Content of type "application/pgp-signature" skipped
