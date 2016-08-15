X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/08/15/5
Message-ID: <CAFkTriKKuwHjAMgY7N6OCt2p=8SYL_coQFy+rXy1PzksF2+uyA@mail.gmail.com>
Date: Mon, 15 Aug 2016 16:10:57 +0800
From: Marco Grassi <marco.gra@...il.com>
To: oss-security@...ts.openwall.com
Cc: cve-assign@...re.org
Subject: Re: Linux tcp_xmit_retransmit_queue use after free on 4.8-rc1 / master
Content-Type: text/plain; charset=utf-8

I just tried several times, but there is some filter that doesn't get along
well with the content or with my gmail.

The message keeps not getting delivered.

Marco

On Mon, Aug 15, 2016 at 3:54 PM, Greg KH <greg@...ah.com> wrote:

> On Mon, Aug 15, 2016 at 09:20:17AM +0800, Marco Grassi wrote:
> > Hello, this program will cause a use after free of read 4 in
> > tcp_xmit_retransmit_queue or other tcp_ functions, often in another
> totally
> > unrelated process.
> >
> > reproducer + KASAN report is provided, tested on master available at the
> > time of writing and on 4.8 rc1
>
> Did you send this to the netdev@...r.kernel.org mailing list so that it
> can get fixed?  I don't see it there :(
>
> thanks,
>
> greg k-h
>

