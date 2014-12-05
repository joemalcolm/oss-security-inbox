X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/12/05/8
Message-ID: <5481B377.8020109@redhat.com>
Date: Fri, 05 Dec 2014 14:30:31 +0100
From: Florian Weimer <fweimer@...hat.com>
To: oss-security@...ts.openwall.com
Subject: Re: Offset2lib: bypassing full ASLR on 64bit Linux
Content-Type: text/plain; charset=utf-8

On 12/05/2014 01:54 PM, Hanno Böck wrote:
> Most distros don't ship pic/pie executables by default. Why? I haven't
> done benchmarks, the saying is that this has a notable performance hit
> on 32 bit but almost none on 64 bit. If this is true then could we at
> least have all major distros enable it on 64 bit?

Copy relocations support has still be added to GCC.  For x86_64, a patch 
exists:

   https://gcc.gnu.org/ml/gcc-patches/2014-05/msg01215.html

Without that, there is still a performance impact.

> What i found notable: diff-ing two function offsets from different
> libraries (I use printf-sin) is alway static, even on Pax. Is this by
> design?

Yes, the address you get is the PLT stub, not the actual implementation. 
  The reason for this is somewhat complex, but related to the way lazy 
binding and symbol interposition are implemented.

-- 
Florian Weimer / Red Hat Product Security
