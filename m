X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2020/12/07/3
Message-ID: <CA+-U7QBR-P1==EsFfr+ZxEQ8Tt2D6obJumq1oN165NWFJi6Caw@mail.gmail.com>
Date: Mon, 7 Dec 2020 19:02:02 +0800
From: - Nop <nopitydays@...il.com>
To: John Haxby <john.haxby@...cle.com>
Cc: oss-security@...ts.openwall.com
Subject: Re: Linux kernel NULL-ptr deref bug in spk_ttyio_receive_buf2
Content-Type: text/plain; charset=utf-8

Hi,

yes, we asked for a CVE in the original email sent to
linux-distros@...openwall.org.

Thanks,
Bodong Zhao

On Mon, Dec 7, 2020 at 6:23 PM John Haxby <john.haxby@...cle.com> wrote:

>
>
> > On 7 Dec 2020, at 02:20, Shisong Qin <qinshisong1205@...il.com> wrote:
> >
> > Recently we found another NULL-ptr deref BUG in spk_ttyio.c in the latest
> > Linux kernel(5.9.11 is the latest at that now). In the
> > spk_ttyio_receive_buf2() function, it would dereference spk_ttyio_synth
> > without checking whether it is NULL or not, and may lead to a NULL-ptr
> > deref crash.
>
> Did you ask for a CVE for bug?
>
> jch
>

