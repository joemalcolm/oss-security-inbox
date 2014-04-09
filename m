X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/04/09/22
Message-ID: <20140409082651.GA30552@zoho.com>
Date: Wed, 9 Apr 2014 08:26:51 +0000
From: mancha <mancha1@...o.com>
To: oss-security@...ts.openwall.com
Subject: Re: OpenSSL 1.0.1 TLS/DTLS hearbeat information disclosure CVE-2014-0160
Content-Type: text/plain; charset=utf-8

On Mon, Apr 07, 2014 at 09:43:46PM +0200, Tomas Hoger wrote:
> Hi!
> 
> There's a new OpenSSL release 1.0.1g that fixes information leak issue:
> 
> http://www.openssl.org/news/secadv_20140407.txt
> http://git.openssl.org/gitweb/?p=openssl.git;a=commitdiff;h=96db902
> http://heartbleed.com/

The good folks at Nmap (specifically Patrik Karlsson) have written a
"heartbleed" detection script based on Jared Stafford's reproducer.

I've made minor tweaks and placed it here:

http://sf.net/projects/mancha/files/sec/ssl-heartbleed.nse

It works quite well - thanks Nmap.

--mancha

Content of type "application/pgp-signature" skipped
