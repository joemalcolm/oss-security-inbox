X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/07/20/5
Message-ID: <b086760e0907200532m449fe21awf640f99ad65c3ca2@mail.gmail.com>
Date: Mon, 20 Jul 2009 14:32:58 +0200
From: yersinia <yersinia.spiros@...il.com>
To: oss-security@...ts.openwall.com
Cc: dailydave <dailydave@...ts.immunitysec.com>
Subject: Re: Linux 2.6.30+/SELinux/RHEL5 test kernel 0day,  exploiting the unexploitable
Content-Type: text/plain; charset=utf-8

On Mon, Jul 20, 2009 at 12:01 PM, Marcus Meissner <meissner@...e.de> wrote:

> On Fri, Jul 17, 2009 at 09:23:03AM +0200, yersinia wrote:
> > FYI, a Sprengler 0-day against Selinux null ptr dereference. Very Nice
> > to see in action
> >
> > reference ( with youtube link )
> >
> > http://grsecurity.net/~spender/cheddar_bay.tgz<http://grsecurity.net/%7Espender/cheddar_bay.tgz>
>
> Yeah.
>
> Some "minor" bugs and one larger one.
>
> The Linux folks have meanwhile:
>
> - Fixed the actual bug. ;) (CVE-2009-1897)
>  Only affects 2.6.30,2.6.30.1.
>
>  2.6.30.2 release soon.
>
> - Added -fno-delete-null-pointers to their Makefiles
>
>  Also in 2.6.30.2 and 2.
>
> - fixed the personality - PER_CLEAR_ON_SETTID inheritance issue
> (CVE-2009-1895)
>  to work around mmap_min_addr protection.
>  Affects 2.6.23-2.6.30.1
>
>  2.6.30.2 and 2.6.27.x releases soon.
>
> I am not sure about the SELinux policy error he used to
> exploit the RHEL 5.? Beta.
>
> Ciao, Marcus
>

This is the answer on this the issue by James Morris, Selinux Kernel
Developer

http://blog.namei.org/2009/07/18/a-brief-note-on-the-2630-kernel-null-pointer-vulnerability/

Ciao, Elia

