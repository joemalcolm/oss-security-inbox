X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/05/20/2
Message-ID: <20170520152406.2339.3B884775@matica.foolinux.mooo.com>
Date: Sat, 20 May 2017 08:26:36 -0700
From: Ian Zimmerman <itz@...mate.net>
To: oss-security@...ts.openwall.com
Subject: Re: ImageMagick: CVE-2017-9098: use of uninitialized memory in RLE decoder
Content-Type: text/plain; charset=utf-8

On 2017-05-20 09:26, Salvatore Bonaccorso wrote:

> Chris Evans discovered that ImageMagick uses unitialized memory in the
> RLE decoder, allowing an attacker to leak sensitive information from
> process memory space. There is missing initialization in the
> ReadRLEImage function.
> 
> Original article at:
> 
> https://scarybeastsecurity.blogspot.com/2017/05/bleed-continues-18-byte-file-14k-bounty.html

It was good to see the discussion of how GraphicsMagick was affected, or
not.  I would love to see that in all *Magick weakness reports.

-- 
Please *no* private Cc: on mailing lists and newsgroups
Personal signed mail: please _encrypt_ and sign
Don't clear-text sign:
http://primate.net/~itz/blog/the-problem-with-gpg-signatures.html
