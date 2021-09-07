X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2021/09/07/2
Message-ID: <YTc8Gk29v6qc5ej0@kroah.com>
Date: Tue, 7 Sep 2021 12:16:58 +0200
From: Greg KH <greg@...ah.com>
To: oss-security@...ts.openwall.com
Subject: Re: CVE-2021-3715 Linux kernel: use-after-free in route4_change() in net/sched/cls_route.c
Content-Type: text/plain; charset=utf-8

On Tue, Sep 07, 2021 at 02:09:52PM +0530, Rohit Keshri wrote:
> Hello Team,
> 
> A flaw was found in the "Routing decision" classifier in the Linux kernel's
> Traffic Control networking subsystem in the way it handled changing of
> classification filters, leading to a use-after-free condition. This flaw
> allows unprivileged local users to escalate their privileges on the system.
> The highest threat from this vulnerability is confidentiality, integrity,
> as well as system availability.
> 
> This issue was fixed in the upstream Kernel 5.10 onward with ef299cc3fa1a9

Note, commit ef299cc3fa1a ("net_sched: cls_route: remove the right
filter from hashtable") came out in the 5.6 kernel release, in March of
2020, and was also backported to all relevant stable kernel releases at
the beginning of April, 2020:
	4.4.218 4.9.218 4.14.175 4.19.114 5.4.29 5.5.14

How did 5.10 get messed up in this, it was not released until December
2020?

thanks,

greg k-h
