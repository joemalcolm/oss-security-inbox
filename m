X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/11/05/5
Message-ID: <5097FD39.8050101@redhat.com>
Date: Mon, 05 Nov 2012 18:54:01 +0100
From: Florian Weimer <fweimer@...hat.com>
To: oss-security@...ts.openwall.com
Subject: Re: operator new[] overflow checking in G++
Content-Type: text/plain; charset=utf-8

On 08/31/2012 02:51 PM, Florian Weimer wrote:

> There is another patch which touches code which is not actually used by
> GCC, but could theoretically be called by code emitted by other compilers:
>
>    <http://gcc.gnu.org/ml/gcc-patches/2012-08/msg01416.html>

This has now been accepted into GCC:

<http://gcc.gnu.org/viewcvs?view=revision&revision=193174>

-- 
Florian Weimer / Red Hat Product Security Team
