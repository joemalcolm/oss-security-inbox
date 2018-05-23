X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2018/05/23/3
Message-ID: <CA+fCnZfA=_nZfUQzS+r6ZbOqPFTLSzAEbh8EHHnvNsoDH+C87w@mail.gmail.com>
Date: Wed, 23 May 2018 16:49:58 +0200
From: Andrey Konovalov <andreyknvl@...il.com>
To: oss-security@...ts.openwall.com, vdronov@...hat.com
Subject: Re: CVE-2018-1130: Linux kernel: dccp: a null pointer dereference in net/dccp/output.c:dccp_write_xmit
Content-Type: text/plain; charset=utf-8

On Thu, May 10, 2018 at 2:05 PM, Vladis Dronov <vdronov@...hat.com> wrote:
> Hello,
>
> A null pointer dereference in dccp_write_xmit() function in net/dccp/output.c
> in the Linux kernel before v4.16-rc7 allows a local user to cause a denial of
> service by a number of certain crafted system calls.
>
> References:
>
> https://syzkaller.appspot.com/bug?id=833568de043e0909b2aeaef7be136db39d21ba94
>
> https://marc.info/?t=152036611500003&r=1&w=2
>
> An upstream patch:
>
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=67f93df79aeefc3add4e4b31a752600f834236e2
>
> Best regards,
> Vladis Dronov | Red Hat, Inc. | Product Security Engineer

Hi Vladis,

I've been wondering, how do you choose which bugs you request CVEs
for? Syzbot reported a few hundreds of them over the last few months
and a decent fraction of them looks scarier than a null pointer
dereference.

Thanks!
