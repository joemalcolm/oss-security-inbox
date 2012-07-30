X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/07/30/3
Message-ID: <50164D0F.9010105@suse.de>
Date: Mon, 30 Jul 2012 10:59:59 +0200
From: Ludwig Nussel <ludwig.nussel@...e.de>
To: oss-security@...ts.openwall.com
Subject: Re: libdbus hardening
Content-Type: text/plain; charset=utf-8

Florian Weimer wrote:
> On 07/17/2012 12:08 PM, Florian Weimer wrote:
> 
>> Note that GNU libc will likely change the name to secure_getenv.
>> Upstream does not want to document __secure_getenv as-is.
> 
> This will be part of glibc 2.17.  autoconf instructions are available here:
> 
> <http://sourceware.org/glibc/wiki/Tips_and_Tricks/secure_getenv>

Now the next step would be to make glibc automatically use secure_getenv
when running setuid root and require programs to explicitly call
insecure_getenv() or something like that :-)

cu
Ludwig

-- 
 (o_   Ludwig Nussel
 //\
 V_/_  http://www.suse.de/
SUSE LINUX Products GmbH, GF: Jeff Hawn, Jennifer Guild, Felix Imendörffer, HRB 16746 (AG Nürnberg) 
