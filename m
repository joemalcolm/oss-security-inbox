X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/12/09/9
Message-ID: <52A5F7B4.9040501@redhat.com>
Date: Mon, 09 Dec 2013 18:02:44 +0100
From: Florian Weimer <fweimer@...hat.com>
To: oss-security@...ts.openwall.com
Subject: Re: CVE request: two issues in libmicrohttpd
Content-Type: text/plain; charset=utf-8

On 12/09/2013 03:04 AM, Murray McAllister wrote:

> Florian Weimer of the Red Hat Product Security Team discovered two
> issues in libmicrohttpd:
>
> 1) https://bugzilla.redhat.com/show_bug.cgi?id=1039384
>
> 2) https://bugzilla.redhat.com/show_bug.cgi?id=1039390
>
> References:
>
> https://gnunet.org/svn/libmicrohttpd/ChangeLog
> http://secunia.com/advisories/55903/
> https://bugs.gentoo.org/show_bug.cgi?id=493450
>
> Can CVEs please be assigned?

There are two more patches I recommend cherry-picking (if you consider 
the other two worth fixing).  All these fixes border on hardening.

------------------------------------------------------------------------
r30927 | grothoff | 2013-11-28 11:05:52 +0100 (Thu, 28 Nov 2013) | 1 line

-handle case that original allocation request was zero
------------------------------------------------------------------------
r30926 | grothoff | 2013-11-28 10:16:38 +0100 (Thu, 28 Nov 2013) | 1 line

-fix theoretical overflow issue reported by Florian Weimer

-- 
Florian Weimer / Red Hat Product Security Team
