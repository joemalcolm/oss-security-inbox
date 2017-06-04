X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/06/04/2
Message-ID: <20170604013502.GA21482@lizzie.io>
Date: Sat, 3 Jun 2017 18:35:14 -0700
From: Lizzie Dixon <_@...zie.io>
To: oss-security@...ts.openwall.com
Subject: Re: TIOCSTI not going away
Content-Type: text/plain; charset=utf-8

On 06/03, Solar Designer wrote:
> Hi,
> 
> Many su-like programs can be used to run other programs with reduced (or
> otherwise different, rather than strictly elevated) privileges.  This
> includes su itself (such as when su'ing from root to a user), as well as
> various container entry commands, etc.
> 
> Many (probably most) of those got it wrong at first, keeping the same
> tty across the privilege boundary.  Numerous such issues were reported:
>
> [...]
> 
> This list is not exhaustive.

For the benefit of the list: busybox su also has this issue, but the
maintainer has declined to fix it.

https://bugs.busybox.net/show_bug.cgi?id=9401

Best,

L.
