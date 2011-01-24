X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/01/24/3
Message-ID: <546398682.102388.1295893931536.JavaMail.root@zmail01.collab.prod.int.phx2.redhat.com>
Date: Mon, 24 Jan 2011 13:32:11 -0500 (EST)
From: Josh Bressers <bressers@...hat.com>
To: oss-security@...ts.openwall.com
Cc: coley <coley@...re.org>
Subject: Re: CVE request: xpdf
Content-Type: text/plain; charset=utf-8


----- Original Message -----
> I identified two issues in xpdf. I don't think the first requires a
> CVE, since it's incredibly unlikely to be exploitable, but I include
> it here in case someone disagrees.
> 
> 1. Due to an integer overflow when parsing CharCodes for fonts and a
> failure to check the return value of a memory allocation, it is
> possible to trigger writes to a narrow range of offsets from a NULL
> pointer. The chance of being able to exploit this for anything other
> than a crash is very remote: on x86 32-bit, there's no chance (since
> the write occurs between 0xffffffc4 and 0xfffffffc). At least the
> write lands in valid userspace on x86-64, but in my testing this
> memory is never mapped. Fixed in poppler commit at [1], hopefully
> fixed soon at xpdf upstream.

I'm going to give this an ID. Better safe than sorry.
CVE-2010-4653

> 
> 2. Malformed commands may cause corruption of the internal stack used
> to maintain graphics contexts, leading to potentially exploitable
> memory corruption. Fixed in poppler commit at [2], hopefully fixed
> soon at xpdf upstream.
> 

CVE-2010-4654


> [1]
> http://cgit.freedesktop.org/poppler/poppler/commit/?id=cad66a7d25abdb6aa15f3aa94a35737b119b2659
> [2]
> http://cgit.freedesktop.org/poppler/poppler/commit/?id=8284008aa8230a92ba08d547864353d3290e9bf9


Thanks.

-- 
    JB
