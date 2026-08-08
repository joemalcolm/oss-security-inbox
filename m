X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/08/1
Message-ID: <3cdab039-96ad-43b4-a276-4669fe6aafc5@oracle.com>
Date: Fri, 7 Aug 2026 17:17:16 -0700
From: Alan Coopersmith <alan.coopersmith@...cle.com>
To: oss-security@...ts.openwall.com
Subject: Re: CVE-2026-16277 & CVE-2026-16461: buffer overflows in rpcinfo
Content-Type: text/plain; charset=utf-8

FreeBSD has fixed as well now:
https://cgit.freebsd.org/src/commit/usr.bin/rpcinfo/rpcinfo.c?id=152ba2d3c5ff00382260a48653855072d524cfb8

On 7/23/26 15:19, Alan Coopersmith wrote:
> A fix for CVE-2026-16277 for Linux NFS is published at:
> https://git.linux-nfs.org/?p=steved/ 
> rpcbind.git;a=commitdiff;h=bb9bb7286a4c345442946dc2ce3c9e7f67e96d4d
> Unfortunately, that server seems overloaded and I haven't found if it has
> a fix for CVE-2026-16461 or not yet.
> 
> NetBSD appears to have fixed both in 2011:
> https://github.com/NetBSD/src/commit/e95e36baeccc24159378f422fd3dffb97979b415
> 
> OpenBSD's rpcinfo does not support the affected options (it uses -s
> for a different function, and has no -l option).
> 
> Fixes for both for OpenSolaris-based distros were integrated in 2010:
> https://github.com/illumos/illumos-gate/ 
> commit/791dfaa708ef5838f55bf4e97e7c960beb186419
> 

-- 
         -Alan Coopersmith-                 alan.coopersmith@...cle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
