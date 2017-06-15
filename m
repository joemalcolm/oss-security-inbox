X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/06/15/1
Message-ID: <1497534642.3053.3.camel@redhat.com>
Date: Thu, 15 Jun 2017 15:50:42 +0200
From: Adam Maris <amaris@...hat.com>
To: pali.rohar@...il.com, oss-security@...ts.openwall.com
Subject: Re: Re: MySQL - use-after-free after mysql_stmt_close()
Content-Type: text/plain; charset=utf-8

On Mon, 2017-06-12 at 23:47 +0200, Pali Rohár wrote:
> Hello!
> 
> Any idea how to handle this particular problem?
> 
> 

Hi!

Given that Oracle (silently) updated the vulnerable example in their
documentation, this likely indicates the way to handle this -
applications that copied the vulnerable example needs to be fixed and
CVEs will be assigned per application.

Best Regards,

-- 
Adam Mariš, Red Hat Product Security
1CCD 3446 0529 81E3 86AF  2D4C 4869 76E7 BEF0 6BC2 
