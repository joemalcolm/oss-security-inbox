X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2020/07/20/2
Message-ID: <CAH8yC8=HihpJA+tHrk6TbXhiOOOC43ZDYTY+kpyESwDn0cc7zw@mail.gmail.com>
Date: Mon, 20 Jul 2020 04:33:11 -0400
From: Jeffrey Walton <noloader@...il.com>
To: oss-security@...ts.openwall.com
Subject: Re: Perl 5.32.0 mishandling of rpath and runpath tokens
Content-Type: text/plain; charset=utf-8

On Mon, Jul 20, 2020 at 4:21 AM Jeffrey Walton <noloader@...il.com> wrote:
> ...
> Building on Linux or Solaris with LDFLAGS that includes a rpath or runpath:
>
>     -Wl,-R,$ORIGIN/../lib -Wl,-R,$HOME/tmp/ok2delete/lib

My bad... It does not matter how this $ORIGIN token is quoted. Perl
always expands it.

My preferred quoting is a single quote: '$ORIGIN/../lib'. But an
escaped quote does not work either: "\$ORIGIN/../lib".

Jeff
