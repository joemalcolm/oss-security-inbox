X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/08/18/2
Message-ID: <20170818132450.GE13079@suse.de>
Date: Fri, 18 Aug 2017 15:24:50 +0200
From: Marcus Meissner <meissner@...e.de>
To: oss-security@...ts.openwall.com
Subject: Re: ***UNCHECKED*** UnRAR: directory traversal + memory safety bugs
Content-Type: text/plain; charset=utf-8

On Tue, Aug 15, 2017 at 12:39:48AM +0200, Jakub Wilk wrote:
> (I'm not sure UnRAR bugs are on-topic here. UnRAR is not free software, even
> though the source is available. But the last time UnRAR was discussed nobody
> objected, so hey, let me try too.)
> 
> I found directory traversal and a few memory safety bugs in UnRAR 5.5.6.
> These bugs have been fixed in UnRAR 5.5.7.
> 
> The memory safety bugs were found using American Fuzzy Lop.
> 
> Here are details of the bugs:
> 
> * Directory traversal
> 
> The PoC (traversal.rar) contains two symlinks and a regular file:
> 
>   cur -> .
>   cur/par -> ..
>   par/moo
> 
> This setup defeats UnRAR's directory traversal protections:
> 
>   $ ls ../moo
>   /bin/ls: cannot access '../moo': No such file or directory
> 
>   $ unrar x traversal.rar
>   ...
>   Extracting  cur                                                       OK
>   Extracting  cur/par                                                   OK
>   Extracting  par/moo                                                   OK
>   All OK
> 
>   $ ls ../moo
>   ../moo
> 
> The code that was used to generate the PoC is available here:
> https://github.com/jwilk/path-traversal-samples

The directory traversal has been assigned CVE-2017-12938.

(My request just yielded this 1 CVE, i replied requesting also for the other issues.)

Ciao, Marcus
