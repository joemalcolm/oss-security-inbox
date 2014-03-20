X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/03/20/5
Message-ID: <20140320094346.GG2503@sivokote.iziade.m$>
Date: Thu, 20 Mar 2014 11:43:46 +0200
From: Georgi Guninski <guninski@...inski.com>
To: oss-security@...ts.openwall.com
Subject: Re: [OT] FD mailing list died. Time for new one
Content-Type: text/plain; charset=utf-8

On Thu, Mar 20, 2014 at 11:31:08AM +0200, Georgi Guninski wrote:
> On Wed, Mar 19, 2014 at 06:14:22PM +0200, Georgi Guninski wrote:
> > What is the number of email addresses who
> > posted on FD?
> > 
> 
> The list was large, some might run this on the full archives
> 
> Since May 2003:
> 
> $ egrep '^From:.*<.*' fd | egrep -o '<.*>'|uniq | wc -l
> 59751
> 
> $ egrep '^From:' fd | grep -v '<' | uniq | wc -l
> 8552
> 
> (the intersection might not be empty).

I take the above back:
$ egrep '^From:.*<.*' fd | egrep -o '<.*>'| sort |uniq | wc -l
9318
$ egrep '^From:' fd | grep -v '<' | sort | uniq | wc -l
2101
