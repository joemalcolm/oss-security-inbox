X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/23/8
Message-ID: <e8f3fcda-2da1-4f2e-b63e-c53060f99e38@oracle.com>
Date: Thu, 23 Jul 2026 15:19:45 -0700
From: Alan Coopersmith <alan.coopersmith@...cle.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-16277 & CVE-2026-16461: buffer overflows in rpcinfo
Content-Type: text/plain; charset=utf-8

https://bugzilla.redhat.com/show_bug.cgi?id=2462085 [CVE-2026-16277] &
https://bugzilla.redhat.com/show_bug.cgi?id=2502719 [CVE-2026-16461]
disclose a pair of related buffer overflows in the rpcinfo command from
ONC RPC (aka Sun NFS) when parsing & printing the information returned
from a remote rpcbind server.

CVE-2026-16277 covers an overflow when using the -l option:
> In `rpcbaddrlist()`, used by `rpcinfo -l`, reply fields from  
> `RPCBPROC_GETADDRLIST` are written into `char buf[128]` without length  
> checks:
> ```c
> char buf[128];
> sprintf (buf, "%s/%s/%s ",
> re->r_nc_protofmly, re->r_nc_proto,
> re->r_nc_semantics == NC_TPI_CLTS ? "clts" :
> re->r_nc_semantics == NC_TPI_COTS ? "cots" : "cots_ord");
> ```
> `re->r_nc_protofmly` and `re->r_nc_proto` come from the remote reply. A  
> malicious or compromised rpcbind host can therefore provide strings long  
> enough to overflow `buf`.

CVE-2026-16461 covers another overflow when using the -s option:
> In `rpcbdump()` short mode, used by `rpcinfo -s`, version values from the  
> reply are appended into `char buf[256]` without tracking remaining space:
> ```c
> char buf[256];
> char *p = buf;
> for (vl = rs->vlist; vl; vl = vl->next) {
> sprintf (p, "%d", vl->vers);
> p = p + strlen (p);
> if (vl->next)
> sprintf (p++, ",");
> }
> ```
> A hostile reply that supplies enough distinct versions for a single program  
> can overflow this buffer. Based on the available evidence, roughly 24  
> maximum-width decimal version values plus commas are sufficient to exceed  
> 256 bytes. The currently supported conclusion is client-side stack memory  
> corruption leading to a crash; more severe outcomes are not established by  
> the available data.

The bug reports note they were generated with AI analysis.  Red Hat credits
Aisle Research for reporting both issues, and Michalis Vasileiadis (GitHub:
vmihalis) for reporting CVE-2026-16277 in their advisories at:
https://access.redhat.com/security/cve/cve-2026-16277
https://access.redhat.com/security/cve/cve-2026-16461

A fix for CVE-2026-16277 for Linux NFS is published at:
https://git.linux-nfs.org/?p=steved/rpcbind.git;a=commitdiff;h=bb9bb7286a4c345442946dc2ce3c9e7f67e96d4d
Unfortunately, that server seems overloaded and I haven't found if it has
a fix for CVE-2026-16461 or not yet.

NetBSD appears to have fixed both in 2011:
https://github.com/NetBSD/src/commit/e95e36baeccc24159378f422fd3dffb97979b415

OpenBSD's rpcinfo does not support the affected options (it uses -s
for a different function, and has no -l option).

Fixes for both for OpenSolaris-based distros were integrated in 2010:
https://github.com/illumos/illumos-gate/commit/791dfaa708ef5838f55bf4e97e7c960beb186419

-- 
         -Alan Coopersmith-                 alan.coopersmith@...cle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

