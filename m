X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/07/04/8
Message-ID: <CAA7hUgG+JVac7Sw2hfvJXf=0r1jUrRyre+7qEw8WAjrwaZKbLQ@mail.gmail.com>
Date: Thu, 4 Jul 2013 15:58:23 +0200
From: Raphael Geissert <geissert@...ian.org>
To: oss-security@...ts.openwall.com
Subject: Re: CVE Request: glibc getaddrinfo() stack overflow
Content-Type: text/plain; charset=utf-8

Hi,

On 3 April 2013 13:10, Marcus Meissner <meissner@...e.de> wrote:
> Hi,
>
> A customer reported a glibc crash, which turned out to be a stack overflow in
> getaddrinfo().
>
> getaddrinfo() uses:
>         struct sort_result results[nresults];
> with nresults controlled by the nameservice chain (DNS or /etc/hosts).

Looking at this issue in Debian's versions of eglibc, I noticed[1] it
crashes in an earlier part of getaddrinfo. More specifically, within
gaih_inet().
git blames a commit from 2011:
http://sourceware.org/git/?p=glibc.git;a=commit;f=sysdeps/posix/getaddrinfo.c;h=34a9094f49241ebb72084c536cf468fd51ebe3ec

And in spite of what the changelog says, it appears that the bug that
led to that change is:
http://sourceware.org/bugzilla/show_bug.cgi?id=11884

A bit of patch hunting reveals that the above changes (and others)
were included into RHEL 5 because of:
https://bugzilla.redhat.com/show_bug.cgi?id=797096

Perhaps there are some missing CVE ids?

[1] http://bugs.debian.org/cgi-bin/bugreport.cgi?bug=704623#24

Cheers,
--
Raphael Geissert - Debian Developer
www.debian.org - get.debian.net
